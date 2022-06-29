import 'package:diamon_rose_app/data/config/environments/environments.dart';
import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/presentation/screen/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:intl/intl.dart';

@Deprecated('Use [ConflictException]')
Future<void> main() async {
  await initProject();
  runApp(Application());
}

@Deprecated('Use [ConflictException]')
Future<void> initProject() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = Environments.getStripePublishableKey();
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();
  //hide system navigation bar
  await SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  //prevent rotate
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp();

  await AccountRepository.instance.generateAppId();

  await FirebaseMessaging.instance.requestPermission();

  await Environments();
  Intl.defaultLocale = 'ja';
}
