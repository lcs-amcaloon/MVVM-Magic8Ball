//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

// Make an instance of the view model (to store questions and advice)
var advisor = AdviceViewModel()

// Program name
print("MAGIC 8 BALL")
print("============")

// Ask for user's question
print("""
NOTE: Questions should be phrased such
      that they can be answered with a
      yes or no response.

""")
print("What is your question? ")
// Get input as a non-optional String
let input = readLine()!

// Print out their question
print("")
print("You said: \(input)")
print("")

// Provide the advice by making an instance of the Magic8Ball type and then getting a response
print(advisor.provideResponseFor(givenQuery: input))

while true {
    print("")
    print("See history of advice given? (Y/N)")
    let selection = readLine()!
    if selection == "Y" {
        
        print("")
        print("History")
        print("-------")
        
        for session in advisor.sessions {
            
            print(session.question)
            print(session.response)
            print("")
            
        }
        break
        
    } else if selection == "N" {
        break
    }
    
}

while true {
    print("more advice? (Y/N)")
    let selection = readLine()!
    if selection == "Y" {
        break
    } else if selection == "N" {
        exit(0)
    }
}
