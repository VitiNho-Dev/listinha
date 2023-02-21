import 'package:result_dart/result_dart.dart';

import '../regex/regex.dart';
import 'text_vo.dart';
import 'value_object.dart';

class EmailVO extends TextVO {
  EmailVO(super.value);

  @override
  Validation validator([Object? _]) {
    return super
        .validator() //
        .flatMap(_validator);
  }

  Validation _validator(_) {
    if (!value.contains(emailRegex)) {
      return 'Email não é válido'.toFailure();
    }
    return Success.unit();
  }
}
