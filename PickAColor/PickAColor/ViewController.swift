//
//  ViewController.swift
//  PickAColor
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colorP : UIColor? = UIColor(named: "green")
    
    func userDidChooseColor(color: UIColor) {
        dismiss(animated: true, completion: nil)
        view.backgroundColor = color
        
        let alert = UIAlertController(title: "Alert", message: "Voulez-vous garder cette couleur ?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "oui", style: .default, handler: { action in
            self.colorP = color
        }))
        alert.addAction(UIAlertAction(title: "non", style: .default, handler: { action in
            UIView.animate(withDuration: 0.5, animations: {self.view.alpha = 0.2}, completion:{ (finished) -> Void in
            self.view.backgroundColor = self.colorP
                UIView.animate(withDuration: 0.5, animations: {self.view.alpha = 1.0}, completion:{ (finished) -> Void in
                })
            })

        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pickColor"
        {
            if let destinationVC = segue.destination as? ColorPickerViewController {
                destinationVC.completionHandler = {(color) in
                    self.userDidChooseColor(color: color)
                }
            }
        }
    }

}

