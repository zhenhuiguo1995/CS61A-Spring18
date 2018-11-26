# Hog

## Project1 for CS61A

### Introduction

In this project, students will develop a simulator and multiple strategies for the dice game Hog.  *Control statements* and *higher-order functions* will be used together.

In Hog, two players alternate turns trying to be the first to end a turn with at least 100 total points. On each turn, the current player chooses some number of dice to roll, up to 10. That player's score for the turn is the sum of the dice outcomes.

### Rules for Hog

#### Pig Out:

- If any of the dice outcomes is a 1, the current player's score for the turn is 1.

#### Free Bacon:

- A player who chooses to roll zero dice scores 2 more than the absolute difference between the digits in the opponent's total score.

#### Swine Swap:

- After points for the turn are added to the current player's score, if both scores are larger than 1 and either one of the scores is a positive integer multiple of the other, then the two scores are swapped

A graphic user interface is also provided for this game.

![](https://camo.githubusercontent.com/a55042966e636f929c88c4b6cae762260e5f0828/687474703a2f2f696e73742e656563732e6265726b656c65792e6564752f7e63733631612f666131372f70726f6a2f686f672f696d616765732f646965352e676966)