# ~/~ begin <<docs/max_by_math.md#tests/test_max_math.py>>[init]
"""Tests for the max_math module."""

from buck_rogers import max_math


# ~/~ begin <<docs/max_by_math.md#test_ten>>[init]
def test_find_max_math_ten():
    """Test the find_max_math function."""
    # Arrange
    ten = 10
    # Act & Assert
    assert max_math.find_max_math(ten, 2) == ten


# ~/~ end
# ~/~ begin <<docs/max_by_math.md#test_five>>[init]


def test_find_max_math_five():
    """Test the find_max_math function."""
    # Arrange
    five = 5
    # Act & Assert
    assert max_math.find_max_math(3, five) == five


# ~/~ end
# ~/~ end
