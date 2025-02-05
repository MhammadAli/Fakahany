import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fakahany/core/services/data_service.dart';

class FireStoreService implements DatabaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    required String? documentId,
  }) async {
    if (documentId != null) {
      await fireStore.collection(path).doc(documentId).set(data);
    } else {
      await fireStore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    final data = await fireStore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String documentId}) async {
    final data = await fireStore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
