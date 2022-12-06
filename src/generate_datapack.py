from core.bingo import Bingo
from core.advancements import generate_advancements
from core.utils import format_advancement_id
import core.functions as funcs
import core.exporter as export


def main():
    bingo = Bingo.generate(5)

    flat_items = [item for sublist in bingo.items for item in sublist]
    print("\n".join(
        [f"{item['name']}" for item in flat_items]))
    advancements = generate_advancements(bingo.items)

    obtain_functions = funcs.generate_obtain_functions(bingo.items)
    check_bingo_function = funcs.generate_bingo_check(bingo.items)

    export.create_folder()
    export.export_board_advancements(advancements)
    export.export_obtain_functions(obtain_functions)
    export.export_bingo_check(check_bingo_function)
    export.export_functions()


if __name__ == "__main__":
    main()
