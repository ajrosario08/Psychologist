//
//  ViewController.swift
//  Psychologist
//
//  Created by Anthony Rosario on 11/2/15.
//  Copyright © 2015 Anthony Rosario. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController 
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController!
        }
            if let hvc = destination as? HappinessViewController {
                if let identifier = segue.identifier {
                    switch identifier {
                        case "sad": hvc.happiness = 0
                        case "happy": hvc.happiness = 100
                        default: hvc.happiness = 50
                    }
                }
            }
    }


}

