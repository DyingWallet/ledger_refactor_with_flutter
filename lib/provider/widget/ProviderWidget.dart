import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///provider封装类
class ProviderWidget<T extends ChangeNotifier> extends StatefulWidget{
  final ValueWidgetBuilder<T> builder;
  ///使用的实体
  final T model;
  ///将要进行渲染的widget
  final Widget child;
  ///初始化数据
  final Function(T model) onModelReady;
  ///自动释放
  final bool autoDispose;

  ProviderWidget({
    Key key,
    @required this.builder,
    @required this.model,
    this.child,
    this.onModelReady,
    this.autoDispose: true,
}) : super(key: key);

  _ProviderWidgetState<T> createState() => _ProviderWidgetState<T>();
}

class _ProviderWidgetState<T extends ChangeNotifier> extends State<ProviderWidget<T>>{
  T model;

  @override
  void initState() {
    // TODO: implement initState
    model = widget.model;
    widget.onModelReady?.call(model);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if(widget.autoDispose) model?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<T>.value(
      value: model,
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}