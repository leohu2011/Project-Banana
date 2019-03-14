//
//  logoAnimationView.swift
//  AutoChessHelper
//
//  Created by HU QI on 2019-02-21.
//  Copyright © 2019 HU QI. All rights reserved.
//

import Foundation
import SwiftyGif

class logoAnimationView: UIView {
    let logoGifImageView = UIImageView(gifImage: UIImage(gifName: "orgeMagi.gif"), manager: SwiftyGifManager.init(memoryLimit: 5), loopCount: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = UIColor.white
        addSubview(logoGifImageView)
        logoGifImageView.translatesAutoresizingMaskIntoConstraints = false
        logoGifImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoGifImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
