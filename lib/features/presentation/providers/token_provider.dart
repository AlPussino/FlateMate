import 'package:finding_apartments_yangon/features/data/datasources/datasource/token_datasource.dart';
import 'package:flutter/material.dart';

class TokenProvider with ChangeNotifier {
  final TokenDataSource _tokenDataSource;

  TokenProvider(this._tokenDataSource);

  bool isTokenExpired() {
    try {
      String tokenExpireDate = _tokenDataSource.getTokenExpireDate();
      DateTime expirationDateTime = DateTime.parse(tokenExpireDate);
      DateTime currentDateTime = DateTime.now();
      return currentDateTime.isAfter(expirationDateTime);
    } catch (e) {
      return true;
    }
  }
}
