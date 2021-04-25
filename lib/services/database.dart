import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:time_tracker_flutter/app/home/models/job.dart';

import 'package:time_tracker_flutter/services/api_path.dart';

abstract class Database {
  Future<void> createJob(Job job);
  void jobsStream();
}

class FirestoreDatabase implements Database {
  const FirestoreDatabase({@required this.uid}) : assert(uid != null);
  final String uid;

  // create job implementation method.
  Future<void> createJob(Job job) => _setData(
        path: APIPath.job(uid, 'job_abc'),
        data: job.toMap(),
      );

  // reading jobs from firestore
  Stream<List<Job>> jobsStream() {
    final path = APIPath.jobs(uid);
    final reference = FirebaseFirestore.instance.collection(path);
    final snapshot = reference.snapshots();
    return snapshot.map((snapshot) => snapshot.docs.map((e) {
          final data = e.data();
          return data != null
              ? Job(
                  name: data['name'],
                  ratePerHour: data['ratePerHour'],
                )
              : null;
        }));
  }

  Future<void> _setData({String path, Map<String, dynamic> data}) async {
    final reference = FirebaseFirestore.instance.doc(path);
    await reference.set(data);
  }
}
