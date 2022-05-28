import 'package:equatable/equatable.dart';

/// This class associated a [name] to a given [value].
class Named<T> extends Equatable {

  ///Named constructor
  const Named(this.name, this.value);

///Name associated
  final String name;

///Given value  
  final T value;

  @override
  List<Object?> get props => [value];

  @override
  String toString() => '<$name>($value)';
}

///[Named] Extensions
extension NamedExtension<T> on T {
  ///[Named] extension function
  Named<T> named(String name) => Named<T>(name, this);
}
