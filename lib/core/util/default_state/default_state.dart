import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_state.freezed.dart';

@freezed
abstract class DefaultState<T> with _$DefaultState<T> {
  const factory DefaultState.data(T item) = _Data;
  const factory DefaultState.loading() = _Loading;
  const factory DefaultState.error(Object? e, [StackTrace? stk]) = _Error;
}
