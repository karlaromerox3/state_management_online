import 'dart:async';

class LoginBloc {
  final _userNameController = StreamController<String>();

  Stream<String> get userNameStream => _userNameController.stream; //un getter para interactuar con el controller privado

  get userName => _userNameController.sink.add;

  void dispose(){
    _userNameController.close();
  }

}