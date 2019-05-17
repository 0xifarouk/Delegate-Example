//
//  ViewController.swift
//  Delegate Example
//
//  Created by FarouK on 17/05/2019.
//  Copyright © 2019 FarouK. All rights reserved.
//

import UIKit

class ReciverViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func open2ndViewControllerPressed(_ sender: Any) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SenderViewController") as? SenderViewController else { return }
        
        vc.delegate = self
        present(vc, animated: true)
        
    }
    
}

extension ReciverViewController: DataTransferable {
    
    func transfareData(_ text: String) {
        
        textLabel.text = text
    }
    
    
    
}

