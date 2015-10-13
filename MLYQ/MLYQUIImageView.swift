//
//  MLYQUIImageView.swift
//  MLYQ
//
//  Created by Andy on 15/9/23.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit



class MLYQUIImageView: UIImageView {
    
    var sizeType : String?{
        didSet{
            setNeedsDisplay()
        }
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        print("ddd")
//        switch sizeType! {
//            case SizeType.ONE:
//                rect = CGRect(x: 0, y: 0, width: self.frame.size.width*0.56, height: self.frame.size.height*0.4)
//            case SizeType.TWO:
//                rect = CGRect(x: self.frame.size.width*0.56+2, y: 0, width:self.frame.size.width*0.44-2, height: self.frame.size.height*0.3)
//            case SizeType.THREE:
//                rect = CGRect(x: 0, y: self.frame.size.height*0.4+2, width: self.frame.size.width*0.56, height: self.frame.size.height*0.3)
//            case SizeType.FOUR:
//                print("")
//            case SizeType.FIVE:
//                print("")
//            case SizeType.SIX:
//                print("")
//            default:break
//        }
    }
    

}
