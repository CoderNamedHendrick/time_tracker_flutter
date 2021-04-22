import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:time_tracker_flutter/app/home/models/job.dart';
import 'package:time_tracker_flutter/services/api_path.dart';

abstract class Database{
  Future<void> createJob(Job job);
}

class FirestoreDatabase implements Database{
  const FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;

  // create job implementation method.
  Future<void> createJob(Job job) async{
    final path = APIPath.job(uid, 'job_abc');
    final documentReference = FirebaseFirestore.instance.doc(path);
    await documentReference.set(job.toMap());
  }
}