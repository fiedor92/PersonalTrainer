//
//  AnimationController.swift
//  PersonalTrainer
//
//  Created by appacmp on 15/08/15.
//  Copyright (c) 2015 Marta Wozniak. All rights reserved.
//

import Foundation
import WatchKit


class AnimationController: WKInterfaceController {
    @IBOutlet weak var animation: WKInterfaceImage!
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if(segueIdentifier == "crunchesSegway"){
            animation.startAnimatingWithImagesInRange(<#imageRange: NSRange#>, duration: <#NSTimeInterval#>, repeatCount: <#Int#>)
            animation.startAnimatingWithImagesInRange(NSMakeRange(1, 17) duration: 2, repeatCount: 3)
        }
        else if (segueIdentifier == "twistsSegway"){
            
        }
    }

}