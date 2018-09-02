//
//  CustomButton.swift
//  ios-swift-custom-button
//
//  Created on 2018/09/02.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        showButtonShadow()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        hideButtonShadow()
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        hideButtonShadow()
    }
}


// MARK: - Private functions
extension CustomButton {
    
    internal func commonInit(){
        self.layer.shadowOffset = CGSize(width: 2, height: 2 )
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 2.0
        self.layer.cornerRadius = 5
    }
    
    //ボタンが押された時
    internal func showButtonShadow() {
        self.layer.shadowOffset = CGSize(width: 0, height: 0 )
        self.layer.shadowRadius = 0
        self.layer.shadowOpacity = 0
    }
    
    //ボタンから手が離れた時のアニメーション
    internal func hideButtonShadow() {
        commonInit()
    }
}

