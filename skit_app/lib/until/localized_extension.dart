import 'package:flutter/material.dart';
import 'package:skit_app/generated/app_localizations.dart';

extension LocalizedExtension on BuildContext {
  //
  AppLocalizations? get loc => AppLocalizations.of(this);
}
