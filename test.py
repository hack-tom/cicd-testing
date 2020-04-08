# testing functions

import unittest
import main

if __name__ == "__main__":
    # test 1
    assert main.add(1, 2) == 3
    print("Success, add(1, 2) == 3")
    
    # test 2
    assert main.add(1, 4) != 3
    print("Success, add(1, 4) != 3")

    # test 3
    assert main.square(3) == 9
    print("Success, square(3) == 9")

    # test 4
    assert main.square(3) != 8
    print("Success, square(3) != 8")