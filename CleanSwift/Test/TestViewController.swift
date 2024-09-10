//
//  TestViewController.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol TestViewControllerInput: TestPresenterOutput {
    
}

protocol TestViewControllerOutput {
    func resquestSomethings()
}

protocol TestDelegate {
    func delegateSomething()
}


class TestViewController: UIViewController {
    var output: TestViewControllerOutput!
    var router: TestProtocol!
    
    
    // MARK: - Configurator
    
    init(configurator: TestConfigurator = TestConfigurator()) {
        super.init(nibName: "TestViewController", bundle: nil)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    private func configure(configurator: TestConfigurator = TestConfigurator()) {
        configurator.configure(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        v.backgroundColor = .blue
        self.view.addSubview(v)
        
        let v1 = UIView(frame: CGRect(x: 5, y: 50, width: 50, height: 50))
        v1.backgroundColor = .black
        v.addSubview(v1)
        
    }
}

extension TestViewController : TestViewControllerInput {
    func displaySomething() {
        
    }
}
