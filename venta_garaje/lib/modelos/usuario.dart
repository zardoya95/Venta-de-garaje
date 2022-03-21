class Usuario {
  late String id = '';
  late String nombre = '';
  late String correo;
  late String telefono;
  late String direccion = '';
  late String contrasena;
  late String ci;
  late String vendedor;

  Usuario.nuevo();

  Usuario(
      {required this.id,
      required this.nombre,
      required this.correo,
      required this.telefono,
      required this.direccion,
      required this.contrasena,
      required this.ci,
      required this.vendedor});

  set setId(String pID) => id = pID;
  set setNombre(String pNombre) => nombre = pNombre;
  set setCorreo(String pCorreo) => correo = pCorreo;
  set setTelefono(String pTelefono) => telefono = pTelefono;
  set setDireccion(String pDireccion) => direccion = pDireccion;
  set setContrasena(String pContrasena) => contrasena = pContrasena;
  set setCI(String pCI) => ci = pCI;
  set setVendedor(bool pVendedor) => vendedor = pVendedor ? 'si' : 'no';

  int get getId => int.parse(id);
  String get getNombre => nombre;
  String get getCorreo => correo;
  String get getTelefono => telefono;
  String get getDireccion => direccion;
  String get getContrasena => contrasena;
  String get getCI => ci;
  bool get getVendedor => vendedor == 'si' ? true : false;

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      correo: json['correo'] as String,
      telefono: json['telefono'] as String,
      direccion: json['direccion'] as String,
      contrasena: json['contrasena'] as String,
      ci: json['ci'] as String,
      vendedor: json['vendedor'] as String,
    );
  }

  /*Usuario.from(Usuario state) {
    id = state.getId.toString();
    nombre = state.getNombre;
    correo = state.getCorreo;

    Telefono = state.getTelefono;
    direccion = state.getDireccion;
    contrasena = state.getContrasena;
    
    
  }*/
}
