part of 'get_cart_bloc.dart';

@freezed
class GetCartEvent with _$GetCartEvent {
  const factory GetCartEvent.started() = _Started;
  const factory GetCartEvent.getCart() = _GetCartEvent;
}
