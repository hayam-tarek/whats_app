class SenderModel {
  final String name;
  final String? image;
  final String messageText;
  final String messageTime;
  int messageCount;
  bool messageStatus;

  SenderModel({
    required this.name,
    this.image,
    required this.messageText,
    required this.messageTime,
    required this.messageStatus,
    required this.messageCount,
  });

  factory SenderModel.fromJson(Map<String, dynamic> json) {
    return SenderModel(
      name: json['name'],
      image: json['image'],
      messageText: json['messageText'],
      messageTime: json['messageTime'],
      messageStatus: json['messageStatus'],
      messageCount: json['messageCount'],
    );
  }
}
