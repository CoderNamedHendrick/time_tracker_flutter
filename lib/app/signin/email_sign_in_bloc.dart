import 'dart:async';

import 'package:time_tracker_flutter/app/signin/email_sign_in_model.dart';

class EmailSignInBloc{
  final StreamController<EmailSignInModel> _modelController = StreamController<EmailSignInModel>();
  Stream<EmailSignInModel> get modelStream => _modelController.stream;

  void dispose(){
    _modelController.close();
  }
}