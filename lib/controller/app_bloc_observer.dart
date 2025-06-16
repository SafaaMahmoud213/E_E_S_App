import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('🎯  Created: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('🔄  Changed: ${bloc.runtimeType}  change :$change');
  }

  @override
  void onTransition(BlocBase bloc, Transition transition) {
    super.onTransition(bloc as Bloc<dynamic, dynamic>, transition);

    print('🚀 Transition: ${bloc.runtimeType}');
    print('   📨 Event: ${transition.event}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('❌ BLoC Error: ${bloc.runtimeType} Error : $error');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('🗑️ BLoC Closed: ${bloc.runtimeType}');
  }
}
