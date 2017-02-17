//
//  ViewController.swift
//  SettingsDemo
//
//  Created by Kameron Haramoto on 2/14/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(UserDefaults.standard.object(forKey: "volume") != nil)
        {
            let volume = UserDefaults.standard.integer(forKey: "volume")
            VolumeLabel.text = "Volume: \(volume)"
        }
        else{
            VolumeLabel.text = "Volume: 20"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var VolumeLabel: UILabel!

}

