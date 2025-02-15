type resetErrorBoundary = { reset : unit -> unit }

external useIsFetching : unit -> bool = "useIsFetching" [@@module "@tanstack/react-query"]

external useIsFetchingWithKeys : 'queryKey -> bool = "useIsFetching"
[@@module "@tanstack/react-query"]

external useIsMutating : unit -> bool = "useIsMutating" [@@module "@tanstack/react-query"]

external useIsMutatingWithKeys : 'queryKey -> bool = "useIsMutating"
[@@module "@tanstack/react-query"]

external useQueryErrorResetBoundary :
  unit -> resetErrorBoundary
  = "useQueryErrorResetBoundary"
[@@module "@tanstack/react-query"]
