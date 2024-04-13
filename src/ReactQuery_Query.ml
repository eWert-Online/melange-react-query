type ('queryKey, 'queryData, 'queryError, 'pageParam) queryOptions = {
  queryKey : 'queryKey array option;
  queryFn :
    (('queryKey array, 'pageParam) ReactQuery_Types.queryFunctionContext ->
    'queryData Js.Promise.t)
    option;
  enabled : bool option;
  retry : 'queryError ReactQuery_Types.retryValue option;
  retryOnMount : bool option;
  retryDelay : 'queryError ReactQuery_Types.retryDelayValue option;
  staleTime : ReactQuery_Types.timeValue option;
  queryKeyHashFn : ('queryKey array -> string) option;
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
}

let queryOptions
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
  }
;;

type ('queryError, 'queryData) queryResult = {
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
  data : 'queryData option;
  dataUpdatedAt : int;
  error : 'queryError Js.Nullable.t;
  errorUpdatedAt : int;
  failureCount : int;
  refetch :
    ReactQuery_Types.refetchOptions -> ('queryError, 'queryData) queryResult Js.Promise.t;
  remove : unit -> unit;
}

external useQuery :
  ('queryKey, 'queryData, 'queryError, 'pageParam) queryOptions ->
  ('queryError, 'queryData) queryResult
  = "useQuery"
[@@mel.module "@tanstack/react-query"]

external useQueries :
  ('queryKey, 'queryData, 'queryError, 'pageParam) queryOptions array ->
  ('queryError, 'queryData) queryResult array
  = "useQueries"
[@@mel.module "@tanstack/react-query"]
