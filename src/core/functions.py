from core.utils import format_advancement_id


OBTAIN_FUNCTION_TEMPLATE_PATH = "data/functions/obtain_function_template.mcfunction"
CHECK_BINGO_FUNCTION_TEMPLATE_PATH = "data/functions/check_bingo_template.mcfunction"


def generate_obtain_function(item_data):
    with open(OBTAIN_FUNCTION_TEMPLATE_PATH, "r") as file:
        function_text = file.read()

    return function_text.replace("<ITEM NAME>", item_data["name"])


def generate_obtain_functions(items):
    flat_items = [item for sublist in items for item in sublist]
    return [(item_data["id"].split(":")[1], generate_obtain_function(item_data)) for item_id, item_data in flat_items]


def generate_bingo_check(items):
    def get_row(items, row):
        return [(item_id, item_data["id"].split(":")[1]) for item_id, item_data in items[row]]

    def get_col(items, col):
        return [(item_id, item_data["id"].split(":")[1]) for item_id, item_data in [items[i][col] for i in range(len(items))]]

    def get_left_diagonal(items):
        return [(item_id, item_data["id"].split(":")[1]) for item_id, item_data in [items[i][i] for i in range(len(items))]]

    def get_right_diagonal(items):
        return [(item_id, item_data["id"].split(":")[1]) for item_id, item_data in [items[len(items) - i - 1][i] for i in range(len(items))]]

    def get_check(items):
        return f"{{{''.join(['bingo:board/' + f'{format_advancement_id(item_id)}_' + item_name + '=true,' for item_id, item_name in items])}}}"

    with open(CHECK_BINGO_FUNCTION_TEMPLATE_PATH, "r") as file:
        func = file.read()

    row_checks = [func.replace("<ADVANCEMENT LIST>", get_check(
        get_row(items, i))) for i in range(len(items))]
    col_checks = [func.replace("<ADVANCEMENT LIST>", get_check(
        get_col(items, i))) for i in range(len(items))]
    diag_checks = [func.replace("<ADVANCEMENT LIST>", get_check(get_left_diagonal(
        items))), func.replace("<ADVANCEMENT LIST>", get_check(get_right_diagonal(items)))]

    # Add diagonal checks back if we figure out how advancements are positioned in columns
    return "\n".join(row_checks + col_checks)
