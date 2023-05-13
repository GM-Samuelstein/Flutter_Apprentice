class SimpleRecipe {
  String id;
  String dishImage;
  String title;
  String duraton;
  String source;
  List<String> information;

  SimpleRecipe({
    required this.id,
    required this.dishImage,
    required this.title,
    required this.duraton,
    required this.source,
    required this.information,
  });

  factory SimpleRecipe.fromJson(Map<String, dynamic> json) {
    return SimpleRecipe(
        id: json['id'] as String,
        dishImage: json['dishImage'] as String,
        title: json['title'] as String,
        duraton: json['duration'] as String,
        source: json['source'] as String,
        information: json['information'].cast<String>() as List<String>,
        );
  }
}
