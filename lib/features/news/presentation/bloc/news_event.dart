part of 'news_bloc.dart';

@immutable
sealed class NewsEvent {}

class GetNewsEvent extends NewsEvent {}

class SuccessLoadedNewsEvent extends NewsEvent {}

class ShowLoadingEvent extends NewsEvent {}

class ShowErrorEvent extends NewsEvent {
  final String error;
  ShowErrorEvent(this.error);
}
