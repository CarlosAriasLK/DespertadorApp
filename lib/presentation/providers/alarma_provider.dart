

import 'package:despertador/domain/entities/alarma.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'alarma_provider.g.dart';

@riverpod
class AlarmaProvider extends _$AlarmaProvider {

  @override
  AlarmaState build() {

    return AlarmaState();
  }

  void getAllAlarms() {

    state = state.copyWith(
      errorMessage: '',
      isLoading: false,
    );
  }

  void addAlarm( Alarma alarma ) {

    var uuid = Uuid();

    final newAlarma = Alarma(
        id: uuid.v4(),
        tiempo: alarma.tiempo,
        repetir: alarma.repetir,
        etiqueta: alarma.sonido,
        sonido: alarma.sonido,
        posponer: alarma.posponer,
        activa: false
    );

    final alarmas = [ newAlarma, ...?state.alarmas ];

    state = state.copyWith(
      isLoading: false,
      errorMessage: '',
      alarmas: alarmas
    );

  }

}


class AlarmaState {

  final bool isLoading;
  final String errorMessage;
  final List<Alarma>? alarmas;

  AlarmaState({this.isLoading = false, this.errorMessage = '', this.alarmas});

  copyWith({
    bool? isLoading,
    String? errorMessage,
    List<Alarma>? alarmas
  }) => AlarmaState(
    isLoading: isLoading ?? this.isLoading,
    errorMessage: errorMessage ?? this.errorMessage,
    alarmas: alarmas ?? this.alarmas,
  );

}