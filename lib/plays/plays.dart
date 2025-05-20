import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Plays extends StatelessWidget {
  const Plays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Slidable
                (
                  key: ValueKey(index),
                  closeOnScroll: true,
               startActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(onPressed: (context){},
                  backgroundColor: Colors.black,
                  icon: Icons.delete,
                  label: 'Delete',
                  borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(width: 10,),
                   SlidableAction(onPressed: (context){},
                  backgroundColor: Colors.black,
                  icon: Icons.archive,
                  label: 'Archive',
                  borderRadius: BorderRadius.circular(10),
                  ),
                ],),
                  child: Container(
                              height: 50,
                              color: Colors.red,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              child:  Center(
                                child: Text(
                  'Plays $index',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                                ),
                              ),
                          ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}