import json

ITEMS_PATH = "data/categorized_item_list.json"
CATEGORY_BLACKLIST_PATH = "data/category_blacklist.txt"
RARITY_BLACKLIST_PATH = "data/rarity_blacklist.txt"


def load_items():
    with open(CATEGORY_BLACKLIST_PATH, "r") as file:
        blacklisted_categories = [line.strip() for line in file]
    with open(RARITY_BLACKLIST_PATH, "r") as file:
        blacklisted_rarities = [line.strip() for line in file]

    with open(ITEMS_PATH, "r") as file:
        items = json.loads(file.read())
    filtered_items = [item for item in items if not (
        item["category"] in blacklisted_categories or item["rarity"] in blacklisted_rarities)]

    return filtered_items
