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
            // Toggle the collapsed state
            NSAnimationContext.runAnimationGroup({ context in
                // special case for the left panel
                if panelID == 0 {
                    var windowFrame = self.view.window.frame
                    let panelWidth = splitViewItem.viewController.view.frame.width
                    
                    if splitViewItem.collapsed {
                        windowFrame.origin.x -= panelWidth
                        windowFrame.size.width += panelWidth
                    } else {
                        windowFrame.origin.x += panelWidth
                        windowFrame.size.width -= panelWidth
                    }
//                    self.view.window.setFrame(windowFrame, display: true, animate: true)
                    self.view.window.animator().setFrame(windowFrame, display: true)
//                    self.view.window.animator().setFrameOrigin(windowFrame.origin);
                }
                splitViewItem.animator().collapsed = !splitViewItem.collapsed

                }, completionHandler: nil)

        }
    }
    
}
