import 'package:flutter/material.dart';
import 'package:repo_rover/injection.dart';
import 'package:repo_rover/presentation/app/app.dart';

Future<void> main() async {
  await setUp();
  runApp(const MyApp());
}