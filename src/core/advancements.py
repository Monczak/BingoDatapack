import json

from core.utils import format_advancement_id

ADVANCEMENT_TEMPLATE_PATH = "data/advancement_template.json"
ROOT_BACKGROUND = "minecraft:textures/block/mangrove_planks.png"


def get_root_name():
    return "bingo:board/root"


def get_advancement_name(item):
    item_id, item_data = item
    return f"bingo:board/{format_advancement_id(item_id)}_{item_data['id'].split(':')[1]}"


def prepare_root(adv_json, item_data):
    adv = json.loads(adv_json.replace("<ITEM ID>", item_data["id"]).replace("<TITLE>", item_data["name"]).replace(
        "<DESCRIPTION>", f"Collect 5 in a row to win!").replace("<PARENT>", "").replace("<BACKGROUND>", f"\"background\":\"{ROOT_BACKGROUND}\","))
    adv.pop("rewards", None)
    adv["criteria"]["obtain"]["trigger"] = "minecraft:tick"
    adv["criteria"]["obtain"].pop("conditions", None)
    return ((-1, adv), False)


def prepare_bogus(adv_json, parent):
    adv = json.loads(adv_json.replace("<ITEM ID>", "minecraft:air").replace("<TITLE>", "").replace(
        "<DESCRIPTION>", "").replace("<PARENT>", f"\"parent\":\"{parent}\",").replace("<BACKGROUND>", ""))
    adv.pop("rewards", None)
    adv["criteria"]["obtain"]["trigger"] = "minecraft:tick"
    adv["criteria"]["obtain"].pop("conditions", None)

    return ((-1, adv), True)


def prepare_advancement(adv_json: str, item, parent):
    item_id, item_data = item
    adv = json.loads(adv_json.replace("<ITEM ID>", item_data["id"]).replace("<TITLE>", item_data["name"]).replace(
        "<DESCRIPTION>", f"Obtain {item_data['name']}").replace("<PARENT>", f"\"parent\":\"{parent}\",").replace(
            "<BACKGROUND>", "").replace("<ITEM ID TRUNC>", item_data["id"].split(":")[1]))
    return ((item_id, adv), False)


def generate_advancements(items):
    with open(ADVANCEMENT_TEMPLATE_PATH, "r") as file:
        advancement_template = file.read()

    width = len(items)
    advancements = [None] * ((width + 1) * width + 1)

    advancements[0] = prepare_root(advancement_template, {
        "id": "minecraft:filled_map",
        "name": "Bingo Board"
    })

    i = 1
    for y in range(width):
        for x in range(width):
            advancements[i] = prepare_advancement(
                advancement_template, items[y][x], get_root_name() if x == 0 else get_advancement_name(items[y][x - 1]))
            i += 1
        advancements[i] = prepare_bogus(
            advancement_template, get_advancement_name(items[y][width - 1]))
        i += 1

    return advancements
