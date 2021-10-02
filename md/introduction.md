# Introduction
...

## Etat des lieux
...

## Références dans un texte

Einfach den Bibtex-Key mit einem `@` davor in eckigen Klammern schreiben: Aus `[@Dietz2018]` wird [@Dietz2018] ...
Mit Seiten- oder Kapitelangabe: Aus `[@Dietz2018, Seite 111]` oder `[@Dietz2018, Kapitel 111]` wird [^1]

[^1]: Ma première note de bas de page ! Ajoutez un [lien](https://www.eff.org/).

## Exemple d'image

![Voici le sous-titre, source: [@Dietz2018] \label{fig:foo}](img/wuppie.png){width=80%}


## Source-Code

```{.python caption="The preprocessing step, cf. [@Dietz2018]" #lst:huh}
def foo():
  """ Wuppie! """
  pass
```
## Tabellen

| Rechtsbündig | Linksbündig | Default | Zentriert |
|-------------:|:------------|---------|:---------:|
|          foo | foo         | foo     |    foo    |
|          123 | 123         | 123     |    123    |
|          bar | bar         | bar     |    bar    |

: Tabelle als Markdown-Pipe-Table, vgl. [@Dietz2018] \label{tab:ugh}


Leider gibt es derzeit einen Bug (siehe [github.com/Wandmalfarbe/pandoc-latex-template/issues/29](https://github.com/Wandmalfarbe/pandoc-latex-template/issues/29)
bzw. [github.com/jgm/pandoc/issues/3929](https://github.com/jgm/pandoc/issues/3929)), wodurch die Breite beim Einfärben der
Tabellenzeilen etwas zu breit wird. Wenn das stört, kann man immer noch normale \LaTeX{}-Tabellen nutzen (siehe
Tabelle \ref{tab:ieks}).

\begin{longtable}[]{rllc}
\caption{Tabelle als \LaTeX{}-Table \label{tab:ieks}} \\
\toprule
Rechtsbündig & Linksbündig & Default & Zentriert \tabularnewline
\midrule
\endhead
foo & foo & foo & foo \tabularnewline
123 & 123 & 123 & 123 \tabularnewline
bar & bar & bar & bar \tabularnewline
\bottomrule
\end{longtable}


## Querverweise

Querverweise funktionieren in Markdown leider nicht so richtig wie von \LaTeX{} gewohnt.

Hier kann aber einfach auf die ensprechenden \LaTeX{}-Pendants ausgewichen werden:

*   Definieren einer Referenz mit `\label{<id>}`{.latex} (beispielsweise in den jeweiligen Unterschriften
    unter einer Abbildung/Tabelle/Code-Schnipsel), und
*   Bezugnahme auf eine Referenz im Text mit `\ref{<id>}`{.latex}.

Vgl. Abbildung \ref{fig:foo} oder Tabelle \ref{tab:ugh} oder Listing \ref{lst:huh} ...

Wer mehr braucht, kann sogenannte Filter^[vgl. [pandoc.org/filters.html](https://pandoc.org/filters.html)
bzw. [pandoc.org/lua-filters.html](https://pandoc.org/lua-filters.html)] einsetzen, beispielsweise
[github.com/lierdakil/pandoc-crossref](https://github.com/lierdakil/pandoc-crossref).


## Hinweise zum generierten PDF

Das generierte PDF ist für den **doppelseitigen** Ausdruck gedacht. Wie bei einem Buch fangen neue Kapitel
immer auf einer neuen rechten Seite an, d.h. es kann passieren, dass am Ende eines Kapitels ggf. eine leere
Seite erzeugt wird. Dies ist durchaus beabsichtigt.
