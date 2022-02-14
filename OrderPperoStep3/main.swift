//
//  main.swift
//  orderIcecreamStep3
//
//  Created by 정주호 on 10/02/2022.
//

import Foundation


func makeStickOfPpero(sticklonger : Int){
    for _ in 1...sticklonger{
        print(" | | ")
    }
}

func makeBodyOfPpero(body : String, topping : String){
    print(topping + body + topping)
}

func longerOfPpero(bodyLonger: Int, body: String, topping: String){
    if body == "***"{
        for _ in 1...bodyLonger{
            makeBodyOfPpero(body: body, topping: topping)
        }
    } else{
        for i in 1...bodyLonger{
            if i%2 != 0{
                print(" |0|")
            }else{
                print(" | |")
            }
        }
    }
}
func orderPpero(stickLonger: Int, bodyLonger: Int, body: String, topping: String){
    makeBodyOfPpero(body: body, topping: topping)
    longerOfPpero(bodyLonger: bodyLonger, body: body, topping: topping)
    makeStickOfPpero(sticklonger: stickLonger)
}

//first Ppero order
print("""
길이: 10
몸통: ***
토핑:
막대길이: 4
""" )

orderPpero(stickLonger: 4, bodyLonger: 10, body: "***", topping: " ")


//second Ppero order
print("""
길이: 12
몸통: ***
토핑: &
막대길이: 4
""" )
orderPpero(stickLonger: 4, bodyLonger: 12, body: "***", topping: "&")

//third Ppero order
print("""
길이: 12
몸통: ***
토핑: #
막대길이: 6
""" )
orderPpero(stickLonger: 6, bodyLonger: 12, body: "***", topping: "#")

//forth Ppero order
print("""
길이: 6
몸통: |0|
토핑:
막대길이: 4
""" )
orderPpero(stickLonger: 4, bodyLonger: 6, body: "| |", topping: " ")

//my own Ppero order
print("""
길이: 6
몸통: ±±±
토핑:!
막대길이: 4
""" )
orderPpero(stickLonger: 4, bodyLonger: 6, body: "***", topping: "!")
