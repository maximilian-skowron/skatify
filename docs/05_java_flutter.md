---
layout: default
title: "05 - Flutter vs Native Java" 
nav_order: 5
permalink: /flutter-java
---

# Flutter vs Java

## Generelle Unterschiede

Flutter ist Googels neustes Framework, welches es ermöglicht mit einer Code Basis (Dart Programmierungssprache) für Desktop, Web und Mobil Apps zu entwickeln.
Dafür wird Dart Code in nativen Android Code generiert und schließlich als APK verpackt.
Flutter selbst verbindet UI und Code durch sogenannte Widget.
Diese Widget bieten viele verschiedene Funktionen und können in einem sogenannten Widget Baum verschachtelt und ergeben somit die UI der App.

Ein simples Beispiel wäre folgender Code:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
```

Wenn genauer geschaut wird erkennt man ein `onPressed` Attribut beim `FloatingActionButton`.
Dieses Attribute übernimmt eine simple Funktion und führt den Code darin aus.
Das verführt natürlich zum managen des States innerhalb der UI allerdings bietet das Flutter Team auch eine Jetpack ähnliche Lösung für Statemanagement an.
Die Entwickler sollen Providers nutzen.
Provider ist ein Wrapper um die sogennanten Inherited Widget.
Ein Provider kann somit in jedem Widget unterhalb des eigentliches Providers aufgerufen und genutzt werden.

Sodass schließlich eine solche Struktur realisiert werden kann:

![Flutter App Struktur](https://miro.medium.com/max/500/1*UPkx8PaJWAL9AUCYW3Ijew.png)

`BLoC` ist eine weitere State Management Möglichkeit um sogenannte Streams und Sinks.

## Flutter vs native Java Vor- und Nachteile

|                                         	| Flutter                                                                                        	| native Android                                               	|
|-----------------------------------------	|------------------------------------------------------------------------------------------------	|--------------------------------------------------------------	|
| APK Größe                               	| größer als bei Java                                                                            	| mit Java ist die kleinstmögliche App Größe erreichbar        	|
| Statemanagement                         	| Provider, Bloc, Inherited Widget                                                               	| AndroidX mit MVVM                                            	|
| Sprache                                 	| Dart (oft als Javascript 2.0 bezeichnet)                                                       	| Java oder Kotlin                                             	|
| Entwicklungsteams Support für Beispiele 	| Extrem viele Beispiele durch die Entwickler                                                    	| Bei Jetpack leider fasst ausschließlich nur Kotlin Beispiele 	|
| Support durch Community                 	| Extrem groß, viele Medium Artikel, viele Tutorials                                             	| fasst nur Kotlin generell weniger beliebt als Flutter        	|
| Geschwindigkeit                         	| Leicht langsamer als native Apps, durch schlechte Optimierung Tendenz extrem langsam zu werden 	| Schnellstmögliche App                                        	|
| Entwicklungsumgebung                    	| Visual Studio Code (Flutter Extension), Android Studio (Flutter + Dart Extension)              	| Android Studio, auch VSCode (eher weniger genutzt)           	|