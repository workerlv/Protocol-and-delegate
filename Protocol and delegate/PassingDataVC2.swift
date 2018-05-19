//
//  PassingDataVC2.swift
//  Protocol and delegate
//
//  Created by Arturs Vitins on 19/05/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class PassingDataVC2: UIViewController {

    var labelTxt = ""
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = labelTxt
    }

    @IBAction func goBackBtnAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
