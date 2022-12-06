import random
from .itemtools import load_items


class Bingo:
    def __init__(self, width):
        self.width = width
        self.items = [None] * width
        for i in range(width):
            self.items[i] = [None] * width

    def set_item(self, x, y, item):
        self.items[y][x] = item

    def get_item(self, x, y):
        return self.items[y][x]

    @staticmethod
    def generate(width):
        bingo = Bingo(width)

        items = load_items()
        random_items = random.sample(items, width * width)

        for y in range(width):
            for x in range(width):
                bingo.set_item(x, y, random_items[y * width + x])

        return bingo
