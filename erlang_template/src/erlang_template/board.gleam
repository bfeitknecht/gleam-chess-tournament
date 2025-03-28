import gleam/list
import gleam/option.{type Option}
import gleam/result
import gleam/string

pub type Bitboard =
  Int

pub type Position {
  Position(
    black_rooks: Bitboard,
    black_knights: Bitboard,
    black_bishops: Bitboard,
    black_queens: Bitboard,
    black_kings: Bitboard,
    black_pawns: Bitboard,
    white_pawns: Bitboard,
    white_rooks: Bitboard,
    white_knights: Bitboard,
    white_bishops: Bitboard,
    white_queens: Bitboard,
    white_kings: Bitboard,
    // active_color
    // passant?
    // castle?
    // check?
    // mate?
    // draw?
  )
}

fn empty_position() -> Position {
  Position(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
}

// FEN: six fields seperated by spaces
// rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
// pieces: eight ranks seperated by slashes, white capital
// player: w/b
// castling: KQkq
// en passant: target or -
// halfmoves since last pawn move or capture
// fullmove
pub fn parse_from(fen: String) -> Position {
  let fields = string.split(fen, " ")
  let ranks = result.unwrap(list.first(fields), "")
  let _bitboards = string.concat(string.split(ranks, "/"))
  // filter into bitboards
  empty_position()
}

pub type Move {
  Move(from: Bitboard, to: Bitboard, promotion: Option(Bitboard))
}

pub fn legal_next(from: Position) -> List(Move) {
  case from {
    _ -> []
  }
}
