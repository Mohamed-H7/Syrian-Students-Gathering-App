class EventModel {
  final String title;
  final String date;
  final String time;
  final String konum;
  final String konumLink;
  final String kayitLink;
  final String details;
  final int? registeredUsers, maxRegisteredUsers;
  final List<String> images;
  final List<Map<String, String>>? eventTable;

  EventModel({
    required this.title,
    required this.date,
    required this.time,
    required this.konum,
    required this.konumLink,
    required this.kayitLink,
    required this.details,
    required this.images,
    this.registeredUsers,
    this.maxRegisteredUsers,
    this.eventTable,
  });
}
