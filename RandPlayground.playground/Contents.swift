//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//random function from 0-12
arc4random_uniform(13)

//random function from 1-13
arc4random_uniform(13) + 1

//%@ is the wild card character -> it's where the second parameter is substituted in to
var randomNumber = arc4random_uniform(13) + 1
String(format: "card%i", randomNumber)
