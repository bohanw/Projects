module OptionML : OptionML =
struct

  let _OPTION_MAP v0 v1 = match v0,v1 with
      f,Some(x) -> Some(f x)
    | f,None -> None

  let _IS_SOME v0 = match v0 with
      Some(x) -> true
    | None -> false

  let _IS_NONE v0 = match v0 with
      Some(x) -> false
    | None -> true

  let rec _THE v0 = match v0 with
      None -> raise (Failure "THE: applied to NONE")
    | Some(x) -> x

  let _OPTION_JOIN v0 = match v0 with
      None -> None
    | Some(x) -> x

end
