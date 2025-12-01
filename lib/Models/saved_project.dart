class SavedProject {
  final int? id;
  final String userEmail;
  final String title;
  final String prompt;
  final String image; // base64 string
  final String? createdAt;

  SavedProject({
    this.id,
    required this.userEmail,
    required this.title,
    required this.prompt,
    required this.image,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'userEmail': userEmail,
      'title': title,
      'prompt': prompt,
      'image': image,
    };

    if (id != null) {
      map['id'] = id;
    }

    if (createdAt != null) {
      map['createdAt'] = createdAt;
    }

    return map;
  }

  factory SavedProject.fromMap(Map<String, dynamic> map) {
    return SavedProject(
      id: map['id'] as int?,
      userEmail: map['userEmail'],
      title: map['title'] ,
      prompt: map['prompt'],
      image: map['image'] as String,
      createdAt: map['createdAt']
    );
  }
}
