import 'package:flutter/material.dart';

void main() => runApp(MiagendaYausliApp());

class MiagendaYausliApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner: false, title: "galeria fotografica", home: new PaginaPrincipal(title: "Galeria de imageneS")); //fin de materialapp return
  } //fin widget miagendaapp
} //fin clase miagendaapp

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //fin clase pagina principal con estado

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ), //fin del appbar
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        //29 porque son 29 imagenes las que vamos a subir editamos ahi para los numeros a subir de imagenes
        children: _buildGridTiles(29),
      ), //fin del gridview
    ); //fin de scaffold
  } //fin del widget
} //fin de la clase paginaprincipalstate

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  } //fin index
      ); //fin del generador
  return containers;
} //fin de list de widget para las fotos
