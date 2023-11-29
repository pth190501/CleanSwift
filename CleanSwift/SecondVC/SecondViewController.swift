//
//  SecondViewController.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol SecondViewControllerInput: SecondPresenterOutput {
    
}

protocol SecondViewControllerOutput {
    func resquestSomethings()
    func resquestGetListLang()
    func requestCloseVC()
}

protocol SecondDelegate {
    func delegateSomething()
}


class SecondViewController: UIViewController {
    var output: SecondViewControllerOutput!
    var router: SecondProtocol!
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrLang: [String] = []
    var onClose: ((String) -> Void)?
    
    
    // MARK: - Configurator
    
    init(configurator: SecondConfigurator = SecondConfigurator()) {
        super.init(nibName: "SecondViewController", bundle: nil)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    private func configure(configurator: SecondConfigurator = SecondConfigurator()) {
        configurator.configure(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "LanguageTableViewCell", bundle: nil), forCellReuseIdentifier: "LanguageTableViewCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.output.resquestGetListLang()
    }
}

extension SecondViewController : SecondViewControllerInput {
    func displaySomething() {
        
    }
    
    func displayLanguageList(listArr: [String]){
        self.arrLang = listArr
        self.tableView.reloadData()
    }
    
    func closeVC() {
        self.router.dissmissVC()
    }
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - DATASOURCE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrLang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageTableViewCell") as? LanguageTableViewCell else {
            
            return UITableViewCell()
            
        }
        cell.lbLang.text = arrLang[indexPath.row]
        return cell
    }
    
    // MARK: - DELEGATE
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.output.requestCloseVC()
        
        onClose?(arrLang[indexPath.row])
    }
    
}
