import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @computed
  set loading(bool? loading) => _loading = loading as bool;
}
