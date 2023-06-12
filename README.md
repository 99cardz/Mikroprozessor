# MPMP 2023
Jonathan Schulze 79886

## CPU

Die esoterische Programiersprache [Brainfuck](https://de.wikipedia.org/wiki/Brainfuck) wurde gewählt, da sie wegen ihrer kleinen Anzahl von Instruktionen sowie dem Wegfallen von Argumenten nur eine einfache implementierte CPU benötigt. 

Die Instruktionswörter sind 3 Bit breit, was alle 8 Instruktionen abdeckt. 

- 0 000 `>`
- 1 001 `<`
- 2 010 `+`
- 3 011 `-`
- 4 100 `.`
- 5 101 `,`
- 6 110 `[`
- 7 111 `]`

Instruktionen `>` und `<` manipulieren den Memorypointer. Instuktionen `+` und `-` manipulieren den Wert auf den der Memorypointer zeitg. `.` und `,` sind die ein und Ausgabeinstruktionen. 

Logik kann mit den Schleifeninstruktionen `[` und `]` programmiert werden. Wenn bei der Instuktion `[` der Wert auf den der Memorypointer zeigt 0 ist, wird die passende schließende Klammer im Programmspeicher gefunden und das folgende Programm ausgeführt, ansonsten geht das Programm in die Schleife und springt beim erreichen der Schließenden Klammer wieder zur öffnenden Klammer zurück wenn der Wert auf den der Memorypointer zeigt nicht 0 ist. Dies ist in der CPU durch zwei Automaten, die bei antreffen einer Klammer die CPU stoppen und mithilfe von Zählern durch das Programm iterieren bis die schließende Klammer gefunden ist.

