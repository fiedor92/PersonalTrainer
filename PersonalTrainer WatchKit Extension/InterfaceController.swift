//
//  InterfaceController.swift
//  PersonalTrainer WatchKit Extension
//
//  Created by Marta Wozniak on 15/08/15.
//  Copyright (c) 2015 Marta Wozniak. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var exceriseCount = 0

    @IBOutlet weak var exceriseLabel: WKInterfaceLabel!
    @IBOutlet weak var image: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //image.startAnimatingWithImagesInRange(NSMakeRange(0, 17), duration: 2, repeatCount: 2)
    }
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func stopAnimation() {
        image.stopAnimating()
    }
    
    @IBAction func exceriseCounter(value: Float) {
        exceriseCount = Int(value)
        exceriseLabel.setText("\(exceriseCount) repeats")
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if(segueIdentifier == "crunchesSegway"){
            return ["excercise": "crunch", "repeats": exceriseCount]
        }
        else {
            return ["excercise": "twist", "repeats": exceriseCount]
        }
    }
}

