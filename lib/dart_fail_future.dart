/// [Task] represents an asynchronous computation that yields a value of type `A` and **never fails**.
///
/// If you want to represent an asynchronous computation that may fail, see [TaskEither].
class Task<A> {
  final Future<A> Function() _run;

  /// Build a [Task] from a function returning a [Future].
  const Task(this._run);

  /// Build a [Task] that returns `a`.
  factory Task.of(A a) => Task<A>(() async => a);

  /// Run the task and return a [Future].
  Future<A> run() => _run();
}
