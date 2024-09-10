//
//  TestRouter.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by Lee Nguyen Templates which motivated by CleanSwift templates so
//  you can apply clean architecture to your iOS and Mac projects,

import UIKit

protocol TestProtocol: TestDataPassing {
    var viewController: TestViewController? {get}
    func doSomething()
}

protocol TestDataPassing
{
  var dataStore: TestDataStore? { get }
}

class TestRouter: TestProtocol, TestDataPassing
{
  weak var viewController: TestViewController?
  var dataStore: TestDataStore?
    
    init(viewController: TestViewController?) {
        self.viewController = viewController
    }
    
    deinit {
        print("TestRouter \(#function)")
    }
    
    
    func doSomething() {
        
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
  
  //func navigateToSomewhere(source: TestViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: TestDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
