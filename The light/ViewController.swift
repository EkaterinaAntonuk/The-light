//
//  ViewController.swift
//  The light
//
//  Created by Ekaterina Kuznetsova on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        if isLightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
        
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUI()
    }
}

