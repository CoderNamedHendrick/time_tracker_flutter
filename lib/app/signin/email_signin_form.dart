import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/common_widgets/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildChildren() {
      return [
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'test@test.com',
          ),
        ),
        SizedBox(height: 8.0),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        SizedBox(height: 8.0),
        FormSubmitButton(
          text: 'Sign in',
          onPressed: () {},
        ),
        SizedBox(height: 8.0),
        FlatButton(
          onPressed: () {},
          child: Text('Need an account? Register'),
        )
      ];
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}