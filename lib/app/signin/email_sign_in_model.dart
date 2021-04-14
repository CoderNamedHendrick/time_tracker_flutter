import 'package:time_tracker_flutter/app/signin/email_signin_form_stateful.dart';

class EmailSignInModel {
  EmailSignInModel({
    this.email,
    this.password,
    this.formType,
    this.isLoading,
    this.submitted,
  });
  final String email;
  final String password;
  final EmailSignInFormType formType;
  final bool isLoading;
  final bool submitted;
}
