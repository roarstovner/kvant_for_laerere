[![DOI](https://zenodo.org/badge/976508160.svg)](https://doi.org/10.5281/zenodo.17068063)

# Kvantitativ metode for lærere

Contains all files for

Roar B. Stovner. (2026). Kvantitativ metode for lærere. https://kvant.roarstovner.no, https://doi.org/10.5281/zenodo.17068063

In principle, this repository should include everything needed to reproduce the book from scratch.

The book is released under a creative commons [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) licence. This means that this book can be reused, remixed, retained, revised and redistributed (including commercially) as long as appropriate credit is given to the authors. If you remix, or modify the original version of this open textbook, you must redistribute all versions of this open textbook under the same license, CC BY-SA.

This is an adaptation of the original book: DJ Navarro (2018). *Learning statistics with R: A tutorial for psychology students and other beginners.* (Version 0.6). [ https://learningstatisticswithr.com/]( https://learningstatisticswithr.com/)

This is an adaptation of an adaption of an existing book. The original book:

> DJ Navarro (2018). *Learning statistics with R: A tutorial for psychology students and other beginners.* (Version 0.6). [ https://learningstatisticswithr.com/]( https://learningstatisticswithr.com/)

And the adapted book:

> Navarro DJ and Foxcroft DR (2022). learning statistics with jamovi: a tutorial for psychology students and other beginners. (Version 0.75). [Available from url: https://learnstatswithjamovi.com/]


# Transparency about AI use

I used AI to get a first translated draft of most text in this book. I used the R package [chores](https://simonpcouch.github.io/chores/) to run two AI system prompts on text I highlighted in the text editor.

The first prompt was a translation prompt, see [.chores/oversett-replace.md](.chores/oversett-replace.md). This produced abysmal Norwegian text, so I also ran a copy-editing prompt, see [.chores/spraakvask-replace.md](.chores/spraakvask-replace.md). I then edited the text manually. I think no paragraph of the book is pure AI translation, I always needed some manual cleaning, even when I wanted to keep the original content unchanged.

I used many models to try to find the best one. I used claude-3-7-sonnet, claude-sonnet-4, gpt-4o, gemini-2.0-flash and gemini-2.5-flash. Starting with gemini-2.5-flash and gpt-5, the initial Norwegian version was actually quite good. It seems claude-sonnet-4 has caught up somewhat to the others' Norwegian proficiency, also.

I spent less than 5 USD on translation and copy-editing.
