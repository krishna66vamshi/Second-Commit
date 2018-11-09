//
//  ViewController.swift
//  HigherOrderFunctions
//
//  Created by vamshi on 08/11/18.
//  Copyright © 2018 vamshi. All rights reserved.
//

import UIKit

struct Profile{
    var name = ""
    var age = 20
    
}


class ViewController: UIViewController {
    
    
    /*  HIGHER ORDER FUNCTIONS
     
     1.SORT
     2.MAP
     3.FILTER
     4.REDUCE
 
 */
    
    
    let numArray = [0,4,3,9,5,2,6,7,8,1]

    override func viewDidLoad() {
        super.viewDidLoad()

        var namesArray = [Profile]()
        
        namesArray = [
        Profile(name: "vamsi", age: 20),
        Profile(name: "juhi", age: 19),
        Profile(name: "vamshi", age: 25)
        ]
        
        namesArray.append(Profile(name: "Pawan", age: 45))

        for indexpathdotrow in 0..<namesArray.count{
            print("namesArray is \(namesArray[indexpathdotrow])")
        }
        
        for indexpathdotrow in 0..<namesArray.count{
            print("namesArrayAge is \(namesArray[indexpathdotrow].age)")
        }
        
        
        for indexpathdotrow in 0..<namesArray.count{
            print("namesArrayName is \(namesArray[indexpathdotrow].name)")
        }
        
        
      //  sort()
      //  map()
        
        //filter()
        
      //  reduce()
        
       // flatMap()
        //chaining()
        //compactMap()
    }

    func sort(){
        
         /*
 
         Sort -->> Keeping Things In an Order i.e It will rearrange a given array i.e It will compulsary returns Full the given array with some rearrangements But It will not eats an Array Unlike Filter
         
         //  Sort,Map --->>> Compulsory Returns an array by rearranging it "It Will Not Eat UNLIKE FILTER,REDUCE"
         
        */
        
        let ascendingOrder = numArray.sorted()
        print("ascendingOrder is \(ascendingOrder)")
        //ascendingOrder is [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        let descendingOrder = numArray.sorted { (a, b) -> Bool in
            return a>b
        }
        
        // let descendingOrder = numArray.sorted { $0 > $1 }
        
        
        print("descendingOrder is \(descendingOrder)")
        //descendingOrder is [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
        
        
        let evenFirstSorted = numArray.sorted { (a, b) -> Bool in
            return a<6
        }
        print("evenFirstSorted is \(evenFirstSorted)")
        
        let xyz = numArray.filter { (a) -> Bool in
            return a % 2 == 0
        }
        print("xyz is \(xyz)")
    }
    
    
    
    
    func map(){
        
         /*
                    Loops over a ARRAY and applies the same operation to each element in the ARRAY.
         */
        
        
        let numbersConvertedString = numArray.map { (a) -> String in
            return  String(a)
        }

      //  let numbersConvertedString = numArray.map { String($0) }
        print("numbersConvertedString is \(numbersConvertedString)")
        
        //numbersConvertedString is ["0", "4", "3", "9", "5", "2", "6", "7", "8", "1"]

        
    }
    
    
    func filter(){
        
        /*        FILTER Means Filtering an array [ JUST like WATER ] Definitely some PORTION is Filtered Based on Condition
                      Loops over a ARRAY and returns an array that contains elements that meet a condition.
         
                     It will Filters an array and returns an array based on the condition
         */
        
        
        
        let numLessThan6 = numArray.filter { (a) -> Bool in
            return a<6
        }
        
      //  let numLessThan6 = numArray.filter { $0<6 }
        print("numLessThan6 is \(numLessThan6)")

        //numLessThan6 is [0, 4, 3, 5, 2, 1]

        
        
        
    }
    
    func reduce(){
        
                /*
                It will reduce given array and returns a "SINGLE VALUE"
                 Combines all items in a ARRAY to create a single value.
         
               */




        let sumOfAllNumbers = numArray.reduce("") { (result, a) -> String in
            
            print("result is \(result)")
            print("a is \(a)")
            print("result + String(a) is \(result + String(a))")


            return result + String(a)
        }
        print("sumOfAllNumbers is \(sumOfAllNumbers)")
        
        //sumOfAllNumbers is 0439526781

        
        
        let sum = numArray.reduce(0) { (result, a) -> Int in
            return result + a
        }
        
        // let sum = numArray.reduce(0, {$0 + $1})

        print("sum is \(sum)")
        
       // sum is 45

        
    }
    
    func flatMap(){
        
        let arr1 = [[2,4,5,6],[1,11,10,13]]
        
        let myFlatmap = arr1.flatMap { $0 }
        
        print("myFlatmap",myFlatmap)
    }
    
    func compactMap(){
        
        let arr = ["hi",nil,"juhi",nil,"how","are","you"]
        
      let compactMap =   arr.compactMap{ $0 }
        print("compactmap",compactMap)
    }
    
    func chaining(){
        
        let arr1 = [[9,1,2,4,5,6,0],[7,0,1,11,10,13]]
        
        let myChaining = arr1.flatMap { $0 }.filter{ $0 > 2 }.reduce(0, { $0 + $1 })
        let myChaining2 = arr1.flatMap({ $0 }).sorted()
        
        
        print("myChaining",myChaining)
        print("myChaining2",myChaining2)

        
        
    }
    
    
    
    
}

