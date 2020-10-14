//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Дмитрий Кузнецов on 14/10/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var toggleTextbutton: UIButton!
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    // MARK: IB Actions
    @IBAction func clickButton() {
        if redView.alpha < 1, yellowView.alpha < 1, greenView.alpha < 1 {
            toggleTextbutton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            return
        } else {
            if redView.alpha == 1 {
                redView.alpha = 0.3
                yellowView.alpha = 1
                greenView.alpha = 0.3
                return
            }
            if yellowView.alpha == 1 {
                redView.alpha = 0.3
                yellowView.alpha = 0.3
                greenView.alpha = 1
                return
            }
            if greenView.alpha == 1 {
                redView.alpha = 1
                yellowView.alpha = 0.3
                greenView.alpha = 0.3
                return
            }
        }
    }
}

