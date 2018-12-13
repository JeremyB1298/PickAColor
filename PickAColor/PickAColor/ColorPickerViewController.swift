//
//  ColorPickerViewController.swift
//  PickAColor
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

protocol ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor)
}

class ColorPickerViewController: ViewController {

    var delegate: ColorPickerViewDelegate? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ButtonPressedGreen(_ sender: UIButton) {
        delegate?.userDidChooseColor(color: ColorAsset.green.color)
    }
    @IBAction func ButtonPressedPurple(_ sender: Any) {
    delegate?.userDidChooseColor(color: ColorAsset.purple.color)
    }
    @IBAction func ButtonPressedOrange(_ sender: Any) {
    delegate?.userDidChooseColor(color: ColorAsset.orange.color)
    }
    
    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

