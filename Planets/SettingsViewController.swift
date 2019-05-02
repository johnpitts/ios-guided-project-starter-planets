//
//  SettingsViewController.swift
//  Planets
//
//  Created by Paul Solt on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}

class SettingsViewController: UIViewController {
    //static let key = "shouldShowPlutoKey"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //String.shouldShowPlutoKey
        
        updateViews()
    }
    
    private func updateViews() {
        
        // TODO: update the switch based on saved data
//        shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: "sHOWPlutoKey")
//        shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: String.shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        
        // TODO: update the saved data using UserDefaults
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
        
    }
    
    @IBOutlet var shouldShowPlutoSwitch: UISwitch!
}
