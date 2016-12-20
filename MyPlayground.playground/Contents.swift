//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//create Person class
class Person {
    
    //property of class
    var Name:String = "Initial Name"
    
    init () { //initializer, all classes need this, main method, implementation
        print("New person initialized")
        
        //self - call a method you own yourself
        self.sayCheese()
    }
    
    //create a method
    func sayCheese () {
        print("Cheese")
    }
}

//access property
var firstPerson = Person();
firstPerson.Name
//change property
firstPerson.Name = "Michael"
firstPerson.Name

var secondPerson = Person();
secondPerson.Name = "Bob"



//create a new object from Person class
var a = Person()

//call method/function
//a.sayCheese()




var message = "Hello World"

print(message)

var c:Int = 5

var b:Int = 10

var total:Int = c + b

print(total)

if(total < 20) {
    print("hello")
}
