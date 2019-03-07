//
//  ViewController.swift
//  CatOrDogQuiz
//
//  Created by Nikolai Press on 3/4/19.
//  Copyright © 2019 Nikolai Press. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var competitive:Int = 3
    var extroverted:Int = 3
    var tradtional:Int = 3
    var relaxed:Int = 3
    var sociable:Int = 3
    var country:Int = 3
    var total:Int = 3
    
    
    @IBOutlet weak var myTotal: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func submit(_ sender: Any) {
        
        total = competitive + extroverted + tradtional + relaxed + sociable + country
        if(total <= 10) {
            myTotal.text = "You are a dog lover!"
            myImage.image = UIImage(named: "dogperson")
            
        }
        else if(total > 10 && total <= 20){
            myTotal.text = "You are a cat and dog lover!"
            myImage.image = UIImage(named: "catanddogperson")
            
        }
        else {
            myTotal.text = "You are a cat lover!"
            myImage.image = UIImage(named: "catperson")
            
    }
    }
        
    
    @IBAction func compSlider(_ sender: UISlider) {
    competitive = Int(sender.value)
    }
    
    @IBAction func extroSlider(_ sender: UISlider) {
        extroverted = Int(sender.value)
    }
    
    
    @IBAction func tradSlider(_ sender: UISlider) {
        tradtional = Int(sender.value)
    }
    
    
    @IBAction func relaxSlider(_ sender: UISlider) {
        relaxed = Int(sender.value)
    }
    
    
    @IBAction func socSlider(_ sender: UISlider) {
        sociable = Int(sender.value)
    }
    
    
    @IBAction func counSlider(_ sender: UISlider) {
        country = Int(sender.value)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

