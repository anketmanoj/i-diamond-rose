import 'dart:math';

import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/regexp_pattern.dart';
import 'package:intl/intl.dart';

class StringUtils {
  /// Returns the given string or the default string if the given string is null
  static String defaultString(String? str, {String defaultStr = ''}) {
    return str ?? defaultStr;
  }

  /// Reverse the given string [s]
  static String reverse(String s) {
    return String.fromCharCodes(s.runes.toList().reversed);
  }

  /// Removes character with [index] from a String [value]
  static String removeCharAtPosition(String value, int index) {
    try {
      return value.substring(0, -1 + index) +
          value.substring(index, value.length);
    } on Exception catch (_) {
      return value;
    }
  }

  ///Remove String[value] with [pattern]
  static String removeExp(String value, String pattern,
      {bool repeat = true,
      bool caseSensitive = true,
      bool multiLine = false,
      bool dotAll = false,
      bool unicode = false}) {
    var result = value;
    if (repeat) {
      result = value
          .replaceAll(
              RegExp(pattern,
                  caseSensitive: caseSensitive,
                  multiLine: multiLine,
                  dotAll: dotAll,
                  unicode: unicode),
              '')
          .replaceAll(RegExp(' +'), ' ')
          .trim();
    } else {
      result = value
          .replaceFirst(
              RegExp(pattern,
                  caseSensitive: caseSensitive,
                  multiLine: multiLine,
                  dotAll: dotAll,
                  unicode: unicode),
              '')
          .replaceAll(RegExp(' +'), ' ')
          .trim();
    }
    return result;
  }

  /// Takes in a String[value] and truncates it with [length]
  static String truncate(String value, int length, {String symbol = '...'}) {
    var result = value;

    try {
      result = value.substring(0, length) + symbol;
    } on Exception catch (_) {}
    return result;
  }

  ///Generates a Random string
  ///
  ///[length]: length of string,
  ///
  ///[alphabet]:(boolean) add alphabet
  ///to string[uppercase]ABCD and [lowercase]abcd,
  ///
  ///[numeric]:(boolean) add integers to string like 3622737
  ///
  ///[special]:(boolean) add special characters like $#@&^
  ///
  ///[from]:where you want to generate string from
  ///
  static String generateRandomString(int length,
      {bool alphabet = true,
      bool numeric = true,
      bool special = true,
      bool uppercase = true,
      bool lowercase = true,
      String from = ''}) {
    final res = StringBuffer();

    do {
      res.write(randomizer(
          alphabet: alphabet,
          numeric: numeric,
          lowercase: lowercase,
          uppercase: uppercase,
          special: special,
          from: from));
    } while (res.length < length);

    final possible = res.toString().split('')..shuffle();
    final result = [];

    for (var i = 0; i < length; i++) {
      final randomNumber = Random().nextInt(length);
      result.add(possible[randomNumber]);
    }

    return result.join();
  }

  ///randomizer
  static String randomizer(
      {required bool alphabet,
      required bool numeric,
      required bool lowercase,
      required bool uppercase,
      required bool special,
      required String from}) {
    final a = 'ABCDEFGHIJKLMNOPQRXYZ';
    final la = 'abcdefghijklmnopqrxyz';
    final b = '0123456789';
    final c = '~^!@#\$%^&*;`(=?]:[.)_+-|\{}';
    var result = '';

    if (alphabet) {
      if (lowercase) {
        result += la;
      }
      if (uppercase) {
        result += a;
      }

      if (!uppercase && !lowercase) {
        result += a;
        result += la;
      }
    }
    if (numeric) {
      result += b;
    }

    if (special) {
      result += c;
    }

    if (from != '') {
      //if set return it
      result = from;
    }

    return result;
  }

  ///format String[str] into datetime yyyy-MM-dd HH:mm
  ///based on the device's timezone
  static String dateTimeFormatter(String value) {
    final DateTime dateValue =
        new DateFormat(DATE_TIME_UTC).parseUTC(value).toLocal();
    final String formattedDate = DateFormat(DATE_TIME_NORMAL).format(dateValue);
    return formattedDate;
  }

  ///format String[str] into date YYYY:MM:DD
  static String dateFormatter(String value) {
    if (value.contains("T")) {
      return "${value.split("T").first}";
    }
    return value;
  }

  ///format String[str] into japan datetime
  ///yyyy???MM???dd??? based on the device's timezone
  static String japanDateFormatter(String value) {
    final dateValue = new DateFormat(DATE_TIME_UTC).parseUTC(value).toLocal();
    return DateFormat(DATE_TIME_JPN).format(dateValue);
  }

  ///format String[str] < maxLength characters
  static String displayNameFormat(String value, {int? maxLength}) {
    if (value.length > maxLength!) {
      return "${value.substring(0, maxLength)}...";
    }
    return value;
  }

  ///format String[str] into validated with commas
  static String salePriceFormat(String value) {
    final String result = removeExp(value, ",");
    return removeFirstZeros(NumberFormat.decimalPattern().format(
      int.parse(result.toString()),
    ));
  }

  ///format String[str] remove first zeros
  static String removeFirstZeros(String value) {
    return value.replaceAll(
        new RegExp(RegExpPattern.removeFirstZero.toString()), '');
  }

  ///format String[str] add first zero
  static String validateDateMonth(String value) {
    if (value.length == 1) {
      return "0${value}";
    }
    return value;
  }
}
