type mutationContext

type mutationStatus =
  [ `loading
  | `success
  | `error
  ]

type ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutateParams = {
  onSuccess :
    ('mutationData ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
  onError :
    ('mutationError ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
  onSettled :
    ('mutationData ->
    'mutationError ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
}

type ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutationOptions = {
  mutationKey : string array;
  mutationFn : 'mutationVariables -> 'mutationData Js.Promise.t;
  onMutate : ('mutationVariables -> mutationContext Js.Promise.t) option;
  onSuccess :
    ('mutationData ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
  onError :
    ('mutationError ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
  onSettled :
    ('mutationData ->
    'mutationError ->
    'mutationVariables ->
    mutationContext Js.Nullable.t ->
    'unknown Js.Promise.t)
    option;
  retry : 'mutationError ReactQuery_Types.retryValue option;
  retryDelay : 'mutationError ReactQuery_Types.retryDelayValue option;
  useErrorBoundary : bool option;
}

let mutationOptions
    ?onMutate
    ?onSuccess
    ?onError
    ?onSettled
    ?retry
    ?retryDelay
    ?useErrorBoundary
    ~mutationKey
    ~mutationFn
    () =
  {
    mutationKey;
    mutationFn;
    onMutate;
    onSuccess;
    onError;
    onSettled;
    retry;
    retryDelay;
    useErrorBoundary;
  }
;;

type ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutationResult = {
  mutate :
    ('mutationVariables ->
     ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutateParams option ->
     unit
    [@u]);
  mutateAsync :
    'mutationVariables ->
    ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutateParams ->
    'mutationData Js.Promise.t;
  status : mutationStatus;
  isIdle : bool;
  isError : bool;
  isLoading : bool;
  isSuccess : bool;
  data : 'mutationData option;
  error : 'mutationError Js.Nullable.t;
  reset : unit -> unit;
}

external useMutation :
  ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutationOptions ->
  ('mutationVariables, 'mutationData, 'mutationError, 'unknown) mutationResult
  = "useMutation"
[@@mel.module "@tanstack/react-query"]
