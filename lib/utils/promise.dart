library promise;

import 'dart:async';

typedef Callback = Function(
  Function([dynamic value]) resolve,
  Function(String error) reject,
);

/// A Calculator.
class Promise {
  Promise();
  static Future<T?> run<T>([
    Callback? callback,
  ]) async {
    final completer = Completer<T>();
    //
    resolve([value]) {
      return completer.complete(value);
    }

    //
    reject(String exception) {
      completer.completeError(exception);
    }

    if (callback != null) {
      await callback(resolve, reject);
    } else {
      completer.complete();
    }
    return completer.future;
  }

  static Future<T?> resolve<T>([T? value]) async {
    await Future.delayed(Duration.zero);
    return value;
  }

  static Future<T> reject<T extends String>(T value) async {
    await Future.delayed(Duration.zero);
    throw value;
  }
}
