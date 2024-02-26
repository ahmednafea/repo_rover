import 'package:get_it/get_it.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initLocators();
}

Future<void> initLocators() async {}