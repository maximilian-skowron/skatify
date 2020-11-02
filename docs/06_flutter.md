---
layout: default
title: "06 - Flutter praktische Erfahrung" 
nav_order: 6
permalink: /practical-exp-flutter
---

# Flutter praktische Erfahrung während der Umsetzung

## Einrichten der Entwicklungsumgebung

Auch wenn Visual Studio Code (VSCode) zum entwicklen genutzt werden soll muss [Android Studio](https://developer.android.com/studio?gclid=CjwKCAiA-f78BRBbEiwATKRRBJ4Bq97NLtiLXUfZ_E4JoTfQAjIMsH6AWsRzuxRXrkcrzL-pYnKHhRoCm24QAvD_BwE&gclsrc=aw.ds) installiert werden, insofern die Apps innerhalb eines Emulators ausgeführt werden soll.
Es ist auch möglich Apps auf dem eigenen Handy auszuführen und zu testen.
Sollte ein Emulator verwendet werden muss unter SDK eine Android Version installiert werden und unter AVD (Android Virtual Device) ein [neuer Emulator angelegt werden](https://developer.android.com/studio/run/managing-avds).

Innerhalb von VSCode muss dann nur noch die Flutter Extension installiert werden.

## Installieren von Flutter

Flutter selbst ist einfach zu installieren und auch gut für jede Plattform (Windows, Mac, Linux, ChromeOS) beschrieben.

https://flutter.dev/docs/get-started/install

## Projekt erstellen

Wurde Flutter richtig erstellt kann mit dem `flutter` CLI Tool ein Projekt angelegt werden.
Es sollte vorher mit `flutter doctor` geschaut werden ob alle Extensions und Installationen richtig erkannt wurden. Die Rückgabe sollte ungefähr so aussehen, wo bei Xcode bei Linux, Chrome OS und Windows wegfällt.

```bash
$ flutter doctor

Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 1.20.2, on Mac OS X 10.15.7 19H2, locale de-DE)

[✓] Android toolchain - develop for Android devices (Android SDK version 29.0.3)
[✓] Xcode - develop for iOS and macOS (Xcode 12.1)
[✓] Android Studio (version 4.0)
[✓] VS Code (version 1.50.1)
[!] Connected device
    ! No devices available

! Doctor found issues in 1 category.
```

Nun kann schließlich mit `flutter create --project-name FlutterProject /Pfad/Zum/Projekt/Ordner` ein neues Beispiel Projekt erstellt werden.
Entweder über VSCode oder mittels `flutter run` kann die App ausgeführt werden.

## Erfahrung während der Umsetzung

Das Aufsetzen von Flutter beinhaltet zwar wenige Schritte mehr als bei Android, da Android Studio alle nötigen Dateien selbst installiert, allerdings war es trotzdem sehr einfach.

Flutter selbst ermöglichte uns extrem schnell und einfach die Hälfte der Bildschirme aus dem definierten Wireframe zu erstellen und mit Funktionalität zu versehen.
Dies war dem Baukastensystem der Widget und dem Hot Reloade geschuldet, welcher die App fast sofort aktualisierte anstatt komplett neu zu bauen, wie bei Android.

Im folgenden Kapitel gehen wir auf den Flutter Code ein und ziehen dann im letzen Kapitel ein Fazit zu Flutter und Android Native.