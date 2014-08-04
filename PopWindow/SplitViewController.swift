//
//  SplitViewController.swift
//  PopWindow
//
//  Created by Matteo Sartori on 26/06/14.
//  Copyright (c) 2014 Teo Sartori. All rights reserved.
//

import Cocoa

class SplitViewController: NSSplitViewController {

    func togglePanel(panelID: Int) {
        if let splitViewItem = self.splitViewItems[panelID] as? NSSplitViewItem {
            
            // Anchor the appropriate window edge before letting the splitview animate.
            let anchor: NSLayoutAttribute = (panelID == 0) ? .Trailing : .Leading

            self.view.window?.setAnchorAttribute(anchor, forOrientation: .Horizontal)
            
            splitViewItem.animator().collapsed = !splitViewItem.collapsed
        }
    }
    
}
