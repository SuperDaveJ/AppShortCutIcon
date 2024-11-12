//
//  ViewController.swift
//  AppShortcutIcon
//
//  Created by Dave Johnson on 10/24/17.
//  Copyright © 2017 Dave Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Force Touch Quick Action Shortcut Menu
        
        UIApplication.shared.shortcutItems = []
        
        let mileageTrackerActive = true
        let timeClockActive = true
        
        let bundleId = Bundle.main.bundleIdentifier
        let clockInIcon = UIApplicationShortcutIcon(type: .time)
        let mileageTrackPlayIcon = UIApplicationShortcutIcon(type: .play)
        let mileageTrackPauseIcon = UIApplicationShortcutIcon(type: .pause)
    
        let shortcutItem1 = UIMutableApplicationShortcutItem(type: bundleId!+".ClockIn", localizedTitle: "Time Clock: Punch In", localizedSubtitle: "", icon: clockInIcon)
        let shortcutItem2 = UIMutableApplicationShortcutItem(type: bundleId!+".ClockOut", localizedTitle: "Time Clock: Punch Out", localizedSubtitle: "", icon: clockInIcon)
        let shortcutItem3 = UIMutableApplicationShortcutItem(type: bundleId!+".StartTrip", localizedTitle: "Mileage Tracker: Start Trip", localizedSubtitle: "", icon: mileageTrackPlayIcon)
        let shortcutItem4 = UIMutableApplicationShortcutItem(type: bundleId!+".StopTrip", localizedTitle: "Mileage Tracker: Pause Trip", localizedSubtitle: "", icon: mileageTrackPauseIcon)
        
        if timeClockActive {
            UIApplication.shared.shortcutItems?.append(shortcutItem1)
            UIApplication.shared.shortcutItems?.append(shortcutItem2)
        }
        
        if mileageTrackerActive {
            UIApplication.shared.shortcutItems?.append(shortcutItem3)
            UIApplication.shared.shortcutItems?.append(shortcutItem4)
        }
        
        
        
        //UIApplication.shared.shortcutItems = [shortcutItem1, shortcutItem2, shortcutItem3, shortcutItem4]
        
        // End Force Touch Quick Action Shortcut Menu
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

