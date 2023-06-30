//
//  SvetoforSectionView.swift
//  firstApp
//
//  Created by Сурен Майильян on 29.06.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
// момент создания из сториборда
    
    var colorLight: UIColor?
    
    init(colorLight: UIColor){
        super.init(frame: .zero)
        
        self.colorLight = colorLight
        //code
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    
    func turnOn (){
        backgroundColor = colorLight
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
    
    func toggleLight (_ firstSection: SvetoforSectionView, _ secondSection: SvetoforSectionView, _ thirdSection: SvetoforSectionView){
        
        
       
        if firstSection.isOff() && secondSection.isOff() && thirdSection.isOff() {
            firstSection.turnOn()
        } else if firstSection.isOn() {
            firstSection.turnOff()
            secondSection.turnOn()
        } else if secondSection.isOn() {
            thirdSection.turnOn()
            secondSection.turnOff()
        } else {
            thirdSection.turnOff()
        }
    }
}
