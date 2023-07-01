//
//  ViewController.swift
//  firstApp
//
//  Created by Сурен Майильян on 06.06.2023.
//

import SnapKit

import UIKit

class SvetoforController: UIViewController {
    
    @IBOutlet var viewsCollection: [UIView]!
    // Storyboard var
    
    var firstSectionView = SvetoforSectionView(colorLight: .red)
    var secondSectionView = SvetoforSectionView(colorLight: .orange)
    var thirdSectionView = SvetoforSectionView(colorLight: .green)

    @IBOutlet weak var turnButton: UIButton!
    
    let stackView = UIStackView(frame: .zero)
    
//    MARK: - Системные функции
    
//    Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(firstSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints{make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
            
        }
//        view.addSubview(firstSectionView)
//        view.addSubview(secondSectionView)
//        view.addSubview(thirdSectionView)
//
        firstSectionView.snp.makeConstraints{ make in
            make.width.height.equalTo(100)
        }
        
        secondSectionView.snp.makeConstraints{ make in
            make.width.height.equalTo(100)
        }
        
        thirdSectionView.snp.makeConstraints{ make in
            make.width.height.equalTo(100)
        }
        
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
    
    
    //    MARK: - Пользовательске функции

    @IBAction func turnButtonAction(_ sender: Any) {
        
        if firstSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
            firstSectionView.turnOn()
        } else if firstSectionView.isOn() {
            firstSectionView.turnOff()
            secondSectionView.turnOn()
        } else if secondSectionView.isOn() {
            thirdSectionView.turnOn()
            secondSectionView.turnOff()
        } else {
            thirdSectionView.turnOff()
        }
    }
    
}

