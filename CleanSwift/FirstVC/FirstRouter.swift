//
//  FirstRouter.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by Lee Nguyen Templates which motivated by CleanSwift templates so
//  you can apply clean architecture to your iOS and Mac projects,

import UIKit

protocol FirstProtocol: FirstDataPassing {
    var viewController: FirstViewController? {get}
    func doSomething()
    func navigateToSecondVC(label: UILabel)
}

protocol FirstDataPassing
{
  var dataStore: FirstDataStore? { get }
}

class FirstRouter: FirstProtocol, FirstDataPassing
{
  weak var viewController: FirstViewController?
  var dataStore: FirstDataStore?
    
    init(viewController: FirstViewController?) {
        self.viewController = viewController
    }
    
    deinit {
        print("FirstRouter \(#function)")
    }
    
    
    func doSomething() {
        
    }
    
    func navigateToSecondVC(label: UILabel) {
        let vc = SecondViewController()
        vc.onClose = {
            data in 
            self.viewController?.output.requestLangChoosed(lable: label, lang: data)
        }
        self.viewController?.present(vc, animated: true)
    }
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: FirstViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: FirstDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}