//
//  Stack.swift
//  Stack and Queue
//
//  Created by Amir Mahdi Abravesh on 11/19/23.
//

import Foundation

struct Stack {
    private var items: [Int] = []
    private var count = 0
    
    func peek() -> Int {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    
    mutating func pop() -> Int {
        if count <= 0 {
            fatalError("This stack is empty.")
        }
        count -= 1
        return items.removeFirst()
        
    }
    
    mutating func push(_ element: Int) {
        items.insert(element, at: 0)
        count += 1
    }
    
    func isEmpty() -> Bool {
        if count == 0 {
            return true
        } else if count < 0 {
            fatalError("index out of range")
        } else {
            return false
        }
    }
}
