import 'dart:ffi';
import 'dart:io';

import "package:ffi/ffi.dart";

DynamicLibrary _openWalletLib() {
  DynamicLibrary walletLib = Platform.isAndroid
      ? DynamicLibrary.open("libwallet.so")
      : DynamicLibrary.open("wallet.framework/wallet");
  return walletLib;
}

String ffiCreateWalletFromParams(List<int> params) {
  Pointer<Utf8> Function(int treeHeight, int hashFunction) nativeCreateWallet =
      _openWalletLib()
          .lookup<NativeFunction<Pointer<Utf8> Function(Int64, Int64)>>(
              "createWallet")
          .asFunction();
  return nativeCreateWallet(params[0], params[1]).toDartString();
}

String ffiGetMnemonic(String hexSeed) {
  Pointer<Utf8> nativeHexSeed = hexSeed.toNativeUtf8();
  Pointer<Utf8> Function(Pointer<Utf8> hexSeed) nativeGetMnemonic =
      _openWalletLib()
          .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
              "getMnemonic")
          .asFunction();
  String mnemonic = nativeGetMnemonic(nativeHexSeed).toDartString();
  malloc.free(nativeHexSeed);
  return mnemonic;
}

String ffiOpenWalletWithHexSeed(String hexSeed) {
  Pointer<Utf8> nativeHexSeed = hexSeed.toNativeUtf8();
  Pointer<Utf8> Function(Pointer<Utf8> hexSeed) nativeOpenWalletWithHexSeed =
      _openWalletLib()
          .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
              "openWalletWithHexSeed")
          .asFunction();
  String result = nativeOpenWalletWithHexSeed(nativeHexSeed).toDartString();
  malloc.free(nativeHexSeed);
  return result;
}

String ffiOpenWalletWithMnemonic(String mnemonic) {
  Pointer<Utf8> nativeMnemonic = mnemonic.toNativeUtf8();
  Pointer<Utf8> Function(Pointer<Utf8> hexSeed) nativeOpenWalletWithMnemonic =
      _openWalletLib()
          .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
              "openWalletWithMnemonic")
          .asFunction();
  String result = nativeOpenWalletWithMnemonic(nativeMnemonic).toDartString();
  malloc.free(nativeMnemonic);
  return result;
}

bool ffiIsAddressValid(String address) {
  Pointer<Utf8> nativeAddress = address.toNativeUtf8();
  Pointer<Utf8> Function(Pointer<Utf8> address) nativeIsAddressValid =
      _openWalletLib()
          .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
              "isAddressValid")
          .asFunction();
  String result = nativeIsAddressValid(nativeAddress).toDartString();
  malloc.free(nativeAddress);
  return result == "valid";
}

String ffiCreateTransaction(List<Object> params) {
  Pointer<Utf8> nativeHexSeed = (params[0] as String).toNativeUtf8();
  int amount = (params[1] as int);
  Pointer<Utf8> nativeReceiverWalletAddress =
      (params[2] as String).toNativeUtf8();
  int otsIndex = params[3] as int;
  int fee = params[4] as int;

  Pointer<Utf8> Function(Pointer<Utf8> hexSeed, int amount,
          Pointer<Utf8> receiverWalletAddress, int otsIndex, int fee)
      nativeCreateWallet = _openWalletLib()
          .lookup<
              NativeFunction<
                  Pointer<Utf8> Function(Pointer<Utf8>, Int64, Pointer<Utf8>,
                      Int64, Int64)>>("createTransaction")
          .asFunction();

  String result = nativeCreateWallet(
          nativeHexSeed, amount, nativeReceiverWalletAddress, otsIndex, fee)
      .toDartString();
  malloc.free(nativeHexSeed);
  malloc.free(nativeReceiverWalletAddress);
  return result;
}
