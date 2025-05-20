import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';


class AdaptiveThemeApp extends StatefulWidget {

   const AdaptiveThemeApp({super.key});

  @override
  State<AdaptiveThemeApp> createState() => _AdaptiveThemeAppState();
}

class _AdaptiveThemeAppState extends State<AdaptiveThemeApp> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        setState(() {
        check =!check;
        check? AdaptiveTheme.of(context).setLight():AdaptiveTheme.of( context).setDark();
        });
      },
       child:check?
       Icon(Icons.light_mode,color: Colors.black,)
       :Icon(Icons.dark_mode ,color: Colors.white,),
       ),),
    );
  }
}