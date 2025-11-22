part of 'news_bloc.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

class GetNewsState extends NewsState {}

class SuccessLoadedNewsState extends NewsState {}

class ShowLoadingState extends NewsState {}

class ShowErrorState extends NewsState {
  final String error;
  ShowErrorState(this.error);
}
