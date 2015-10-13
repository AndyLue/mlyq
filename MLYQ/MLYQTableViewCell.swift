//
//  MyTableViewCell.swift
//  TableView
//
//  Created by Andy on 15/9/7.
//  Copyright (c) 2015年 xiaoweigeWorking. All rights reserved.
//

import UIKit

class MLYQTableViewCell: UITableViewCell {

    @IBOutlet weak var imagesView: UIImageView!
    
    @IBOutlet weak var detailTitleView: UILabel!
    
    @IBOutlet weak var titleView: UILabel!
    
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
    
    var imageName : String = ""{
        didSet{
            imagesView.image = UIImage(named: imageName)
        }
    }
    
    

    
    
    
}
