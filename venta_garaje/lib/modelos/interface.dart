// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/cupertino.dart';

class ControlInterface {
  int _pantallaTienda = 0;
  bool _buscador = false;
  bool _filtro = false;
  TextEditingController _inputBuscador = TextEditingController();
  int _pantallaRegistro = 0;
  int _pantallaLogin = 0;
  String _codigoVerificacion = '';
  bool _monedaUSD = true;

  int get pantallaTienda => _pantallaTienda;
  set pantallaTienda(int pantallaTienda) => _pantallaTienda = pantallaTienda;

  bool get buscador => _buscador;
  set buscador(bool buscador) => _buscador = buscador;

  bool get filtro => _filtro;
  set filtro(bool filtro) => _filtro = filtro;

  TextEditingController get inputBuscador => _inputBuscador;
  set inputBuscador(TextEditingController inputBuscador) =>
      _inputBuscador = inputBuscador;

  int get pantallaRegistro => _pantallaRegistro;
  set pantallaRegistro(int pantallaRegistro) =>
      _pantallaRegistro = pantallaRegistro;

  int get pantallaLogin => _pantallaLogin;
  set pantallaLogin(int pantallaLogin) => _pantallaLogin = pantallaLogin;

  String get codigoVerificacion => _codigoVerificacion;
  set codigoVerificacion(String codigoVerificacion) =>
      _codigoVerificacion = codigoVerificacion;

  bool get monedaUSD => _monedaUSD;
  set monedaUSD(bool monedaUSD) => _monedaUSD = monedaUSD;

  ControlInterface();

  ControlInterface.from(ControlInterface state) {
    _pantallaTienda = state.pantallaTienda;
    _buscador = state.buscador;
    _filtro = state.filtro;
    _inputBuscador = state.inputBuscador;
    _pantallaLogin = state.pantallaLogin;
    _codigoVerificacion = state.codigoVerificacion;
    _monedaUSD = state.monedaUSD;
  }
}
