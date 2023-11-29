//
//  SecondInteractor.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by Lee Nguyen Templates which motivated by CleanSwift templates so
//  you can apply clean architecture to your iOS and Mac projects,

import UIKit

protocol SecondInteractorInput: SecondViewControllerOutput {

    
}

protocol SecondInteractorOutput : AnyObject {
    func presentSomething()
    func presentListArr(arrList: [String])
    func presentCloseVC()
}

protocol SecondDataStore
{
  //var name: String { get set }
}


final class SecondInteractor: SecondDataStore {
    
    let output: SecondInteractorOutput
    let worker:SecondWorker
    let viewModel = SecondViewModel.ViewModel()
    
    init(output: SecondInteractorOutput, worker: SecondWorker = SecondWorker()) {
        self.output = output
        self.worker = worker
    }
    
    deinit {
        print("SecondInteractor \(#function)")
    }
    
}

extension SecondInteractor: SecondInteractorInput {
    func resquestSomethings() {
        
    }

    func resquestGetListLang() {
        self.output.presentListArr(arrList: self.viewModel.listLang)
    }
    
    func requestCloseVC() {
        self.output.presentCloseVC()
    }
}