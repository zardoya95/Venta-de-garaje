import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modelos/usuario.dart';
import 'usuario_eventos.dart';

class UsuarioBloc extends Bloc<UsuarioEventos, Usuario> {
  UsuarioBloc() : super(Usuario.nuevo());

  Usuario newState = Usuario.nuevo();

  @override
  Stream<Usuario> mapEventToState(UsuarioEventos event) async* {
    switch (event.eventType) {
      case EventType.guardar:
        newState = event.usuario;

        yield newState;
        break;

      default:
        throw Exception('Evento no encontrado');
    }
  }
}
