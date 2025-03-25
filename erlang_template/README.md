# Chess Bot Erlang Template

This bot uses bitboard representation to store board state and generate legal moves.
It then searches the decision tree of possible positions with the minmax algorithm and alpha-beta pruning.
The evaluation function is based on material and positional factors.


# Ideas
- maybe use ByteTree and BitArray types

# Allowed Imports

gleam_stdlib
gleam_http
gleam_json
gleam_time
gleam_community_maths
flash
iv
glearray
snag
birl
gtempo
gleam_erlang
gleam_otp
mist
wisp
