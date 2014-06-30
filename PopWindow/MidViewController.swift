//
//  MidViewController.swift
//  PopWindow
//
//  Created by Matteo Sartori on 26/06/14.
//  Copyright (c) 2014 Teo Sartori. All rights reserved.
//

import Cocoa
import QuartzCore

class MidViewController: NSViewController {

    @IBOutlet var midLabel: NSTextField
    
    init(coder: NSCoder!)  {
        super.init(coder: coder)
    }
    
    @IBAction func segmentAction(sender: NSSegmentedControl) {
        let splitController = parentViewController as? SplitViewController
        splitController?.togglePanel(sender.selectedSegment)
        
        // An example of animating the stringValue of a TextField
//        let kfa = CAKeyframeAnimation()
//        kfa.values = ["Teo", "Linda", "Karin", "Nugga"]
//        
//        midLabel.setAnimations(["stringValue":kfa])
//        midLabel.animator().stringValue = "Familien"
    }
    
}
