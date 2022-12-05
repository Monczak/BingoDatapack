# BingoDatapack

Item collecting bingo datapack for Minecraft 1.19+

## How to play

In order to play Bingo in your Minecraft world, you need to generate a datapack using the tools provided.

To generate a datapack, open your command prompt, navigate to the directory where you downloaded this repo, and type:

```console
python src/generate_datapack.py
```

This will create a Bingo directory in the repo's directory. Copy this directory to your world's datapack folder.

Upon loading your world, the datapack will install itself. To start a game, run `/function bingo:start`.

You can view the bingo grid using the advancement screen. The grid is under the "Bingo Board" tab, with a filled map icon.

Unfortunately due to Minecraft's advancement positioning shenanigans diagonal bingos are impossible.
