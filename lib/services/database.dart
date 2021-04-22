import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

abstract class Database{
  Future<void> createJob(Map<String, dynamic> jobData);
}

class FirestoreDatabase implements Database{
  const FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;

  // create job implementation method.
  Future<void> createJob(Map<String, dynamic> jobData) async{
    final path = '/users/$uid/jobs/job_abc';
    final documentReference = FirebaseFirestore.instance.doc(path);
    await documentReference.set(jobData);
  }
}