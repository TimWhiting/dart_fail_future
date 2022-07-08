import 'package:dart_fail_future/dart_fail_future.dart';
import 'package:test/test.dart';

void main() {
  test('run', () async {
    final task = Task.of(10);
    final future = task.run();
    expect(future, isA<Future<int>>());
    final r = await future;
    expect(r, 10);
  });
}
