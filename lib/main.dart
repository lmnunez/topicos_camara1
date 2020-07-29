import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp( MaterialApp(
  title: "Topicos camara",
  home: Camara(),
  theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    accentColor: Colors.orangeAccent,

  ),
)
);

class Camara extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topicos camara"),

      ),
      body: Center(
        child: RaisedButton(
          onPressed: _abrirCamera,
          child: Text("camara"),

        ),
      ),

    );
  }
  void _abrirCamera(){
    var picture =  ImagePicker.pickImage(
      source: ImageSource.camera,
    );
  }
}


