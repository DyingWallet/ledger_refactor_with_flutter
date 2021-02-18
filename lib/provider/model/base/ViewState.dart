///页面状态类型

enum ViewState{
  /// 空闲
  idle,
  /// 加载中
  busy,
  /// 无数据
  empty,
  /// 错误
  error,
  /// 未登录
  unAuthorized,
}

///错误类型
enum ErrorType{
  ///一般错误
  defaultError,
  ///网络错误
  networkError,
}

class ViewStateError {
  ErrorType errorType;
  String errorMsg;
  bool aaa;

  ViewStateError(this.errorType, {this.errorMsg}) {
    errorType ??= ErrorType.defaultError;
    errorMsg ??= errorMsg;
  }

  // get isNetworkError => errorType == ErrorType.networkError;
  bool isNetworkError() => errorType == ErrorType.networkError;

  @override
  String toString() {
    return 'ViewStateError{errorType: $errorType, errorMsg: $errorMsg}';
  }
}