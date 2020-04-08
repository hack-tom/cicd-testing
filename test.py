# testing functions

import unittest
import main

class testFuncs(unittest.TestCase):
    def addTest(self):
        self.assertEqual(add(3, 4), 7)
    
    def squareTest(self):
        self.assertEqual(square(3), 9)
