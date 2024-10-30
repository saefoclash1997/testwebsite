import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String photoLink = 'https://cdn.salla.sa/awErl/uvW7UKnysmYDwjkLl4qxoRJUbKesG41GQnRfEUhV.jpg';

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:Center(
              child: TextFormField(
                onChanged: (val){
                  name=val;
                },
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  label: Text("Email"),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: (){
                      print(name);
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}
