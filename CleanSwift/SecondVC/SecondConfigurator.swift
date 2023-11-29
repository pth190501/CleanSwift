//
//  SecondConfigurator.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//  This file was generated by Lee Nguyen Templates which motivated by CleanSwift templates so
//  you can apply clean architecture to your iOS and Mac projects,
import UIKit

class SecondConfigurator
{
    // MARK: - Singleton

    static let sharedInstance: SecondConfigurator = SecondConfigurator()
    
    init() {
        
    }
    
    deinit {
        print("SecondConfigurator \(#function)")
    }

    // MARK: - Configuration

    func configure(viewController: SecondViewController) {

        let router = SecondRouter(viewController: viewController)
        let presenter = SecondPresenter(output: viewController)
        let interactor = SecondInteractor(output: presenter)
        
        router.dataStore = interactor
        viewController.output = interactor
        viewController.router = router
    }
  
}
