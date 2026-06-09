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

Tests with pytest are important to ensure that our code works as expected.

@o ../tests/test_max_builtin.py @{
"""Test the max_builtin module."""

from buck_rogers import max_builtin

@< test-find-max-builtin-10 @>

@< test-find-max-builtin-5 @>

@}

\subsection{Test cases}

Is the max function working correctly? Let's find out.

@d test-find-max-builtin-5 @{
def test_find_max_builtin_five():
    """Test the find_max_builtin function."""
    # Arrange
    five = 5
    # Act & Assert
    assert max_builtin.find_max(3, five) == five
@}

Maybe we should also test with ten.
Also referred to as Smith's method \cite{smith2020example},
referencing is important.

@d test-find-max-builtin-10 @{
def test_find_max_builtin_ten():
    """Test the find_max_builtin function."""
    # Arrange
    ten = 10
    # Act & Assert
    assert max_builtin.find_max(ten, 2) == ten
@}

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