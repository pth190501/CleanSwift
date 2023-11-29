//
//  FirstViewController.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol FirstViewControllerInput: FirstPresenterOutput {
    
}

protocol FirstViewControllerOutput {
    func resquestSomethings()
    func requestGetText(textInput: String, s: String, t: String)
    func requestSwapLang(firstLang: String, secondLang: String)
    func requestLangChoosed(lable: UILabel, lang: String)
}

protocol FirstDelegate {
    func delegateSomething()
}


class FirstViewController: UIViewController {
    var output: FirstViewControllerOutput!
    var router: FirstProtocol!
    
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var txInput: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var btnConfirm: UIButton!
    
    @IBOutlet weak var lbFirstLang: UILabel!
    @IBOutlet weak var btnSwap: UIButton!
    @IBOutlet weak var lbSecondLang: UILabel!
    
    // MARK: - Configurator
    
    init(configurator: FirstConfigurator = FirstConfigurator()) {
        super.init(nibName: "FirstViewController", bundle: nil)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    private func configure(configurator: FirstConfigurator = FirstConfigurator()) {
        configurator.configure(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lbFirstLang.text = "English"
        self.lbFirstLang.isUserInteractionEnabled = true
        self.lbFirstLang.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapLb1)))
        
        self.lbSecondLang.text = "Tiếng Việt"
        self.lbSecondLang.isUserInteractionEnabled = true
        self.lbSecondLang.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapLb2)))
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func tapLb1(){
        self.router.navigateToSecondVC(label: self.lbFirstLang)
    }
    
    @objc func tapLb2(){
        self.router.navigateToSecondVC(label: self.lbSecondLang)
    }
    
    @IBAction func tapBtnConfirm(_ sender: Any) {
        self.output.requestGetText(textInput: self.txInput.text ?? "", s: self.lbFirstLang.text!, t: self.lbSecondLang.text!)
    }
    
    
    @IBAction func tapBtnSwap(_ sender: Any) {
        self.output.requestSwapLang(firstLang: self.lbFirstLang.text!, secondLang: self.lbSecondLang.text!)
    }
    
}

extension FirstViewController : FirstViewControllerInput {
    func displaySomething() {
        
    }
    
    func displayText(text: String) {
        if text != "NaN" {
            self.lbResult.text = text
        }
    }
    
    func displayLang(firstLang: String, secondLang: String){
        self.lbFirstLang.text = firstLang
        self.lbSecondLang.text = secondLang
    }
    
    func displayLangChoosed(lang: String, label: UILabel) {
        label.text = lang
    }
}
