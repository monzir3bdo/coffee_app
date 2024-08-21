part of 'get_cart_bloc.dart';

@freezed
class GetCartState with _$GetCartState {
  const factory GetCartState.initial() = _Initial;
  const factory GetCartState.loading() = _Loading;
  const factory GetCartState.empty() = _Empty;
  const factory GetCartState.success({required CartModel cart}) = _Success;
  const factory GetCartState.failure({required String message}) = _Failure;
}
