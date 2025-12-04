class YurtModel {
  final String title;

  final String personelData;
  final String konum;
  final String konumLink;
  final String fiyat;
  final String details;
  final String telefone;
  final String durum;
  // final int? registeredUsers, maxRegisteredUsers;
  final List<String> images;
  // final List<Map<String, String>>? eventTable;

  YurtModel({
    required this.title,

    required this.personelData,
    required this.konum,
    required this.konumLink,

    required this.details,
    required this.images,
    required this.fiyat,
    required this.telefone,
    required this.durum,
  });
}
