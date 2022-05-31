// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';

///Result types
enum ResultType { value, error }

///Result that returns either a LHS error or RHS value
@immutable
class Result<E, T> {
  const Result.error({required E input})
      : error = input,
        value = null,
        type = ResultType.error;
  const Result.value({required T input})
      : value = input,
        error = null,
        type = ResultType.value;

  ///RHS value
  final T? value;

  /// LHS error
  final E? error;
  
  final ResultType type;

  E get requireError => error!;
  T get requireValue => value!;

  @override
  String toString() {
    switch (type) {
      case ResultType.value:
        return 'Value = ${requireValue.toString()}';
      case ResultType.error:
        return 'Error = ${requireError.toString()}';
    }
  }
}
