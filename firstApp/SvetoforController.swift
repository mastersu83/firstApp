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
    
    @IBOutlet weak var firstSectionView: SvetoforSectionView!
    @IBOutlet weak var secondSectionView: SvetoforSectionView!
    @IBOutlet weak var thirdSectionView: SvetoforSectionView!
    
    let blueView = UIView(frame: .zero)

    @IBOutlet weak var turnButton: UIButton!
    
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
//    MARK: - Системные функции
    
//    Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
        
        firstSectionView.colorLight = .red
        secondSectionView.colorLight = .orange
        thirdSectionView.colorLight = .green
        
//        let arrayView = [firstSectionView, secondSectionView, thirdSectionView, blueView]
//        
////        for view in viewsCollection {
////            configView(view)
////        }
//        
//        for view in arrayView {
//            configView(view!)
//        }
//        
////        blueView.backgroundColor = .blue
////        view.addSubview(blueView)
////
////        blueView.snp.makeConstraints { make in
////            make.width.equalTo(100)
////            make.height.equalTo(100)
////            make.centerX.equalToSuperview()
////            make.top.equalTo(greenView.snp.bottom).offset(40)
////
////        }
//        
////        configView(redView)
////        configView(orangeView)
////        configView(greenView)
//        
//       printMyText(text: "Экран БЫЛ загружен")
    }
    
    
//    Экран БУДЕТ показан
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        printMyText(text: "Экран БУДЕТ показан")
      
    }
    
    
//    Экран БЫЛ показан
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        printMyText(text: "Экран БЫЛ показан")
        
        view.backgroundColor = .white
       
    }
    
//    Экран БУДЕТ скрыт
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
//    Экран БЫЛ скрыт
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

//    MARK: - Пользовательске функции

    @IBAction func turnButtonAction(_ sender: Any) {
        
        firstSectionView.toggleLight(firstSectionView, secondSectionView, thirdSectionView)
        
//        if firstSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
//            firstSectionView.turnOn()
//        } else if firstSectionView.isOn() {
//            firstSectionView.turnOff()
//            secondSectionView.turnOn()
//        } else if secondSectionView.isOn() {
//            thirdSectionView.turnOn()
//            secondSectionView.turnOff()
//        } else {
//            thirdSectionView.turnOff()
//        }
        

        
        
//        if firstSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear {
//            firstSectionView.backgroundColor = .red
//        } else if firstSectionView.backgroundColor == .red {
//            firstSectionView.backgroundColor = .clear
//            secondSectionView.backgroundColor = .orange
//        } else if secondSectionView.backgroundColor == .orange {
//            thirdSectionView.backgroundColor = .green
//            secondSectionView.backgroundColor = .clear
//        } else {
//            thirdSectionView.backgroundColor = .clear
//        }
        
//        redView.backgroundColor = redView.backgroundColor == .clear ? .red : .clear
        
//        redView.isHidden = !redView.isHidden
    }
    
//    func configView (_ view: UIView) {
//        view.layer.cornerRadius = redViewHeightConstraint.constant / 2
//        view.layer.borderWidth = 2
//        view.layer.borderColor = UIColor.black.cgColor
//        view.backgroundColor = .clear
//    }
    
    func printMyText(text: String) {
   
        print(text)
    }
    
    
}

