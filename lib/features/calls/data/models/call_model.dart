class CallModel {
  final String name;
  final String? image;
  final String time;
  final String typeOfCall;

  CallModel({
    required this.name,
    this.image,
    required this.time,
    required this.typeOfCall,
  });

  factory CallModel.fromJson(Map<String, dynamic> json) {
    return CallModel(
      name: json['name'],
      image: json['image'],
      time: json['time'],
      typeOfCall: json['typeOfCall'],
    );
  }
}
