import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../core/error/failure.dart';
import '../../domain/entities/person_entity.dart';
import '../../domain/usecases/get_all_persons.dart';
import 'market_cubit_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class MarketCubit extends Cubit<MarketState> {
  final GetBestSeller getAllMarket;

  MarketCubit({required this.getAllMarket}) : super(MarketEmpty());

  int page = 1;

  void loadMarket() async {
    if (state is MarketLoading) return;

    final currentState = state;

    var oldPerson = <PhoneMarketEntity>[];
    if (currentState is MarketLoaded) {
      oldPerson = currentState.personsList;
    }

    emit(MarketLoading(oldPerson, isFirstFetch: page == 1));

    final failureOrMarket = await getAllMarket();

    failureOrMarket.fold((error) => emit(MarketError(message: _mapFailureToMessage(error))), (character) {
      page++;
      final persons = (state as MarketLoading).oldMarketList;
      // persons.addAll(character);
      print('List length: ${persons.length.toString()}');
      emit(MarketLoaded(persons));
    });
  }

  String _mapFailureToMessage(Failure failure) {
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