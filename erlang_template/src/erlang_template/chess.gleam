import erlang_template/board
import gleam/dynamic/decode

pub type Player {
  White
  Black
}

pub fn player_decoder() {
  use player_string <- decode.then(decode.string)
  case player_string {
    "white" -> decode.success(White)
    "black" -> decode.success(Black)
    _ -> decode.failure(White, "Invalid player")
  }
}

// calculation depth
const max_depth = 10

pub fn move(
  fen: String,
  turn: Player,
  failed_moves: List(String),
) -> Result(String, String) {
  // ignore useless information
  let _ = #(turn, failed_moves)

  // parse FEN String into Bitboards position
  let position = board.parse_from(fen)

  // generate legal next moves
  let legal_next = board.legal_next(position)

  // search moves (cache position evaluations)
  search_moves(legal_next, max_depth)

  // pick best move
  Ok("e2e4")
}

fn search_moves(moves: List(board.Move), depth: Int) {
  todo
}
