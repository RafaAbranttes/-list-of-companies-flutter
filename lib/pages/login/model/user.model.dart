import 'package:mobx/mobx.dart';
part 'user.model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  @observable
  String email = "";

  @observable
  String password = "";

  @action
  changeEmail(String? email) => this.email = email as String;

  @action
  changePassword(String? password) => this.password = password as String;
}
