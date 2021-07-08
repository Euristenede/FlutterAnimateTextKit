import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Animações de Texto',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MaterialHomePage()
    );
  }
}

class MaterialHomePage extends StatelessWidget {

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 50),
      children: <Widget>[
        //Efeito de rotação
        Container(
          height: 150,
          color: Colors.amber,
          child: Center(
            child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('AWESOME'),
                  RotateAnimatedText('OPTIMISTIC'),
                  RotateAnimatedText('DIFFERENT'),
                ],
                onTap: () {
                  print("Tap Event");
                },
            ),
          ),
        ),
        //Efeito de Desaparecer
        Container(
          height: 150,
          color: Colors.blue,
          child: Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('Eu sou!'),
                  FadeAnimatedText('Eu sou Software Developer!!'),
                  FadeAnimatedText('Eu sou Mobile Developer!!!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ),
        //Efeito de Maquina de escrever
        Container(
          height: 150,
          color: Colors.deepPurple,
          child: Center(
            child: DefaultTextStyle(
              style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Agne',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Euristenede Santos'),
                TyperAnimatedText('Eu sou Cientista!!!'),
                TyperAnimatedText('Eu sou Software Developer!!'),
                TyperAnimatedText('Eu sou Mobile Developer!!!'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
            ),
          ),
        ),
        //Efeito de escala
        Container(
          height: 150,
          color: Colors.green,
          child: Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 70.0,
                fontFamily: 'Canterbury',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Euristenede Santos'),
                  ScaleAnimatedText('Eu sou Software Developer!!'),
                  ScaleAnimatedText('Eu sou Mobile Developer!!!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ),
        //Efeito de colorir
        Container(
          height: 150,
          color: Colors.blue,
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Larry Page',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Bill Gates',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Steve Jobs',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
        //Efeito de preencher texto com u liquido
        Container(
          height: 150,
          color: Colors.deepPurple,
          child: Center(
            child: TextLiquidFill(
              text: 'LIQUIDY',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.redAccent,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        //Efeito de ondas
        Container(
          height: 150,
          color: Colors.green,
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('Look at the waves'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
        //Efeito de brilho intermitente
        Container(
          height: 150,
          color: Colors.cyan,
          child: Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.white,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText('Flicker Frenzy'),
                  FlickerAnimatedText('Night Vibes On'),
                  FlickerAnimatedText("C'est La Vie !"),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

