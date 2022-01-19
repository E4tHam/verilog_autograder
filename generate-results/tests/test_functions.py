#test_functions.py (lab01)

import unittest
from gradescope_utils.autograder_utils.decorators import weight


class TestFunctions(unittest.TestCase):
    def setUp(self):
        pass

    @weight(1)
    def test_and_gate(self):
        file = open("/autograder/diffs/and_gate.diff")
        data = file.read()
        file.close()
        self.assertEqual(data,"","")

    @weight(1)
    def test_or_gate(self):
        file = open("/autograder/diffs/or_gate.diff")
        data = file.read()
        file.close()
        self.assertEqual(data,"","")
