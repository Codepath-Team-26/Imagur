//
//  CostumView.swift
//  Imagur
//
//  Created by Jay on 2022/11/4.
//

import UIKit
@IBDesignable
class CostumImageView:UIImageView{
    @IBInspectable
    var cornerRadius:CGFloat = 0.0{
        didSet{
            layer.cornerRadius = cornerRadius
            layer.cornerCurve = .continuous
        }
    }
    @IBInspectable
    var shadowOffset:CGSize =  CGSize(width: 0,height: 0){
        didSet{
            layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable
    var shadowColor:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0 ){
        didSet{
            layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable
    var shadowOpacity:Float = 0.0{
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable
    var   masksToBounds:Bool = false{
        didSet{
            layer.masksToBounds = masksToBounds
        }
    }
}
