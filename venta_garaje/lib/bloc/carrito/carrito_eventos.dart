enum EventType { incrementar, decrementar, eliminar, insertarCantidad }

class CarritoEventos {
  late EventType eventType;
  int id = 0;
  int carrito = 0;

  CarritoEventos.incrementar(int producto) {
    id = producto;
    eventType = EventType.incrementar;
  }

  CarritoEventos.decrementar(int producto) {
    id = producto;
    eventType = EventType.decrementar;
  }

  CarritoEventos.eliminar(int producto) {
    id = producto;
    eventType = EventType.eliminar;
  }

  CarritoEventos.insertarCantidad(int producto, int cantidad) {
    id = producto;
    carrito = cantidad;
    eventType = EventType.insertarCantidad;
  }
}
