import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modelos/reserva.dart';
import 'reserva_eventos.dart';

class ReservaBloc extends Bloc<ReservaEventos, Reserva> {
  ReservaBloc() : super(Reserva.nuevo());

  Reserva newState = Reserva.nuevo();

  @override
  Stream<Reserva> mapEventToState(ReservaEventos event) async* {
    switch (event.eventType) {
      case EventType.recoger:
        newState = Reserva.from(state);
        newState.setRecoger = event.pedido.getRecoger;
        yield newState;
        break;

      default:
        throw Exception('Evento no encontrado');
    }
  }
}
