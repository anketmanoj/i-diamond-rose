import 'dart:async';

class Subscription {
  const Subscription({
    required this.timer,
    required this.subscription,
  });

  final Timer timer;

  final Completer<StreamSubscription> subscription;

  void cancel() {
    if (timer.isActive) {
      timer.cancel();
    }

    if (subscription.isCompleted) {
      subscription.future.then((subscription) => subscription.cancel());
    }
  }
}

abstract class Debounce {
  const Debounce();

  Subscription? debounce<T>({
    required Future<T> Function() request,
    required void Function(T) responseHandler,
    Subscription? oldSubscription,
  });
}

class NoDebounce extends Debounce {
  @override
  Subscription? debounce<T>({
    required Future<T> Function() request,
    required void Function(T) responseHandler,
    Subscription? oldSubscription,
  }) {
    oldSubscription?.cancel();
    request().then(responseHandler);
    return null;
  }
}

class TimerBouncer extends Debounce {
  const TimerBouncer(this.bounceDuration);

  final Duration bounceDuration;

  @override
  Subscription debounce<T>({
    required Future<T> Function() request,
    required void Function(T) responseHandler,
    Subscription? oldSubscription,
  }) {
    oldSubscription?.cancel();
    final subscriptionCompleter = Completer<StreamSubscription<T>>();
    return Subscription(
      timer: Timer(
        bounceDuration,
        () => subscriptionCompleter
            .complete(request().asStream().listen(responseHandler)),
      ),
      subscription: subscriptionCompleter,
    );
  }
}
