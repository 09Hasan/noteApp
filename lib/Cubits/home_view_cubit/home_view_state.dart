part of 'home_view_cubit.dart';

@immutable
sealed class HomeViewState {}

final class HomeViewInitial extends HomeViewState {}

final class HomeViewLoading extends HomeViewState {}

final class HomeViewSuccess extends HomeViewState {
  final List<NoteModel> notes;
  HomeViewSuccess({required this.notes});
}

final class HomeViewFailure extends HomeViewState {
  final String errorMessage;
  HomeViewFailure({required this.errorMessage});
}
