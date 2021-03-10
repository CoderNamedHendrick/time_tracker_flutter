import 'package:flutter/material.dart';

class EmailSignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Widget> _buildChildren(){
      return [
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'test@test.com',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Password'
          ),
          obscureText: true,
        ),
      ];
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
