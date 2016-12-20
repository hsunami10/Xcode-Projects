//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//superclass
class Person {
    
    var Name:String = "Inital Name"
    
    init() {
        
    }
    
    func Walk() {
        print("I am walking")
    }
}

var a = Person()
a.Name
a.Name = "Michael"
a.Walk()

//subclass - has all of superclass's attributes
class Superhuman : Person {
    
    var AlterEgoName:String = "Clark"
    
    override init() {
        
        //need to call initializer first to override instances
        super.init()
        super.Name = "Super Duper"
    }
    
    func Fly() {
        print("I am flying")
    }
    
    //create a different walk method
    override func Walk() {
        print("I am walking really fast")
        
        //can also run both by using super - super means the super/parent class
        super.Walk()
    }
}

var b = Superhuman()
b.Name
b.Walk()
b.Fly()
b.AlterEgoName

