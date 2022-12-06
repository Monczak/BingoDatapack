import os
import json
import shutil

from core.utils import format_advancement_id

DATAPACK_PATH = "Bingo"
NAMESPACE_NAME = "bingo"
DATA_PATH = os.path.join(DATAPACK_PATH, "data", NAMESPACE_NAME)
ADVANCEMENT_PATH = os.path.join(DATA_PATH, "advancements")
FUNCTIONS_PATH = os.path.join(DATA_PATH, "functions")
TICK_TAG_PATH = os.path.join(
    DATAPACK_PATH, "data", "minecraft", "tags", "functions")


def create_folder():
    if os.path.isdir(DATAPACK_PATH):
        shutil.rmtree(DATAPACK_PATH)

    os.makedirs(ADVANCEMENT_PATH)
    os.makedirs(os.path.join(ADVANCEMENT_PATH, "board"))

    os.makedirs(FUNCTIONS_PATH)
    os.makedirs(os.path.join(FUNCTIONS_PATH, "obtain"))

    os.makedirs(TICK_TAG_PATH)

    shutil.copy("data/pack.mcmeta", os.path.join(DATAPACK_PATH, "pack.mcmeta"))


def export_board_advancements(advancements):
    def export_advancement(adv, i, root=False):
        adv_json, bogus = adv
        file_name = f"{bogus}.json" if bogus else "root.json" if root else adv_json["display"]["icon"]["item"].split(":")[
            1] + ".json"
        with open(os.path.join(ADVANCEMENT_PATH, "board", file_name), "w") as file:
            file.write(json.dumps(adv_json))

    i = 0
    export_advancement(advancements[0], 0, root=True)
    for advancement in advancements[1:]:
        export_advancement(advancement, i)
        i += 1


def export_obtain_functions(functions):
    def export_obtain_function(func):
        func_name, func_text = func
        with open(os.path.join(FUNCTIONS_PATH, "obtain", func_name + ".mcfunction"), "w") as file:
            file.write(func_text)

    for function in functions:
        export_obtain_function(function)


def export_bingo_check(function):
    with open(os.path.join(FUNCTIONS_PATH, "check_bingo" + ".mcfunction"), "w") as file:
        file.write(function)


def export_functions():
    shutil.copytree("data/functions/effects",
                    os.path.join(FUNCTIONS_PATH, "effects"))
    shutil.copytree("data/functions/scripts",
                    os.path.join(FUNCTIONS_PATH, "scripts"))
    shutil.copytree("data/functions/timer",
                    os.path.join(FUNCTIONS_PATH, "timer"))

    with open(os.path.join(TICK_TAG_PATH, "tick.json"), "w") as file:
        file.write(json.dumps({"values": ["bingo:tick"]}))

    shutil.copy("data/functions/setup.mcfunction", FUNCTIONS_PATH)
    shutil.copy("data/functions/tick.mcfunction", FUNCTIONS_PATH)

    shutil.copy("data/functions/start.mcfunction", FUNCTIONS_PATH)
