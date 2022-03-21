import '../../modelos/usuario.dart';

enum EventType { guardar, anadirFavorito, eliminarFavorito }

class UsuarioEventos {
  late EventType eventType;
  Usuario _usuario = Usuario.nuevo();

  Usuario get usuario => _usuario;

  UsuarioEventos.guardar(Usuario usuario) {
    _usuario = usuario;
    eventType = EventType.guardar;
  }

  UsuarioEventos.anadirFavorito(String producto) {
    //_usuario.direccionCliente = direccion;
    eventType = EventType.anadirFavorito;
  }

  UsuarioEventos.eliminarFavorito(String producto) {
    //id = producto;
    //carrito = cantidad;
    eventType = EventType.eliminarFavorito;
  }
}
