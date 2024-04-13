type resetErrorBoundary = { reset : unit -> unit }

external useIsFetching : unit -> bool = "useIsFetching"
[@@mel.module "@tanstack/react-query"]

external useIsFetchingWithKeys : 'queryKey -> bool = "useIsFetching"
[@@mel.module "@tanstack/react-query"]

external useIsMutating : unit -> bool = "useIsMutating"
[@@mel.module "@tanstack/react-query"]

external useIsMutatingWithKeys : 'queryKey -> bool = "useIsMutating"
[@@mel.module "@tanstack/react-query"]

external useQueryErrorResetBoundary :
  unit -> resetErrorBoundary
  = "useQueryErrorResetBoundary"
[@@mel.module "@tanstack/react-query"]
