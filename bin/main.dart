import 'dart:math';

// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14

int incrementToTop(List list){
  int count = 0;
  list.sort();
  int maximum = list.last;
  list.forEach((element)=> count = count +(maximum - element));
  return count;
}

// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5

int count(List list) {
  Map blackjack = {
    2: 1,
    3: 1,
    4: 1,
    5: 1,
    6: 1,
    10: -1,
    "J": -1,
    "Q": -1,
    "K": -1,
    "A": -1,
    7:0,
    8:0,
    9:0,
  };
  int count = 0;
  list.forEach((element) => count = count + blackjack[element]);
  return count;
}
// Challenge 3
// Write a test case each for previous two functions you wrote

main() {

  print(incrementToTop([3, 4, 5]));
  print(incrementToTop([4, 3, 4]));
  print(incrementToTop([3, 3, 3]));

  print(count(["A", "A", "K", "Q", "Q", "J"]));
}
