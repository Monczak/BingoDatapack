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

### Teams

Playing in teams allows sharing bingo progress with other people in your team. To play in teams, stand near the players you want to team up with (they should be in a 3 block radius) and perform `/trigger TeamUp`. You cannot team up with people which are already in a team.

To disband a team, perform `/trigger DisbandTeam`. This will remove the entire team - other players will need to team up again after this.
