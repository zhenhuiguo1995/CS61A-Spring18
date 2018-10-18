"""
This is a minimal contest submission file. You may also submit the full
hog.py from Project 1 as your contest entry.

Only this file will be submitted. Make sure to include any helper functions
from `hog.py` that you'll need here! For example, if you have a function to
calculate Free Bacon points, you should make sure it's added to this file
as well.

Don't forget: your strategy must be deterministic and pure.
"""

TEAM_NAME = '' # Change this line!

def final_strategy(score, opponent_score):
    """
    final_strategy returns the number of dices that the player should roll
    the number of dices the player should roll = 
    the number of points the player will get by 
    1. calling the max_average_point and max_number_dice function 
    2. calling the free bacon if there is an benificial exchange
    3. calling the time trot always if a player could have another turn //this is of higher priority
    """
    return 5
