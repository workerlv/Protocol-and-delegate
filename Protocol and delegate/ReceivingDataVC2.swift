//
//  ReceivingDataVC2.swift
//  Protocol and delegate
//
//  Created by Arturs Vitins on 19/05/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

protocol testProtocol {
    func testFunction (testText: String)
}

class ReceivingDataVC2: UIViewController {

    var delegate:testProtocol?
    
    @IBOutlet weak var txtFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendBackDataBtnAction(_ sender: UIButton) {
        delegate?.testFunction(testText: txtFieldOutlet.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
}
