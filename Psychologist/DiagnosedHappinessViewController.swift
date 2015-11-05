//
//  DiagnosedHappinessViewController.swift
//  Psychologist
//
//  Created by Anthony Rosario on 11/4/15.
//  Copyright © 2015 Anthony Rosario. All rights reserved.
//

import UIKit

class DiagnosedHappinessViewController: HappinessViewController {
    
    override var happiness: Int {
        didSet {
            diagnosticHistory += [happiness]
        }
    }

    private let defaults = NSUserDefaults.standardUserDefaults()
    
    var diagnosticHistory: [Int] {
        get { return defaults.objectForKey(History.DefaultsKey) as? [Int] ?? [] }
        
        set { defaults.setObject(newValue, forKey: History.DefaultsKey) }
    }
    
    private struct History {
        static let SegueIdentifier = "Show Diagnostic History"
        static let DefaultsKey = "DiagnosedHappinessViewController.History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.SegueIdentifier:
                if let tvc = segue.destinationViewController as? TextViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            default: break
            }
        }
    }
}
