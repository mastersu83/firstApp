//
//  ViewController.swift
//  firstApp
//
//  Created by Сурен Майильян on 06.06.2023.
//

import SnapKit

import UIKit

class SvetoforController: UIViewController {
    
    private let svetoforView = SvetoforView()
    
    @IBOutlet var viewsCollection: [UIView]!
    // Storyboard var
    
    

    @IBOutlet weak var turnButton: UIButton!
    
    
    
//    MARK: - Системные функции
    
//    Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSvetoforView()
        
    }
    
    
    //    MARK: - Actions

    @IBAction func turnButtonAction(_ sender: Any) {
        svetoforView.switchMode()
        
    }
    
    //MARK: - Private
    
    private func configureSvetoforView(){
        view.addSubview(svetoforView)
        
        svetoforView.snp.makeConstraints{make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
            
        }
    }
    
}

