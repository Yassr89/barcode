import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

Future ttttttt(BuildContext context) async {}

Future<String?> barcodeScan(BuildContext context) async {
  var scan = '';

  scan = await FlutterBarcodeScanner.scanBarcode(
    '#C62828', // scanning line color
    'Cancel', // cancel button text
    true, // whether to show the flash icon
    ScanMode.QR,
  );

  await AppsRecord.collection.doc().set(createAppsRecordData());

  return null;
}
