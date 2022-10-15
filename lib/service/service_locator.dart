import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_wallet/service/address_book_service.dart';
import 'package:mobile_wallet/service/authentication_service.dart';
import 'package:mobile_wallet/service/grpc_service.dart';
import 'package:mobile_wallet/service/market_service.dart';
import 'package:mobile_wallet/service/secured_storage_service.dart';
import 'package:mobile_wallet/service/settings_service.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preference_service.dart';

final getIt = GetIt.instance;

setupServiceLocator(SharedPreferences sharedPreferences) {
  SharedPreferenceService sharedPreferenceService =
      SharedPreferenceService(sharedPreferences);
  SecuredStorageService securedStorageService =
      SecuredStorageService(const FlutterSecureStorage());
  SettingsService settingsService = SettingsService(sharedPreferenceService);
  GrpcService grpcService = GrpcService(settingsService);
  getIt.registerLazySingleton<SettingsService>(() => settingsService);
  getIt.registerLazySingleton<SharedPreferenceService>(
      () => sharedPreferenceService);
  getIt.registerLazySingleton<SecuredStorageService>(
      () => securedStorageService);
  getIt.registerLazySingleton<GrpcService>(() => grpcService);
  getIt.registerLazySingleton<WalletService>(() => WalletService(
      sharedPreferenceService, securedStorageService, grpcService));
  getIt.registerLazySingleton<MarketService>(() => MarketService());
  getIt.registerLazySingleton<AuthenticationService>(
      () => AuthenticationService(settingsService));
  getIt.registerLazySingleton<AddressBookService>(
      () => AddressBookService(sharedPreferenceService));
}
