class Wallet {
  final int _walletNumber;
  final String _name;
  final String _address;
  final String _hexSeed;
  final String _xmsspk;
  final int _height;

  Wallet(this._walletNumber, this._name, this._address, this._hexSeed,
      this._xmsspk, this._height);

  int get walletNumber => _walletNumber;

  String get xmsspk => _xmsspk;

  String get hexSeed => _hexSeed;

  String get address => _address;

  String get name => _name;

  int get height => _height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Wallet &&
          runtimeType == other.runtimeType &&
          _walletNumber == other._walletNumber;

  @override
  int get hashCode => _walletNumber.hashCode;
}
