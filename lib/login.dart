import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_online/bloc/login_bloc.dart';
import 'package:state_management_online/provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left:20.0, right:20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildTextField(bloc),
            SizedBox(height: 30.0,),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              },
              child: Text('Press me'),
              )
          ]
        ),
      )
    );
  }

  Widget _buildTextField(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.userNameStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return TextField(
          decoration: InputDecoration(
              labelText: 'Enter username',
              counterText: snapshot.data,
          ),
          onChanged: (value) => bloc.userName(value),
        );
      },
    );


  }
}
