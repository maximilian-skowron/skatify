---
layout: default
title: "03 - Planung der praktischen Umsetzung" 
nav_order: 3
permalink: /practical-solution-planing
---

# Praktische Umsetzung Planung

Bevor mit der Umsetzung begonnen werden kann muss evaluiert werden, welche Tools für mobile Apps verwendet werden könne.
Generell gibt es vier goße Tools:

1. QT
2. React Native
3. Flutter
4. native Java/Kotlin/Swift/Object-C

Im folgenden werden kurz die Eigenheiten einer jeden Vorgehensweise kurz beschrieben und eine eigene Meinung dazu gewidmet.
In darauf folgenden Kapiteln wird auf den Unterschied zwischen nativer Android Entwicklung (Java/Kotlin) und Flutter genauer eingegangen.

## QT

QT ist das älteste Mittel zum erstellen von cross platform Applikationen.
Die neuste Version bietet verschiedene Möglichkeiten eine App zu erstellen.
Am meisten genutzt wird QT Quick mit QML, eine Javascript ähnlichen Sprache, und QT+ mit C++ als Sprache verwendet.

Bei QT handelt es sich, unabhängig von der gewählten Vorgehensweise, um ein Framework zum erstellen von Nutzeroberflächen und entsprechender Logik für Android, IOS, Linux und Windows.

Für QT sollten gute C++ Kenntnisse vorhanden sein, da QML dazu tendiert "Spagetthi"-Code zu produzieren.
Somit bleibt einem, wenn man eine möglichst große Widgetauswahl haben möchte mit lesbarem Code, nur QT+ als Variante.

## React Native

React Native ist ein Webframework, welches eine mittels HTML, CSS und Javascript innerhalb eines Browsers nativ auf verschiedenen Geräten laufen kann.
So muss wie auch bei QT kein Plattform spezifischer Code geschriebene werden.

React Native ist recht Ressourcen kostspielig und kann nur auf die vom React Team implementierten APIs der Zielplattform zugreifen.
Allerdings verwendet es das React Framework und bietet somit Entwicklern mit Frontend oder React Erfahrung die Möglichkeit schnell eigene Apps zu erstellen.

Hinsichtlich dem MVP 2 wurde React Native ausgeschlossen, da nicht bekannt war wie der Zugriff auf Bluetooth oder ähnliches erfolgen kann.

## native Entwicklung

Unter IOS kann entweder mit dem älteren Object C oder Swift entwickelt werden.
Bei Android kann Java oder Kotlin vom Entwickler verwendet werden.
Innerhalb der Umsetzung wurde sich auf die Androidentwicklung konzentriert.

Generell bieten native Apps die beste Performance.
Allerdings sind sie nicht cross plattform kompatible mit Ausnahme von Kotlin was im Februar bekannt gegeben hat [Multiplattformsupport zu erhalten](https://kotlinlang.org/lp/mobile/).

Anfänglich während der Umsetzung wurde sich für Java entschieden, da ein Java Background vorhanden war. 
Später wurde aber auf Flutter umgestiegen.
Entsprechende Gründe und Erkenntnisse werden in folgenden Kapiteln beschrieben.

## Flutter

Flutter ist ein Multiplattform Framework zum erstellen von IOS, Android Apps, Webseiten und Desktopanwendungen für Linux und Windows.
Es verwendet die von Google entwickelte Sprache Dart.

Flutter kommt in den Feldern von IOS und Android Apps nah an die Performance nativer Apps heran.
Durch seine neue und durchdachte Programmiersprache ermöglicht es einfach und schnell Logik in die App zu integrieren.
Es bietet ein riesieges Sammelsorium an Widgets mit denen schnell eine funktionale UI erstellt werden kann.

Entgegen Android Entwicklung mit Java/Kotlin gibt es bei Flutter viele Möglichkeiten UI-State zu managen.
Vom Flutter Team direkt wird oft die Nutzung des Provider Packages empfholen.
Aber auch dieses hat seine Schwäche und wirkt noch recht unausgereift.
Ein genauer Vergleich der Möglichkeiten kann [hier](https://epb.bibl.th-koeln.de/frontdoor/deliver/index/docId/1498/file/flutter-for-the-dev-of-large-scale-ref-app.pdf) nachgelesen werden.

Da unter Android die model-view-viewmodel Archtiketur nicht nur empfholen, sondern auch durch entsprechende Packages gut unterstützt ist wurde sich gegen Flutter entschieden.