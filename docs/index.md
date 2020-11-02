---
layout: default
title: "01 - Einführung"
nav_order: 1
permalink: /
---

# Einführung

## Aufgabenstellung

Zielstellung war es eine Skat Bewertungsapp zu erstellen.
Die App sollte verschiedene Funktionen integrieren.
So sollten nicht nur die Punkte der einzelnen Spieler angezeigt, sondern auch mittels verschiedener Eingaben die Punkte pro Runde ermittelt werden (Prinzipiell ein Punkte "Wizzard").

Im zweiten Schritt sollte es dann möglich sein, ein Turnier zu starten und mehrere Geräte lokal miteinander zu verbinden.

## Vorgehensweise

Das Vorgehen kann in zwei Phasen geteilt werden. 
In der ersten wurde das Vorgehen und die Rahmenbedingungen festgelegt.
In der zweiten ging es an die praktische Umsetzung.

Für die Planung wurde mit Hilfe von Trello ein [Storyboard](https://trello.com/b/F3tY8z2C/storyboard-skat) und ein [Kanbanboard](https://trello.com/b/aTfRMIxJ/skat-kanban) angelegt.
Auf dem Storyboard wurden die einzelnen Aufgaben in verschiedene Themengebiete eingeteilt.
Die Funktionen sind in die Bereiche "Konfiguration", "Elemente erzeugen", "Daten anzeigen" und "Speicher" unterteilt.
Des Weiteren wurde definiert, welche Aufgaben in MVP 1 und welche in MVP 2 fallen.

Alle Funktionen bezüglich "Turnier erstellen und abhalten" wurden als MVP 2 deklariert.

Nach dem Verteilen der größeren Aufgabenblöcke wurde die theoretische UI-Struktur (User Interface) der App betrachtet.
Mittels der Aufgabenblöcke (User Stories und Storyboard) und der UI wurde das Kanban mit Tickets versehen.

Generell beinhaltet das Kanban vier verschiedene Spalten.

1. Todo - Sammeln der Aufgaben, welche noch nicht begonnen wurden
2. Doing - alle momentan bearbeiteten Aufgaben (max. 2, da nur zwei Personen)
3. Ongoing - Tickets welche dauerhaft verändert werden, während andere Tickets bearbeitet werden
4. Resolved - Entwicklung prinzipiell abgeschlossen -> anderer Entwickler schaut nochmal drüber
5. Done - abgeschlossene Aufgaben

Es wurden Tickets für verschiedene Felder hinzugefügt.
So gab es hauptsächlich UI-Tickets, welche das Erstellen der verschiedenen Bildschirme beschrieben.
Aber auch technische Tickets, wie das Erstellen eines Spielobjekts für die Spiellogik.

Nach der theoretischen Überlegung erfolgt die praktische Umsetzung.
Dazu wurde ein [Github Repository](https://github.com/maximilian-skowron/skatify) erstellt, um die Dokumentation und den Code zugänglich zu machen.
Die Dokumentation ist auch über [maximilian-skowron.github.io](https://maximilian-skowron.github.io/skatify/) erreichbar. 