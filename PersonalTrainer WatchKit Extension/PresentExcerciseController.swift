//
//  PresentExcerciseController.swift
//  PersonalTrainer
//
//  Created by appacmp on 15/08/15.
//  Copyright (c) 2015 Marta Wozniak. All rights reserved.
//

import WatchKit
import Foundation


class PresentExcerciseController: WKInterfaceController {
    @IBOutlet weak var excerciseImage: WKInterfaceImage!

    @IBOutlet weak var wellDoneLabel: WKInterfaceLabel!
    
    var excerciseTime = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if let dictionary = context as? NSDictionary,
            excercise = dictionary["excercise"] as? String,
            repeats  = dictionary["repeats"] as? Int
        {
                excerciseImage.setImageNamed(excercise)
                excerciseImage.startAnimatingWithImagesInRange(NSMakeRange(0, 17), duration: 2, repeatCount: repeats)
                excerciseTime = 2 * repeats
            //excerciseTime = 2
        }
        var timer = NSTimer.scheduledTimerWithTimeInterval(Double(excerciseTime), target: self, selector: Selector("endOfExcercise"), userInfo: nil, repeats: false)

        
    }
    func endOfExcercise(){
        if excerciseTime > 0{
            wellDoneLabel.setText("Well done!")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
