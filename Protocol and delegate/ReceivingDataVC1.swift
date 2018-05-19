//
//  ReceivingDataVC1.swift
//  Protocol and delegate
//
//  Created by Arturs Vitins on 19/05/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class ReceivingDataVC1: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOtherVC" {
            
            let destinationVC = segue.destination as! ReceivingDataVC2
            destinationVC.delegate = self
        }
    }

    @IBAction func moveToOtherVCBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "toOtherVC", sender: nil)
    }
    
    @IBAction func goBackBtnAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension ReceivingDataVC1: testProtocol {
    func testFunction(testText: String) {
        labelOutlet.text = testText
    }
}
