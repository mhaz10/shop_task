part of 'offers_cubit.dart';

@immutable
sealed class OffersState {}

final class OffersInitial extends OffersState {}

final class GetDataSuccess extends OffersState {}

final class GetDataError extends OffersState {
  final String error;

  GetDataError(this.error);
}
