// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_app/bloc/filter_cubit/model/checkbox_model.dart';
// import 'package:uuid/uuid.dart';

// part 'checkbox_state.dart';

// class CheckboxCubit extends Cubit<CheckboxState> {
//   CheckboxCubit() : super(CheckboxInitial());

//   void addTitle(CheckboxModel modele) {
//     List<String> title = ["كرتونة", "علبة", "قطعة"];
//     final modele = CheckboxModel(title: title, isComplete: false, id: Uuid().v4());
//     emit(UpdateCheckbox([...state.checkboxmodeles, modele]));
//   }

//   void togelleCheckbox(String id) {
//     final List<CheckboxModel> newlist =
//         state.checkboxmodeles.map((e) {
//           return e.id == id ? e.copyWith(isComplete: !e.isComplete) : e;
//         }).toList();
//     emit(UpdateCheckbox(newlist));
//   }
// }
