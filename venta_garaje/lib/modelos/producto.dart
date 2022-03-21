class Producto {
  String id;
  String idVendedor;
  String nombre;
  String categoria;
  String precio;
  String nota;
  String imagen;
  String vendido;
  String color;
  String material;
  String estilo;
  String estado;

  Producto({
    required this.id,
    required this.idVendedor,
    required this.nombre,
    required this.categoria,
    required this.precio,
    required this.nota,
    required this.imagen,
    required this.vendido,
    required this.color,
    required this.material,
    required this.estilo,
    required this.estado,
  });

  set setNombre(String pNombre) => nombre = pNombre;
  set setVendedor(String pVendedor) => idVendedor = pVendedor;
  set setCategory(String pCategoria) => categoria = pCategoria;
  set setPrecio(String pPrecio) => precio = pPrecio;
  set setNota(String pNota) => precio = pNota;
  set setImagen(String pImagen) => imagen = pImagen;
  set setVendido(String pVendido) => vendido = pVendido;
  set setColor(String pColor) => color = pColor;
  set setMaterial(String pMaterial) => material = pMaterial;
  set setEstilo(String pEstilo) => estilo = pEstilo;
  set setEstado(String pEstado) => estado = pEstado;

  int get getId => int.parse(id);
  int get getIdTienda => int.parse(idVendedor);
  String get getNombre => nombre;
  String get getCategoria => categoria;
  double get getPrecio => double.parse(precio);
  String get getNota => nota;
  String get getImagen => imagen;
  bool get getVendido => vendido == 'si' ? true : false;
  String get getColor => color;
  String get getMaterial => material;
  String get getEstilo => estilo;
  String get getEstado => estado;

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      id: json['id'] as String,
      idVendedor: json['id_vendedor'] as String,
      nombre: json['nombre'] as String,
      categoria: json['id_categoria'] as String,
      precio: json['precio'] as String,
      nota: json['nota'] as String,
      imagen: json['imagen'] as String,
      vendido: json['vendido'] as String,
      color: json['color'] as String,
      material: json['material'] as String,
      estilo: json['estilo'] as String,
      estado: json['estado'] as String,
    );
  }
}
