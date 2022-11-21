// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_store/core/error/failure.dart';
import 'package:mobile_store/feature/presentation/bloc/market_state.dart';

import 'dart:async';
import '../../domain/usecases/get_all_persons.dart';
import 'market_event.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  final GetBestSeller getBestSeller;

  MarketBloc({required this.getBestSeller}) : super(MarketEmpty()) {
    on<GetMarket>(_onEvent);
  }
  Future<void> _onEvent(GetMarket event, Emitter<MarketState> emit) async {
    emit(MarketLoading());
    final failureOrMarket = await getBestSeller();
    emit(
      failureOrMarket.fold(
        (failure) => MarketError(message: _mapFailureTomessage(failure)),
        (market) => MarketLoaded(phoneMarket: market),
      ),
    );
  }

  String _mapFailureTomessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
