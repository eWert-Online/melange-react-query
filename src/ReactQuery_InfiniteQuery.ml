type 'queryKey inifiniteQueryFunctionContext = {
  queryKey : 'queryKey;
  pageParam : int option;
}

let inifiniteQueryFunctionContext ?pageParam ~queryKey () = { queryKey; pageParam }

type ('queryKey, 'queryData, 'queryError) infiniteQueryOptions = {
  queryKey : 'queryKey option;
  queryFn : ('queryKey inifiniteQueryFunctionContext -> 'queryData Js.Promise.t) option;
  enabled : bool option;
  retry : 'queryError ReactQuery_Types.retryValue option;
  retryOnMount : bool option;
  retryDelay : 'queryError ReactQuery_Types.retryDelayValue option;
  staleTime : ReactQuery_Types.timeValue option;
  queryKeyHashFn : ('queryKey -> string) option;
  refetchInterval : ReactQuery_Types.refetchIntervalValue option;
  refetchIntervalInBackground : bool option;
  refetchOnMount : ReactQuery_Types.boolOrAlwaysValue option;
  refetchOnWindowFocus : ReactQuery_Types.boolOrAlwaysValue option;
  refetchOnReconnect : ReactQuery_Types.boolOrAlwaysValue option;
  notifyOnChangeProps : ReactQuery_Types.notifyOnChangePropsValue option;
  notifyOnChangePropsExclusions : string array option;
  onSuccess : ('queryData -> unit) option;
  onError : ('queryError -> unit) option;
  onSettled : ('queryData -> 'queryError -> unit) option;
  select : ('queryData -> 'queryData) option;
  suspense : bool option;
  keepPreviousData : bool option;
  structuralSharing : bool option;
  useErrorBoundary : bool option;
  initialData : ('queryData -> 'queryData) option;
  initialDataUpdatedAt : (unit -> int) option;
  placeholderData : (unit -> 'queryData) option;
  getNextPageParam : ('queryData -> int option) option;
  getPreviousPageParam : ('queryData -> int option) option;
}

let infiniteQueryOptions
    ?queryKey
    ?queryFn
    ?enabled
    ?retry
    ?retryOnMount
    ?retryDelay
    ?staleTime
    ?queryKeyHashFn
    ?refetchInterval
    ?refetchIntervalInBackground
    ?refetchOnMount
    ?refetchOnWindowFocus
    ?refetchOnReconnect
    ?notifyOnChangeProps
    ?notifyOnChangePropsExclusions
    ?onSuccess
    ?onError
    ?onSettled
    ?select
    ?suspense
    ?keepPreviousData
    ?structuralSharing
    ?useErrorBoundary
    ?initialData
    ?initialDataUpdatedAt
    ?placeholderData
    ?getNextPageParam
    ?getPreviousPageParam
    () =
  {
    queryKey;
    queryFn;
    enabled;
    retry;
    retryOnMount;
    retryDelay;
    staleTime;
    queryKeyHashFn;
    refetchInterval;
    refetchIntervalInBackground;
    refetchOnMount;
    refetchOnWindowFocus;
    refetchOnReconnect;
    notifyOnChangeProps;
    notifyOnChangePropsExclusions;
    onSuccess;
    onError;
    onSettled;
    select;
    suspense;
    keepPreviousData;
    structuralSharing;
    useErrorBoundary;
    initialData;
    initialDataUpdatedAt;
    placeholderData;
    getNextPageParam;
    getPreviousPageParam;
  }
;;

type ('queryError, 'queryData) infiniteQueryResult = {
  status : ReactQuery_Types.queryStatus;
  isIdle : bool;
  isError : bool;
  isFetched : bool;
  isFetchedAfterMount : bool;
  isFetching : bool;
  isLoading : bool;
  isLoadingError : bool;
  isPlaceholderData : bool;
  isPreviousData : bool;
  isRefetchError : bool;
  isStale : bool;
  isSuccess : bool;
  dataUpdatedAt : int;
  error : 'queryError Js.Nullable.t;
  errorUpdatedAt : int;
  failureCount : int;
  refetch :
    ReactQuery_Types.refetchOptions ->
    ('queryError, 'queryData) infiniteQueryResult Js.Promise.t;
  remove : unit -> unit;
  data : 'queryData ReactQuery_Types.infiniteData option;
  isFetchingNextPage : bool;
  isFetchingPreviousPage : bool;
  fetchNextPage : unit -> unit;
  hasNextPage : bool;
  hasPreviousPage : bool;
}

external useInfiniteQuery :
  ('queryKey, 'queryData, 'queryError) infiniteQueryOptions ->
  ('queryError, 'queryData) infiniteQueryResult
  = "useInfiniteQuery"
[@@mel.module "@tanstack/react-query"]
