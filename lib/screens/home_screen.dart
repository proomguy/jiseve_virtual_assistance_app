import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController userInputTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.amberAccent
              ]
            )
          ),
        ),
        title: Image.asset("images/logo.png",
          width: 140,
        ),
        titleSpacing: 10,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4, top: 4),
            child: InkWell(
              onTap: (){

              },
              child: const Icon(
                Icons.chat,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 4),
            child: InkWell(
              onTap: (){

              },
              child: const Icon(
                Icons.image,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: (){
                    
                  },
                  child: Image.asset("images/assistant_icon.png",
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              const SizedBox(height: 50, width: 50,),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: TextFormField(
                        controller: userInputTextEditingController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "How can I help you?"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50, width: 10,),
                  InkWell(
                    onTap: (){

                      print("Send User input");

                    },
                    child: AnimatedContainer(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.deepPurpleAccent,
                      ),
                      duration: const Duration(
                        milliseconds: 1000,
                      ),
                      curve: Curves.easeInOutCubicEmphasized,
                      child: const Icon(
                        Icons.send,
                        color: Colors.greenAccent,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){

        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset("images/sound.png"),
        ),
      ),
    );
  }
}
