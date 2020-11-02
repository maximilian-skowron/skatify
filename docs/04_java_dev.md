---
layout: default
title: "04 - Java praktische Erfahrung" 
nav_order: 4
permalink: /practical-exp-java
---

# Java praktische Erfahrung während der Umsetzung

## Android Entwicklung laut dem Android Team

Das Team rund um Android gibt neuen Android Entwicklern eine klare Richtung vor.
So wird mit [Android Jetpack](https://developer.android.com/jetpack) (auch AndroidX) ein Framework bzw. eine Sammlung von Tools zur Verfügung gestellt, um skalierbare und testbare Apps zu erstellen.
Jetpack selbst integriert dabei einige Grundsätze, wie `Seperation of Concerns` und `UI driven by Models`.
Dazu kommt vor allem das Model-View-ViewModel (MVVM) Design Pattern zum Einsatz.

MVVM selbst wird mittels mehrere Tools innerhalb des Frameworks umgesetzt.
Es wird das Erstellen und Managen von UI Elementen in eigene XML Dateien ausgelagert.
Innerhalb diser XMLs kann mittels "Data Binding" Werte aus den ViewModels angezeigt bzw. manipuliert werden.
Das Navigieren zwischen UI Elementen wird von einee Navigations Komponente übernommen, welche wieder ein eigenständiges Tool innerhalb des Frameworks ist.

Schließlich wird folgender Aufbau versucht zu erreichen:

![Android Jetpack App Structure](https://developer.android.com/topic/libraries/architecture/images/final-architecture.png)

Activities oder Fragmente binden verschiedene XML Dateien und stellen die Schnittstelle zwischen Code und UI dar.
Sie ermöglichen das managen vom [Lebenszyklus](https://developer.android.com/guide/components/activities/activity-lifecycle) der Komponenten und somit direkt das managen von allokierten Ressourcen. 

Über Ihnen stehen ViewModels, welche den State einzelner Elemente oder des ganzen Bildschirms halten.
Zum Beispiel gibt es einen Bildschirm mit mehreren Texteingabe Elementen, deren Werte werden im ViewModel in Variablen gehalten und wenn nötigt transformiert.
Das ViewModel ist prinzipiell nichts weiter als ein standard Model nur für UI Elemente.

Unterhalb des ViewModls kommt das Repository Pattern zum Einsatz.
Ein Repository ist einfach eine Sammlung von DAO Objekten bzw. ein es stellt selber ein DAO Objekt dar nur das nicht nur eine Datenquelle dahinter steht.
So könnte eine Funktion in einem Repository heißen `saveUser()`.
Diese Versucht den Nutzer in der Cloud, also einer `remote data source`, zu speichern.
Sollte dies nicht gelingen wird entsprechender Nutzer erstmal lokal gespeichert.
Ein Controller oder ViewModel muss dabei keinerlei Informationen über mögliche DB Fehler besitzen.

Zu letzt wird durch Jetpack eine [Beispiel Sunflower App](https://github.com/android/sunflower) zur Verfügung gestellt, wo die verschiedenen AndroidX Tools aufgezeigt werden.

## Java App Entwicklung und deren Probleme

Noch vor dem eigentlichen Start der Entwicklung kamen Probleme auf.
So sind viele Tutorials der Android Macher als auch die Sunflower App nur mit Kotlin erstellt wurden.
Kotlin ist die zweite Programmiersprache, welche neben Java vollständig auf Android unterstützt wird.
Zwar gibt es einige Überschneidungen innerhalb der Idiome von Kotlin und Java, allerdings war die Syntax doch stark andersartig.

Obwohl Kotlin Idiome wie `functional programming` anbietet wurde sich für Java als Basis entschieden, da die Zeit nicht ausreichenwürde eine neue Sprache zu lernen.

Allerdings stellte sich eine geringe Java Dokumentationsdichte als Problem heraus und führte nur von Fehler zu Fehler.
Denn auch innerhalb der Android Community wird fast ausschließlich nur noch Kotlin verwendet, sodass Fehler langsam und mühsählig gelöst werden mussten.

Da dies zu lange gedauert hat wurde sich entschiedenen auf Flutter umzusteigen.
