//
//  UIViewController+Extensions.swift
//  ZYNavigationController
//
//  Created by yu zhou on 3/20/17.
//  Copyright © 2017 yu zhou. All rights reserved.
//

import UIKit

extension UIViewController {
    
    fileprivate struct AssociatedKeys {
        static var navBarBgAlpha: CGFloat = 1.0
        static var navBarTintColor: UIColor = UIColor.black
        static var navBarBarTintColor: UIColor = UIColor.red
    }

    var navBarBgAlpha: CGFloat {
        get {
            let alpha = objc_getAssociatedObject(self, &AssociatedKeys.navBarBgAlpha) as? CGFloat
            if alpha == nil {
                return 1.0
            }else{
                return alpha!
            }
            
        }
        set {
            var alpha = newValue
            if alpha > 1 {
                alpha = 1
            }
            if alpha < 0 {
                alpha = 0
            }
            
            objc_setAssociatedObject(self, &AssociatedKeys.navBarBgAlpha, alpha, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            let barBackgroundView = self.navigationController?.navigationBar.subviews[0]
            if #available(iOS 11,*) {
                if let subViews = barBackgroundView?.subviews {
                    for v in subViews {
                        v.alpha = self.navBarBgAlpha
                    }
                }
            }else{
                barBackgroundView?.alpha = self.navBarBgAlpha
            }
        }
    }
    
    var navBarTintColor:UIColor{
        get {
            let color = objc_getAssociatedObject(self, &AssociatedKeys.navBarTintColor) as? UIColor
            if color == nil {
                return UIColor.red
            }else{
                return color!
            }
            
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.navBarTintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            navigationController?.navigationBar.tintColor = newValue
            
        }

    }
    var navBarBarTintColor:UIColor{
        get {
            let color = objc_getAssociatedObject(self, &AssociatedKeys.navBarBarTintColor) as? UIColor
            if color == nil {
                return UIColor.red
            }else{
                return color!
            }
            
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.navBarBarTintColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            //设置导航栏背景色
            navigationController?.navigationBar.barTintColor = newValue
            
        }
        
    }
}
