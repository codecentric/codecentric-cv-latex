# codecentric-cv-latex
LaTeX Vorlage für die intern genutzten CVs

## Interne Ablage
Es gibt jetzt eine Ablage für die CC-CVs https://github.com/codecentric/codecentric-cvs. Hier wird ein Ableger diese Templates genutzt.

## Build
Wichtig für die korrekte Darstellung der Schrift ist, dass der Font "EurostileLTStd" im System installiert ist. Dieser Font ist im centerdevice abgelegt: https://public.centerdevice.de/fabd322d-bc1d-4b1b-bcae-c6dd2426660f

Nach der Installation eines LaTeX Textsystems inklusive "xelatex". Diese LaTeX Variante ist in der Lage Systemfonts, also den cc-Eurostile-Font, direkt zu nutzen.
```bash
./xelatex cv.tex
```

<img src="https://raw.githubusercontent.com/codecentric/codecentric-cv-latex/master/screenshot_pdf_1.png" width="230px">
<img src="https://raw.githubusercontent.com/codecentric/codecentric-cv-latex/master/screenshot_pdf_2.png" width="230px">
<img src="https://raw.githubusercontent.com/codecentric/codecentric-cv-latex/master/screenshot_pdf_3.png" width="230px">
