import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_app/common/di_config.dart';
import 'package:new_app/features/news/domain/entity/news_entity.dart';
import 'package:new_app/features/news/domain/usecases/news_use_case.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsUseCase getNewsUseCase;
  List<ResultsEntity>? newsData;

  NewsBloc(this.getNewsUseCase) : super(NewsInitial()) {
    on<NewsEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<GetNewsEvent>((event, emit) {
      getNewsData();
    });

    on<SuccessLoadedNewsEvent>((event, emit) {
      emit.call(SuccessLoadedNewsState());
    });

    on<ShowLoadingEvent>((event, emit) {
      emit.call(ShowLoadingState());
    });

    on<ShowErrorEvent>((event, emit) {
      emit.call(ShowErrorState(event.error));
    });
  }

  void getNewsData() async {
    add(ShowLoadingEvent());

    try {
      final value = await getNewsUseCase.execute();
      if (value.status == 'success') {
        newsData = value.articles;
        add(SuccessLoadedNewsEvent());
      } else {
        add(ShowErrorEvent('Failed to load news'));
      }
    } catch (e) {
      add(ShowErrorEvent(e.toString()));
    }
  }
}
