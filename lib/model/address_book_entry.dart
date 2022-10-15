class AddressBookEntry {
  String name;
  String address;

  AddressBookEntry(this.name, this.address);

  factory AddressBookEntry.fromJson(Map<String, dynamic> json) {
    return AddressBookEntry(
      json["name"].toString(),
      json["address"].toString(),
    );
  }

  Map toJson() => {
        "name": name,
        "address": address,
      };
}
