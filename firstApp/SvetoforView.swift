//
//  SvetoforView.swift
//  firstApp
//
//  Created by Сурен Майильян on 01.07.2023.
//

import UIKit
import SnapKit



class SvetoforView: UIView {
    
    private let sections: [SvetoforSectionView] = [SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .orange),
                                                   SvetoforSectionView(colorLight: .green),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .orange),
                                                   SvetoforSectionView(colorLight: .green)]
    
    private let stackView = UIStackView(frame: .zero)

    init() {
        super.init(frame: .zero)
        
        configureStackView()
        setStartState()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Public
    
    func switchMode () {
        
        if let indexOfFirstOnSection = sections.firstIndex(where: {$0.isOn()}), indexOfFirstOnSection < sections.count - 1 {
            sections[indexOfFirstOnSection].turnOff()
            sections[indexOfFirstOnSection + 1].turnOn()
        } else {
            sections.forEach({$0.turnOff()})
            sections.first?.turnOn()
        }
    }
    
    //MARK: - Private
    
    private func configureStackView(){
        addSubview(stackView)
        
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        sections.forEach {section in
            stackView.addArrangedSubview(section)
            
            section.snp.makeConstraints{ make in
                make.width.height.equalTo(100)
            }
        }
        
        stackView.snp.makeConstraints{make in
            make.edges.equalToSuperview()
            
        }
    }
    
    private func setStartState(){
        sections.forEach{section in
            section.turnOff()
        }
    }
}
