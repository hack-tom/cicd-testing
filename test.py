# testing functions

import unittest
import main

if __name__ == "__main__":
    testcount = 0
    try:
        # test 1
        testcount += 1
        assert main.add(1, 2) == 3
        print("Success, add(1, 2) == 3")
        
        # test 2
        testcount += 1
        assert main.add(1, 4) != 3
        print("Success, add(1, 4) != 3")

        # test 3
        testcount += 1
        assert main.square(3) == 9
        print("Success, square(3) == 9")

        # test 4
        testcount += 1
        assert main.square(3) != 8
        print("Success, square(3) != 8")

    except:
        #catch
        print("Failed test %d." % testcount)
    
