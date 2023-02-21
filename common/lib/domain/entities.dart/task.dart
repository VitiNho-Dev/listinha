import '../value_objects/text_vo.dart';
import '../value_objects/uuid_vo.dart';
import '../value_objects/value_object.dart';
import 'entity.dart';

class Task extends Entity {
  final UuidVO uuid;
  final TextVO description;
  final bool done;

  Task({
    required this.uuid,
    required this.description,
    required this.done,
  });

  @override
  Validation validator([Object? _]) {
    return uuid
        .validator() //
        .flatMap(description.validator);
  }
}
