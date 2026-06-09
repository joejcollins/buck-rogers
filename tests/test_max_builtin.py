
"""Test the max_builtin module."""

from buck_rogers import max_builtin


def test_find_max_builtin_ten():
    """Test the find_max_builtin function."""
    # Arrange
    ten = 10
    # Act & Assert
    assert max_builtin.find_max(ten, 2) == ten



def test_find_max_builtin_five():
    """Test the find_max_builtin function."""
    # Arrange
    five = 5
    # Act & Assert
    assert max_builtin.find_max(3, five) == five


