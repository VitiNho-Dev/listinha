import 'package:result_dart/result_dart.dart';

import '../regex/regex.dart';
import 'text_vo.dart';
import 'value_object.dart';

class URLVO extends TextVO {
  URLVO(super.value);

  @override
  Validation validator([Object? _]) {
    return super.validator().flatMap(_validator);
  }

  Validation _validator(_) {
    if (!value.contains(urlRegex)) {
      return 'URL não é válido'.toFailure();
    }
    return Success.unit();
  }
}
