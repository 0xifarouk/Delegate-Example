//
//  SenderViewController.swift
//  Delegate Example
//
//  Created by FarouK on 17/05/2019.
//  Copyright © 2019 FarouK. All rights reserved.
//

import UIKit

class SenderViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    
    var delegate: DataTransferable!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func TransferButtonPressed(_ sender: Any) {
        
        delegate.transfareData(textField.text ?? "No text was written")
        dismiss(animated: true, completion: nil)
    }
    
}
