enum EventType {
  filtrarPorNombre,
  filtrarPorCategoria,
  obtenerProductos,
}

class ProductosEventos {
  late String idCategoria;
  late String nombre;
  late EventType eventType;

  ProductosEventos.filtrarPorNombre(String pNombre) {
    eventType = EventType.filtrarPorNombre;
    nombre = pNombre;
  }

  ProductosEventos.filtrarPorCategoria(String pCategoria) {
    eventType = EventType.filtrarPorCategoria;
    idCategoria = pCategoria;
  }

  ProductosEventos.obtenerProductos() {
    eventType = EventType.obtenerProductos;
  }
}
