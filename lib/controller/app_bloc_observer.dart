import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    // ignore: avoid_print
    print('🎯  Created: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('🔄  Changed: ${bloc.runtimeType}  change :$change');
  }

  @override
  void onTransition(BlocBase bloc, Transition transition) {
    super.onTransition(bloc as Bloc<dynamic, dynamic>, transition);
    // ignore: avoid_print
    print('🚀 Transition: ${bloc.runtimeType}');
    // ignore: avoid_print
    print('   📨 Event: ${transition.event}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    // ignore: avoid_print
    print('❌ BLoC Error: ${bloc.runtimeType} Error : $error');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    // ignore: avoid_print
    print('🗑️ BLoC Closed: ${bloc.runtimeType}');
  }
}
