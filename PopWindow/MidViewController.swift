//
//  MidViewController.swift
//  PopWindow
//
//  Created by Matteo Sartori on 26/06/14.
//  Copyright (c) 2014 Teo Sartori. All rights reserved.
//

import Cocoa
import QuartzCore
import CoreMedia
import AVFoundation

class MidViewController: NSViewController {

    @IBOutlet var midLabel: NSTextField!

    var theEngine:AVAudioEngine
    
    required init(coder: NSCoder!)  {
        theEngine = AVAudioEngine()
        super.init(coder: coder)
    }
    
    @IBAction func segmentAction(sender: NSSegmentedControl) {
        let splitController = parentViewController as? SplitViewController
        splitController?.togglePanel(sender.selectedSegment)
        
    }
    
}
