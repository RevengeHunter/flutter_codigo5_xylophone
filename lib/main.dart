import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  AudioCache audioCache = AudioCache();

  void playNote(int number){
    audioCache.play('audios/note$number.wav');
  }

  Widget buildKey({required int numberNote, required Color colors}){
    return Expanded(
      child: Container(
        color: colors,
        child: TextButton(
          onPressed: () {
            playNote(numberNote);
          },
          child: const Text(
            "",
          ),
        ),
      ),
    );
  }

  // List<Widget> armarTeclado(){
  //   List<Widget> keys = [];
  //   for(int i = 1; i<8;i++){
  //     switch (i) {
  //       case 1:
  //         keys.add(buildKey(i, const Color.fromARGB(255,0,0, 0)));
  //         break;
  //       case 2:
  //         keys.add(buildKey(i, const Color.fromARGB(0,255,255, 0)));
  //         break;
  //       case 3:
  //         keys.add(buildKey(i, const Color.fromARGB(255,255,0, 0)));
  //         break;
  //       case 4:
  //         keys.add(buildKey(i, const Color.fromARGB(255,140,0, 0)));
  //         break;
  //       case 5:
  //         keys.add(buildKey(i, const Color.fromARGB(0,255,0, 0)));
  //         break;
  //       case 6:
  //         keys.add(buildKey(i, const Color.fromARGB(192,192,192, 0)));
  //         break;
  //       case 7:
  //         keys.add(buildKey(i, const Color.fromARGB(0,128,0, 0)));
  //         break;
  //       default:
  //         keys.add(buildKey(i, const Color.fromARGB(165,42,42, 0)));;
  //     }
  //   }
  //   return keys;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "XylophoneApp",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(numberNote: 1, colors: Colors.blueAccent),
            buildKey(numberNote: 2, colors: Colors.yellowAccent),
            buildKey(numberNote: 3, colors: Colors.redAccent),
            buildKey(numberNote: 4, colors: Colors.white10),
            buildKey(numberNote: 5, colors: Colors.brown),
            buildKey(numberNote: 6, colors: Colors.purpleAccent),
            buildKey(numberNote: 7, colors: Colors.greenAccent),
          ],
        ),
        // child: ElevatedButton(
        // onPressed: (){
        //   AudioCache audioCache = AudioCache();
        //   audioCache.play('audios/note1.wav');
        // },
        //   child: Text("Click!"),
        // ),
      ),
    );
  }
}
