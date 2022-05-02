import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {


  final List locale = [
    {'name':'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'اردو', 'locale': Locale('ur', 'PK')}
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  buildDialogBox(BuildContext context){
    showDialog(
        context: context,
        builder: (builder){
          return AlertDialog(
            title: Text("Change Language"),
            content: Container(
              width: double.maxFinite,
                child: ListView.separated(
                  shrinkWrap: true,
                    itemCount: locale.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: (){
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                          child: Text(locale[index]['name']));
            },
                    separatorBuilder: (context, index){
                      return Divider(
                        color: Colors.indigo,
                      );
                    },

                ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change App Language"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("hello".tr, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),),
              const SizedBox(height: 10),
              Text("subscribe".tr, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),),
              const SizedBox(height: 35),
              MaterialButton(
                onPressed: (){
                  // var locale = Locale('ur', 'PK');
                  // Get.updateLocale(locale);
                  buildDialogBox(context);
                },
                color: Colors.indigo,
                shape: const StadiumBorder(),
                child: const Text("Change Language", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
