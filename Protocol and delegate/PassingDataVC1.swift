//
//  PassingDataVC1.swift
//  Protocol and delegate
//
//  Created by Arturs Vitins on 19/05/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class PassingDataVC1: UIViewController {

    @IBOutlet weak var txtFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! PassingDataVC2
            destinationVC.labelTxt = txtFieldOutlet.text!
        }
    }

    @IBAction func sendBtnAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    @IBAction func goBackBtnAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
