import UIKit
@IBDesignable
class CustomTextField:UITextField{
    @IBInspectable
    var buttonBorderWidth:CGFloat = 0 {
        didSet{
            layer.borderWidth = buttonBorderWidth
        }
    }
    @IBInspectable
    var buttonBorderColor:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1){
        didSet{
            layer.borderColor = buttonBorderColor.cgColor
        }
    }
    @IBInspectable
    var buttonBorderRadius:CGFloat = 0{
        didSet{
            layer.cornerRadius = buttonBorderRadius
        }
    }
}
