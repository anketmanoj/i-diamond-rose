typedef HttpRequestCallBack = dynamic Function();
typedef HttpCallBack<V> = dynamic Function(V response);
typedef HttpNoResponseCallBack = dynamic Function();

abstract class AsyncActionListener<T> {
  void onStart();

  void onSuccess(T data);

  void onError(List<String> error);
}
