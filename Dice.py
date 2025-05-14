#!/usr/bin/python3
from random import randint

def roll(string):
    params = string.split("d")
    if len(params) > 2:
        raise SyntaxError("Too many dicks.")
    else:
        the_roll = 0
        for i in range(int(params[0])):
            the_roll += randint(1, int(params[1]))
        print('\033[35m ', the_roll)
    return

if __name__ == "__main__":
    while True:
        cmd = input('\033[36m')
        if cmd == "q":
            exit()
        else:
            roll(cmd)
