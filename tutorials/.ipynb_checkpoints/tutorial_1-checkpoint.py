# step function - also known as heavyside function as the threshold equals zero

import matplotlib.pyplot as plt

def decision( sum ):
    if sum >= 1:
        return 1
    else:
        return 0