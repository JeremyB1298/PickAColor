//
//  ViewController.swift
//  PickAColor
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor) {
        dismiss(animated: true, completion: nil)
        view.backgroundColor = color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pickColor"
        {
            if let destinationVC = segue.destination as? ColorPickerViewController {
                destinationVC.delegate = self
            }
        }
    }

}

