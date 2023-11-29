//
//  ViewController.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapBtn(_ sender: Any) {
        let vc = FirstViewController()
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

