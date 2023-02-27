abstract class ListinhaExcption implements Exception {
  final String name;
  final StackTrace? stackTrace;

  ListinhaExcption(this.name, [this.stackTrace]);
}

class InvalidParams extends ListinhaExcption {
  InvalidParams(super.name, [super.stackTrace]);
}
