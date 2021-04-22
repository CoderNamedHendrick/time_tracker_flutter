
import 'package:flutter/foundation.dart';

abstract class Database{

}

class FirestoreDatabase implements Database{
  const FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;
}