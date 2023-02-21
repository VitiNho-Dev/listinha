import 'package:common/domain/value_objects/value_object.dart';
import 'package:result_dart/result_dart.dart';

class UuidVO extends ValueObject<String> {
  const UuidVO(super.value);

  @override
  Validation validator([Object? _]) {
    if (value.isEmpty) {
      return '${runtimeType.toString} não é válido'.toFailure();
    }
    return Success.unit();
  }
}
