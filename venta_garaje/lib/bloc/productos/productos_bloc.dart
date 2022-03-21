import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modelos/producto.dart';
import 'productos_eventos.dart';

class ProductosBloc extends Bloc<ProductosEventos, List<Producto>> {
  List<Producto> newState = [];
  List<Producto> temporal = [];
  String idCategoria = '';

  bool iniciar = true;

  cargarProductos() async {
    while (true) {
      //newState = await Servicios.cargarProductos();

      await Future.delayed(const Duration(seconds: 2));
    }
  }

  ProductosBloc(List<Producto> initialState) : super(initialState);

  @override
  Stream<List<Producto>> mapEventToState(ProductosEventos event) async* {
    switch (event.eventType) {
      case EventType.filtrarPorNombre:
        //List<Producto> temporal = [];
        //newState = await Servicios.cargarProductos();
        temporal = [];
        if (idCategoria == '') {
          for (var producto in newState) {
            if (producto.getNombre.contains(event.nombre)) {
              temporal.add(producto);
            }
          }
        } else {
          for (var producto in newState) {
            if (producto.getNombre.contains(event.nombre) &&
                producto.getCategoria == idCategoria) {
              temporal.add(producto);
            }
          }
        }

        yield temporal;
        break;
      case EventType.filtrarPorCategoria:
        //List<Producto> temporal = [];
        //newState = await Servicios.cargarProductos();

        if (idCategoria == event.idCategoria) {
          idCategoria = '';

          yield newState;
        } else {
          temporal = [];
          for (var producto in newState) {
            if (producto.getCategoria == event.idCategoria) {
              temporal.add(producto);
            }
          }
          idCategoria = event.idCategoria;
          yield temporal;
        }

        break;
      /*case EventType.obtenerProductos:
        //cargarProductos();
        newState = await Servicios.cargarProductos();
        temporal = newState;
        yield newState;
        break;*/
      case EventType.obtenerProductos:
        // newState = await Servicios.cargarProductos();

        int contador = 3;

        while (newState.isEmpty && contador != 0) {
          //newState = await Servicios.cargarProductos();
          contador--;
          await Future.delayed(const Duration(seconds: 1));
          //print(contador);
        }

        if (newState.isNotEmpty) {
          if (iniciar) {
            temporal = newState;
            yield newState;
            iniciar = false;
          } else {
            List<Producto> listaActualizada = [];

            for (var item in temporal) {
              for (var producto in newState) {
                if (item.getId == producto.getId) {
                  listaActualizada.add(producto);
                }
              }
            }

            yield listaActualizada;
          }
        }

        break;

      default:
        throw Exception('Evento no encontrado');
    }
  }
}

class ProductossBloc {
  bool todos = true;

  Stream<List<Producto>> get getProductos async* {
    int contador = 0;

    while (contador != 3) {
      //yield await Servicios.cargarProductos();
      contador++;
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  Stream<List<Producto>> get getProductosMostrar async* {
    while (!todos) {
      //yield await Servicios.cargarProductos();
      await Future.delayed(const Duration(seconds: 2));
    }
  }
}

class InventarioBloc extends Bloc<ProductosEventos, List<Producto>> {
  InventarioBloc(List<Producto> initialState) : super(initialState);

  List<Producto> newState = [];

  @override
  Stream<List<Producto>> mapEventToState(ProductosEventos event) async* {
    switch (event.eventType) {
      case EventType.obtenerProductos:
        // newState = await Servicios.cargarProductos();
        yield newState;
        break;
      default:
        throw Exception('Evento no encontrado');
    }
  }
}
