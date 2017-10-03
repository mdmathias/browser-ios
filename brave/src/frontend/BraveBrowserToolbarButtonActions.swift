//
//  BraveBrowserButtonActions.swift
//  Client
//
//  Created by Matthew Mathias on 10/2/17.
//  Copyright © 2017 Mozilla. All rights reserved.
//

import UIKit

/// A protocol listing methods for toolbars to implement that will
/// attach handlers to various button actions.
protocol BraveBrowserToolbarButtonActions {
    /// Response to button tap where user requests new tab.
    func respondToNewTab(action: UIAlertAction)
    
    /// Responds to button tap where user requests a new private tab.
    func respondToNewPrivateTab(action: UIAlertAction)
}

// MARK: - Default Implementations
extension BraveBrowserToolbarButtonActions {
    func respondToNewTab(action: UIAlertAction) {
        getApp().tabManager.addTabAndSelect()
    }
    
    func respondToNewPrivateTab(action: UIAlertAction) {
        getApp().browserViewController.switchBrowsingMode(toPrivate: true)
    }
}
