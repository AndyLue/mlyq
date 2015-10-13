//
//  ZhuSuTableViewCell.swift
//  MLYQ
//
//  Created by Andy on 15/10/10.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

class ZhuSuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagesView: UIImageView!
    
    @IBOutlet weak var detailTitleView: UILabel!
    
    @IBOutlet weak var titleView: UILabel!
    
    @IBOutlet weak var priceView: UILabel!
    
    var title : String = "" {
        didSet{
            titleView.text = title
        }
    }
    var detailTitle : String = ""{
        didSet{
            detailTitleView.text = detailTitle
        }
    }
    
    var price : String = ""{
        didSet{
            priceView.text = price
        }
    }
    var imageName : String = ""{
        didSet{
            imagesView.image = UIImage(named: imageName)
        }
    }
    
    
    
    
    
    
}
