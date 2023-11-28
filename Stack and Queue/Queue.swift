//
//  Queue.swift
//  Stack and Queue
//
//  Created by Amir Mahdi Abravesh on 11/19/23.
//

import Foundation

struct Queue {
  private var elements: [Int] = []

  mutating func enqueue(_ value: Int) {
    elements.append(value)
  }

  mutating func dequeue() -> Int? {
    guard !elements.isEmpty else {
      return nil
    }
    return elements.removeFirst()
  }

  var head: Int? {
    return elements.first
  }

  var tail: Int? {
    return elements.last
  }
}
