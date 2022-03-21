import '../../modelos/reserva.dart';

enum EventType { recoger }

class ReservaEventos {
  late EventType eventType;
  final Reserva _reserva = Reserva.nuevo();

  Reserva get pedido => _reserva;

  ReservaEventos.recoger(bool recoger) {
    _reserva.setRecoger = recoger;
    eventType = EventType.recoger;
  }
}
