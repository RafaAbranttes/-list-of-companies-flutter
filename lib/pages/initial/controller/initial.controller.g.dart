// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InitialController on _InitialControllerBase, Store {
  Computed<bool>? _$isLoggedInComputed;

  @override
  bool get isLoggedIn =>
      (_$isLoggedInComputed ??= Computed<bool>(() => super.isLoggedIn,
              name: '_InitialControllerBase.isLoggedIn'))
          .value;
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_InitialControllerBase.loading'))
      .value;

  final _$_isLoggedInAtom = Atom(name: '_InitialControllerBase._isLoggedIn');

  @override
  bool get _isLoggedIn {
    _$_isLoggedInAtom.reportRead();
    return super._isLoggedIn;
  }

  @override
  set _isLoggedIn(bool value) {
    _$_isLoggedInAtom.reportWrite(value, super._isLoggedIn, () {
      super._isLoggedIn = value;
    });
  }

  final _$_loadingAtom = Atom(name: '_InitialControllerBase._loading');

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_InitialControllerBase.login');

  @override
  Future login({String? email, String? password}) {
    return _$loginAsyncAction
        .run(() => super.login(email: email, password: password));
  }

  final _$logoutAsyncAction = AsyncAction('_InitialControllerBase.logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn},
loading: ${loading}
    ''';
  }
}
