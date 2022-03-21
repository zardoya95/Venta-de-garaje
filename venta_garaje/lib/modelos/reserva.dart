class Reserva {
  late String id;
  late String idProducto;
  late String idCliente;
  late String recoger;
  late String monto;
  late String estado;
  late String fecha;

  Reserva.nuevo();

  Reserva({
    required this.id,
    required this.idProducto,
    required this.idCliente,
    required this.recoger,
    required this.monto,
    required this.estado,
    required this.fecha,
  });

  set setProducto(String pProducto) => idProducto = pProducto;
  set setCliente(String pCliente) => idCliente = pCliente;
  set setRecoger(bool pRecoger) => recoger = pRecoger ? 'si' : 'no';
  set setMonto(String pMonto) => monto = pMonto;
  set setEstado(String pEstado) => estado = pEstado;
  set setFecha(String pFecha) => fecha = pFecha;

  int get getId => int.parse(id);
  int get getProducto => int.parse(idProducto);
  int get getCliente => int.parse(idCliente);
  bool get getRecoger => recoger == 'si' ? true : false;
  double get getMonto => double.parse(monto);
  String get getEstado => estado;
  String get getFecha => fecha;

  factory Reserva.fromJson(Map<String, dynamic> json) {
    return Reserva(
      id: json['id'] as String,
      idProducto: json['id_producto'] as String,
      idCliente: json['id_cliente'] as String,
      recoger: json['recoger'] as String,
      estado: json['estado'] as String,
      monto: json['monto'] as String,
      fecha: json['fecha'] as String,
    );
  }

  Reserva.from(Reserva state) {
    idProducto = state.idProducto;
    idCliente = state.idCliente;
    estado = state.estado;
    monto = state.monto;
    recoger = state.recoger;
    fecha = state.fecha;
  }
}
