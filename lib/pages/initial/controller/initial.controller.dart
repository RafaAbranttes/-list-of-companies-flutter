import 'package:list_of_companies/storage/storage.dart';
import 'package:mobx/mobx.dart';
part 'initial.controller.g.dart';

class InitialController = _InitialControllerBase with _$InitialController;

abstract class _InitialControllerBase with Store {
  @observable
  bool _isLoggedIn = false;

  @computed
  bool get isLoggedIn => _isLoggedIn;

  @computed
  set isLoggedIn(bool loggedIn) {
    _isLoggedIn = loggedIn;
  }

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @computed
  set loading(bool loading) {
    _loading = loading;
  }

  @action
  login({String? email, String? password}) async {
    _loading = true;
    await Storage.setIsLoggedIn(logged: true);
    _isLoggedIn = true;
    _loading = false;
  }

  @action
  logout() async {
    _loading = true;
    await Storage.setIsLoggedIn(logged: false);
    _isLoggedIn = false;
    _loading = false;
  }
}
