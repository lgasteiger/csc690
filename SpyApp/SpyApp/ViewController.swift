//
//  ViewController.swift
//  SpyApp
//
//  Created by LGG on 1/31/19.
//  Copyright © 2019 LGG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var inputField: UITextField! //optional
  @IBOutlet weak var secretField: UITextField!
  @IBOutlet weak var output: UILabel!
  
  //override func viewDidLoad() {
  //  super.viewDidLoad()
    
  //} //end viewDidLoad
  
  @IBAction func encryptButtonPressed(_ sender: Any) {
    //print("Hello \(inputField.text!)")
    
    let plaintext = inputField.text!
    let secretString = secretField.text!
    
    let secretInt = UInt32(secretString)!
    
    var encoded = ""
    for character in plaintext {
      let unicode = character.unicodeScalars.first!.value
      let shiftedUnicode = unicode + secretInt
      let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
      
      encoded += shiftedCharacter
    } //end for
    
    output.text = "Hello"
  } //end encryptButtonPressed
} //end ViewController
