import 'dart:convert';

import 'package:mobile_wallet/model/address_book_entry.dart';
import 'package:mobile_wallet/service/shared_preference_service.dart';

class AddressBookService {
  final SharedPreferenceService _sharedPreferenceService;

  AddressBookService(this._sharedPreferenceService);

  Future<void> saveAddressBook(List<AddressBookEntry> addressBook) async {
    await _sharedPreferenceService.setStringValue(
        "address-book", jsonEncode(addressBook));
  }

  Future<List<AddressBookEntry>> getAddressBook() async {
    String? addressBookString =
        await _sharedPreferenceService.getStringValue("address-book");
    if (addressBookString != null) {
      return List<AddressBookEntry>.from(jsonDecode(addressBookString)
          .map((model) => AddressBookEntry.fromJson(model)));
    }
    return <AddressBookEntry>[];
  }

  Future<void> addToAddressBook(String name, String address) async {
    List<AddressBookEntry> addressBook = await getAddressBook();
    addressBook.add(AddressBookEntry(name, address));
    await saveAddressBook(addressBook);
  }

  Future<bool> hasAddress(String address) async {
    List<AddressBookEntry> addressBook = await getAddressBook();
    return addressBook
        .where((addressBookEntry) => addressBookEntry.address == address)
        .isNotEmpty;
  }
}
