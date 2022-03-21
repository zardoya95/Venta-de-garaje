class Categoria {
  String id;
  String name;

  Categoria({required this.id, required this.name});

  factory Categoria.fromJson(Map<String, dynamic> json) {
    return Categoria(
      id: json['id'] as String,
      name: json['categoria'] as String,
    );
  }
}
