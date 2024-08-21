part of 'remove_from_cart_cubit.dart';

@freezed
class RemoveFromCartState with _$RemoveFromCartState {
  const factory RemoveFromCartState.initial() = _Initial;
  const factory RemoveFromCartState.loading() = _Loading;
  const factory RemoveFromCartState.success() = _Success;
  const factory RemoveFromCartState.failure({required String message}) =
      _Failure;
}
