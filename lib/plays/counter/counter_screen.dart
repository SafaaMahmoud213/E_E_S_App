// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_app/plays/counter/cubit/counter_cubit.dart';
// import 'package:my_app/plays/counter/cubit/counter_state.dart';

// class CounterScreen extends StatelessWidget {
//   const CounterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,

//             children: [
//               IconButton(
//                 onPressed: () {
//                   context.read<CounterCubit>().incremant();
//                 },
//                 icon: Icon(Icons.add),
//               ),
//               BlocBuilder<CounterCubit, CounterStates>(
//                 builder: (context, state) {
//                   if (state is CounterIcrement) {
//                     return Text(
//                       "${state.counter}",
//                       style: TextStyle(
//                         fontSize: 30,
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   } else if (state is CounterDecrement) {
//                     return Text(
//                       "${state.counter}",
//                       style: TextStyle(
//                         fontSize: 30,
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   } else {
//                     return Text(
//                       "${state.counter}",
//                       style: TextStyle(
//                         fontSize: 30,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   }
//                 },
//               ),

//               IconButton(
//                 onPressed: () {
//                   context.read<CounterCubit>().decrement();
//                 },
//                 icon: Icon(Icons.remove),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
