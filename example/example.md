---
title: Example Title
subtitle: Example Subtitle
author: Your Name Here
institute: your@email.here
date: \today
aspectratio: 169
header-includes:
 - '\usetheme{metropolis}'
 - '\setmonofont{Fantasque Sans Mono}'
 - '\renewenvironment{Shaded}{\footnotesize\linespread{0.9}}{}'
 - '\usepackage{fontawesome5}'
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Introduction

## Source Code

:::::::::::::: {.columns}
::: {.column width="50%"}
```c++
#include <iostream>

using namespace std;

int main()
{
  cout << "Hello, World!" << endl;
  return 0;
}
```
:::

. . .

::: {.column width="50%"}
```c++
#include <iostream>

int main()
{
  std::cout << "Hello, World!\n";
  return 0;
}
```
:::
::::::::::::::


## {.standout}

The code on the \alert{right is right}.
The code on the \alert{left is wrong}.

## Source Code

> When you show a good and a bad example side-by-side, make sure that the good
> example is always on the right hand side.
>
> \hfill Your humble narrator

# UML Diagrams

## UML Diagrams

:::::::::::::: {.columns}
::: {.column width="50%"}
```plantuml
skinparam backgroundColor transparent

Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
```
:::
::: {.column width="50%"}

Some Text here.

:::
::::::::::::::

## UML Diagrams

:::::::::::::: {.columns}
::: {.column width="50%"}
```plantuml
skinparam backgroundColor transparent

class Car
interface Driver

Driver - Car : drives >
Car *- Wheel : have 4 >
Car -- Person : < owns
```
:::
::: {.column width="50%"}

Some Text here.

:::
::::::::::::::


## {.standout}

\Huge\faGrinStars
