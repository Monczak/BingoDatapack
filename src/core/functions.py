from core.utils import format_advancement_id


OBTAIN_FUNCTION_TEMPLATE_PATH = "data/functions/templates/obtain_function_template.mcfunction"
CHECK_BINGO_FUNCTION_TEMPLATE_PATH = "data/functions/templates/check_bingo_template.mcfunction"
SHARE_ADVANCEMENTS_FUNCTION_TEMPLATE_PATH = "data/functions/templates/share_advancements_template.mcfunction"


def generate_obtain_function(item_data):
    with open(OBTAIN_FUNCTION_TEMPLATE_PATH, "r") as file:
        function_text = file.read()

    return function_text.replace("<ITEM NAME>", item_data["name"])


def generate_obtain_functions(items):
    flat_items = [item for sublist in items for item in sublist]
    return [(item["id"].split(":")[1], generate_obtain_function(item)) for item in flat_items]


def generate_bingo_check(items):
    def get_row(items, row):
        return [item["id"].split(":")[1] for item in items[row]]

    def get_col(items, col):
        return [item["id"].split(":")[1] for item in [items[i][col] for i in range(len(items))]]

    def get_left_diagonal(items):
        return [item["id"].split(":")[1] for item in [items[i][i] for i in range(len(items))]]

    def get_right_diagonal(items):
        return [item["id"].split(":")[1] for item in [items[len(items) - i - 1][i] for i in range(len(items))]]

    def get_check(items):
        return f"{{{''.join(['bingo:board/' + item_name + '=true,' for item_name in items])}}}"

    with open(CHECK_BINGO_FUNCTION_TEMPLATE_PATH, "r") as file:
        func = file.read()

    row_checks = [func.replace("<ADVANCEMENT LIST>", get_check(
        get_row(items, i))) for i in range(len(items))]
    col_checks = [func.replace("<ADVANCEMENT LIST>", get_check(
        get_col(items, i))) for i in range(len(items))]
    diag_checks = [func.replace("<ADVANCEMENT LIST>", get_check(get_left_diagonal(
        items))), func.replace("<ADVANCEMENT LIST>", get_check(get_right_diagonal(items)))]

    return "\n".join(row_checks + col_checks + diag_checks)


def generate_sharing_function(advancements):
    with open(SHARE_ADVANCEMENTS_FUNCTION_TEMPLATE_PATH, "r") as file:
        func_template = file.read()

    func = ""

    for adv, bogus in advancements:
        if not bogus:
            id = f"bingo:board/{adv['display']['icon']['item'].split(':')[1]}"
            func += func_template.replace("<ADVANCEMENT>", id) + "\n"

    return func
