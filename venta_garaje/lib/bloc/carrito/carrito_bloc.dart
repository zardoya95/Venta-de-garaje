import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'carrito_eventos.dart';

class CarritoBloc extends Bloc<CarritoEventos, Map<int, int>> {
  CarritoBloc(Map<int, int> initialState) : super({});

  Map<int, int> newState = {};

  @override
  Stream<Map<int, int>> mapEventToState(CarritoEventos event) async* {
    switch (event.eventType) {
      case EventType.incrementar:
        newState = Map.from(state);
        if (newState.containsKey(event.id)) {
          // newState[newState.entries.elementAt(event.id).key] =
          //   newState.entries.elementAt(event.id).value + 1;

          newState[event.id] = newState[event.id]! + 1;
        } else {
          newState[event.id] = 1;
        }

        yield newState;
        break;
      case EventType.decrementar:
        newState = Map.from(state);

        if (newState[event.id]! > 1) {
          newState[event.id] = newState[event.id]! - 1;
        } else {
          //print(newState[event.id]);
          newState.remove(event.id);
        }

        //print(newState);
        yield newState;
        break;
      case EventType.eliminar:
        newState = Map.from(state);
        newState.remove(event.id);
        yield newState;
        break;
      case EventType.insertarCantidad:
        newState = Map.from(state);
        newState[event.id] = event.carrito + 1;
        yield newState;
        break;
      default:
        throw Exception('Evento no encontrado');
    }
  }
}
