// To parse this JSON data, do
//
//     final prestamoModel = prestamoModelFromJson(jsonString);

import 'dart:convert';

PrestamoModel prestamoModelFromJson(String str) =>
    PrestamoModel.fromJson(json.decode(str));

String prestamoModelToJson(PrestamoModel data) => json.encode(data.toJson());

class PrestamoModel {
  String id;
  String producto;
  int precio;
  int estado;
  int? fechaPago;
  int fechaPrestamo;

  PrestamoModel({
    required this.id,
    required this.producto,
    required this.precio,
    required this.estado,
    this.fechaPago,
    required this.fechaPrestamo,
  });

  factory PrestamoModel.fromJson(Map<String, dynamic> json) => PrestamoModel(
        id: json["id"],
        producto: json["producto"],
        precio: json["precio"],
        estado: json["estado"],
        fechaPago: json["fechaPago"],
        fechaPrestamo: json["fechaPrestamo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "producto": producto,
        "precio": precio,
        "estado": estado,
        "fechaPago": fechaPago,
        "fechaPrestamo": fechaPrestamo,
      };
}
