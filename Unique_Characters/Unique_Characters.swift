//
//  Unique_Characters.swift
//  Unique_Characters
//
//  Created by Andrew Lewis on 7/2/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class Unique_Characters{
    
    func startingPoint(){
        
        print("Please enter a string. This program will tell if it has all unique characters or not.")
        let userInput = getInput()
        let outPut = parseString(userInput: userInput)
        
        if outPut == false{
            print("The string has repeated characters in it.")
        }else{
            print("The string is composed of all unique characters")
        }
        
    }
    
    func parseString(userInput: String) -> Bool {
        var uniqueString = true
        for letters in userInput.indices{
            
            for characters in userInput.indices{
                if userInput[letters] == userInput[characters] && letters != characters {
                    uniqueString = false
                }
            }
        }
        
        return uniqueString
    }
    
    
    func getInput() -> String {
        // grab a handle to stdin
        let keyboard = FileHandle.standardInput
        
        // read data in the stream
        let inputData = keyboard.availableData
        
        // convert the data to a string
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        
        // remove newline characters
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}
