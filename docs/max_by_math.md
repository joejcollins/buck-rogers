# Max by Math

- *By Big Joe*
- *June 2026*

## Just Maths

What about just using maths to solve the problem.

``` {.python file="src/buck_rogers/max_math.py"}
"""Max value of two numbers."""

def find_max_math(a, b):
    """Compute the maximum of two integers using arithmetic operations only."""
    return (a + b + abs(a - b)) // 2
```

## Tests

But does it work.

``` {.python file="tests/test_max_math.py"}
"""Tests for the max_math module."""

from buck_rogers import max_math


<<test_ten>>
<<test_five>>
```

This is the second test.

``` {.python #test_ten}
def test_find_max_math_ten():
    """Test the find_max_math function."""
    # Arrange
    ten = 10
    # Act & Assert
    assert max_math.find_max_math(ten, 2) == ten


```

And this is the first.


``` {.python #test_five}
def test_find_max_math_five():
    """Test the find_max_math function."""
    # Arrange
    five = 5
    # Act & Assert
    assert max_math.find_max_math(3, five) == five


```

