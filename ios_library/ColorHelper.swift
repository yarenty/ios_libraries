//
//  ColorHelper.swift
//  ios_library
//
//  Created by Jaroslaw Nowosad on 08/12/2015.
//  Copyright © 2015 SkyCorp Ltd. All rights reserved.
//

import UIKit


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red, green, blue, alpha: 1.0)
    }
    
    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }
    
    convenience init( _ r: Int, _ g: Int, _  b: Int, alpha: CGFloat) {
        assert(r >= 0 && r <= 255, "Invalid red component")
        assert(g >= 0 && g <= 255, "Invalid green component")
        assert(b >= 0 && b <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    
    
    class func niceBlue() -> UIColor {
        return UIColor(hex: 0x007AFF)
    }
    
    class func niceBlueLight() -> UIColor {
        return UIColor(hex: 0x34AADC)
    }
    
    class func niceRed() -> UIColor {
        return UIColor(hex: 0xFF1300)
    }
    
    class func niceRedLight() -> UIColor {
        return UIColor(hex: 0xFF3A2D)
    }
    
    class func niceBlackish() -> UIColor {
        return UIColor(hex: 0x1F1F21)
    }
    
    
    class func niceYellow() -> UIColor {
        return UIColor(hex: 0xFFDB4C)
    }
    
    class func niceYellowDark() -> UIColor {
        return UIColor(hex: 0xFFCD02)
    }
    
    class func niceOrange() -> UIColor {
        return UIColor(hex: 0xFF9500)
    }
    
}
