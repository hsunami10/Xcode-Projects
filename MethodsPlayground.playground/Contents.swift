//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String
    var Age:Int
    
    init() {
        
        self.Name = "Initial Name"
        self.Age = 10
    }
    
    //parameters for method -> void method
    func UpdateNameAndAge(nameNew:String, ageNew:Int) {
        
        self.Name = nameNew
        self.Age = ageNew
    }
    
    //return an integer
    func IncreaseAge(ageToIncreaseBy:Int) -> Int {
        
        self.Age += ageToIncreaseBy
        return self.Age
    }
    
    //class/type method
    class func AvgAge() -> Int {
        
        return 50
    }
}

//person object
var a = Person();
a.UpdateNameAndAge("Michael", ageNew: 15)
a.Name
a.Age

//increase age by 5
var newAge = a.IncreaseAge(5)
print(newAge)

//call class method
var c = Person.AvgAge()