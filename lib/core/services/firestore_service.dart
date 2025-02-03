import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fakahany/core/services/data_service.dart';

class FireStoreService implements DatabaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await fireStore.collection(path).add(data);
  }
}
