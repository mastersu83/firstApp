//
//  SvetoforSectionView.swift
//  firstApp
//
//  Created by Сурен Майильян on 29.06.2023.
//

import UIKit


enum Colors {
    case red
    case orange
    case green
    
    func color()->UIColor {
        switch self {
            
        case .red:
          return  UIColor.red
        case .orange:
            return  UIColor.orange
        case .green:
            return UIColor.green
        }
        
    }
}

class SvetoforSectionView: UIView {
    
// момент создания из сториборда
    
    var colorLight: Colors?
    
    init(colorLight: Colors){
        super.init(frame: .zero)
        
        self.colorLight = colorLight
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUpView()
    }
    
    
    // MARK: - Public
    
    
    func turnOn (){
        backgroundColor = colorLight?.color()
    }

    func turnOff() {
        backgroundColor = .clear
        
    }
    
    func isOn()-> Bool{
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
        
    }
    func isOff()-> Bool{
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
        
    }
    
    // MARK: - Private
    
    func setUpView () {
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
}
