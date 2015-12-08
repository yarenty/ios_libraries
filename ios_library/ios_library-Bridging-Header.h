//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//


import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int)
    convenience init(hex:Int)
    convenience init( _ r: Int, _ g: Int, _  b: Int, alpha: CGFloat)
    
    class func niceBlue() -> UIColor
    class func niceBlueLight() -> UIColor
    class func niceRed() -> UIColor
    class func niceRedLight() -> UIColor
    class func niceBlackish() -> UIColor
    class func niceYellow() -> UIColor
    class func niceYellowDark() -> UIColor
    class func niceOrange() -> UIColor
}
