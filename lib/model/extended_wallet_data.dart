class ExtendedWalletData {
  final int _balance;
  final List<TransactionData> _transactions;
  final int _otsIndex;

  ExtendedWalletData(this._balance, this._transactions, this._otsIndex);

  int get balance => _balance;

  List<TransactionData> get transactions => _transactions;

  int get otsIndex => _otsIndex;
}

class TransactionData {
  final String _hash;
  final String _senderAddress;
  final String _receiverAddress;
  final int _amount;
  final DateTime _dateTime;
  final bool _incoming;
  final bool _unconfirmed;

  TransactionData(this._hash, this._senderAddress, this._receiverAddress,
      this._amount, this._dateTime, this._incoming, this._unconfirmed);

  String get hash => _hash;

  String get senderAddress => _senderAddress;

  String get receiverAddress => _receiverAddress;

  int get amount => _amount;

  DateTime get dateTime => _dateTime;

  bool get incoming => _incoming;

  bool get unconfirmed => _unconfirmed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionData &&
          runtimeType == other.runtimeType &&
          _hash == other._hash;

  @override
  int get hashCode => _hash.hashCode;
}
