import 'dart:async';

mixin Validators {
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length > 3) {
        sink.add(password);
      } else {
        sink.addError('must be minimum 4 chars');
      }
    },
  );
}
