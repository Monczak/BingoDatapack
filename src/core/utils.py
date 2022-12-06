import itertools
import string


def format_advancement_id(adv_id):
    return f"{adv_id:03d}"
    # return chr(ord('a') + adv_id)


def java_string_hashcode(s):
    if len(s) == 0:
        return 0
    hash = 0
    for c in s:
        hash = (31 * hash + ord(c)) & 0xffffffff

    return hash


def bruteforce_hash(size, target):
    BINGO_HASHCODE = (31 * java_string_hashcode("bingo")) & 0xffffffff

    def compute_key(seed):
        s = "board/" + seed
        id_hash = BINGO_HASHCODE + java_string_hashcode(s)
        key_hash = id_hash ^ (id_hash >> 16)

        i = size & key_hash
        return i

    for s in itertools.product(string.ascii_lowercase, repeat=3):
        seed = "_" + "".join(s)
        if compute_key(seed) == target:
            return seed

    raise RuntimeError("No matching hash found")
