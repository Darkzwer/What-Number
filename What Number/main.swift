//
//  main.swift
//  What Number
//
//  Created by Админ on 24.12.2020.
//

import Foundation

let message = [
    "start":"Введите вариант числа и нажмите Enter",
    "more":"Ваше число больше загаданного",
    "less":"Ваше число меньше загаданного",
    "win":"Вы угадали!"]
let randomNumber = String(arc4random_uniform(50))
var userNumber: String = ""
repeat {
    print(message["start"]!)
    let myNumber = readLine()
    userNumber = myNumber ?? ""
    if userNumber < randomNumber{
        print(message["less"]!)
    }else if userNumber > randomNumber{
        print(message["more"]!)
    }
} while userNumber != randomNumber

print(message["win"]!)
