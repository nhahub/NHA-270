class Design {
  final String image;
  final String description;
  final int? id;

  Design({
    required this.image,
    required this.description,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "description": description,
      "id": id,
    };
  }

  factory Design.fromMap(Map<String, dynamic> map) {
    return Design(
      image: map["image"],
      description: map["description"],
      id: map["id"] ?? 0,
    );
  }
}
