//
//  SplitViewController.swift
//  PopWindow
//
//  Created by Matteo Sartori on 26/06/14.
//  Copyright (c) 2014 Teo Sartori. All rights reserved.
//

import Cocoa

class SplitViewController: NSSplitViewController {

    func togglePanel(_ panelID: Int) {
        let splitViewItem = self.splitViewItems[panelID]
            
        // Anchor the appropriate window edge before letting the splitview animate.
        let anchor: NSLayoutAttribute = (panelID == 0) ? .trailing : .leading

        self.view.window?.setAnchorAttribute(anchor, for: .horizontal)
        
        splitViewItem.animator().isCollapsed = !splitViewItem.isCollapsed
        
    }
    
}
