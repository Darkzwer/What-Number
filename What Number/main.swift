//
//  main.swift
//  What Number
//
//  Created by Админ on 24.12.2020.
//

import Foundation

let randomNumber = UInt8(arc4random_uniform(50))
print ("Компьютер загадает число вам необходимо угадать его.")
var myNumber: String?
repeat {
    print ("Введите ваш вариант и нажмите Enter")
    myNumber = readLine()
    if (UInt8(myNumber!) == randomNumber){
        print("Вы угадали")
    } else if (UInt8(myNumber!)! > randomNumber){
        print("Ваше число больше")
    } else if (UInt8(myNumber!)! < randomNumber){
        print("Ваше число меньше")
    }
} while randomNumber != UInt8(myNumber!)
