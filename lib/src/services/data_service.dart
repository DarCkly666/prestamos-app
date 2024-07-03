import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prestamos/src/models/prestamo_model.dart';
import 'package:prestamos/src/utils/constants.dart';

Future<List<PrestamoModel>> fetchPrestamos() async {
  CollectionReference prestamosRef =
      FirebaseFirestore.instance.collection(Constants.collectionPrestamos);
  List<PrestamoModel> prestamos = [];
  try {
    final prestamosCollection = await prestamosRef.get();
    for (var docSnapshot in prestamosCollection.docs) {
      print('DATA: ${docSnapshot.data()}');
      //prestamos.add(PrestamoModel.fromJson(docSnapshot.data()));
    }
  } catch (e) {
    print('Error fetching prestamos: $e');
  }
  return prestamos;
}
