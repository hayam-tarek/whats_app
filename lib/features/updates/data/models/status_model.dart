class StatusModel {
  final String name;
  final String time;
  final String imageUrl;
  bool viewed;

  StatusModel({
    required this.name,
    required this.time,
    required this.imageUrl,
    required this.viewed,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
      name: json['name'],
      time: json['time'],
      imageUrl: json['imageUrl'],
      viewed: json['viewed'],
    );
  }
}
