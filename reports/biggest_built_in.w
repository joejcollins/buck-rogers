\documentclass[a4paper,11pt]{article}
\usepackage{listings}
\lstset{language=Python}
\usepackage{hyperref}
\title{Exploratory Data Analysis}
\date{\today}
\begin{document}
\author{Joe Bloggs}
\maketitle{}

\section{Using the Max Function}

This document presents an exploratory data analysis.


@o ../src/buck_rogers/max_builtin.py @{
"""Max function."""


def find_max(a, b):
    """Return the greater of two values using the built-in max function."""
    return max(a, b)
@}

\section{Testing the Max Function}

@o ../tests/test_max_builtin.py @{
"""Test the max_builtin module."""

from buck_rogers import max_builtin


def test_find_max_builtin():
    """Test the find_max_builtin function."""
    # Arrange
    five = 5
    ten = 10
    # Act & Assert
    assert max_builtin.find_max(3, five) == five
    assert max_builtin.find_max(ten, 2) == ten
@}


As shown in \cite{smith2020example}, referencing is important.
Books like \cite{doe2019sample} and conference papers
such as \cite{johnson2018conference} are also useful.
Miscellaneous sources can be cited as in \cite{random2021misc}.


\section*{Files}
@f

\section*{Scraps}
@m

\bibliographystyle{plain}
\bibliography{biggest_built_in}

\end{document}