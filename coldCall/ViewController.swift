//
//  ViewController.swift
//  coldCall
//
//  Created by Erick Lui on 7/5/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var currentRandom: Int?
  let names = ["Uyanga", "Courtney", "Jay", "Bryant", "Jimmy"]
  
  @IBOutlet weak var number: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBAction func callButtonPresssed(_ sender: UIButton) {
    var random = getRandom()
    while currentRandom == random {
      random = getRandom()
    }
    currentRandom = random
    nameLabel.text = names[currentRandom!]
    
    let num = getRandom() + 1
    if num <= 2 {
      number.textColor = UIColor.red
    } else if num <= 4 {
      number.textColor = UIColor.orange
    } else {
      number.textColor = UIColor.green
    }
    number.text = String(num)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    currentRandom = getRandom()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  func getRandom() -> Int {
    return Int(arc4random_uniform(UInt32(names.count)))
  }
}

