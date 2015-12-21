//
//  ViewController.swift
//  Calculator
//
//  Created by Dace Willmott on 12/17/15.
//  Copyright © 2015 Dace Willmott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var display: UILabel!
  
  var userIsInTheMiddleOfTypingNumber = false
  
  @IBAction func appendDigit(sender: UIButton) {
    let digit = sender.currentTitle!
    if userIsInTheMiddleOfTypingNumber {
      display.text = display.text! + digit
    } else {
      display.text = digit
      userIsInTheMiddleOfTypingNumber = true
    }
    print(digit)
    
  }

//  @IBAction func operate(sender: UIButton) {
//    let operation = sender.currentTitle!
////
////    if userIsInTheMiddleOfTypingNumber {
////      enter()
////    }
//
//    switch operation {
//    case "×":
//      if operandStack.count >= 2 {
//        displayValue = operandStack.removeLast() * operandStack.removeLast()
//        enter()
//      }
//      
//      //      case "÷":
//      //      case "+":
//      //      case "-":
//    default:
//      break
//    }
//  }

  var operandStack = Array<Double>()
  
  @IBAction func enter(sender: UIButton) {
    userIsInTheMiddleOfTypingNumber = false
    operandStack.append(displayValue)
    print(operandStack)
  }
  
  
  var displayValue: Double {
    get {
      return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
    }
    set {
      display.text = "\(newValue)"
      userIsInTheMiddleOfTypingNumber = false
    }
  }
}

