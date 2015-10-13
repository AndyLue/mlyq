//
//  LuXianDetailViewControler.swift
//  MLYQ
//
//  Created by Andy on 15/10/9.
//  Copyright © 2015年 xiaoweigeWorking. All rights reserved.
//


import UIKit


class LuXianDetailViewControler: UIViewController{

    
    @IBOutlet var swipeGestureMy: UISwipeGestureRecognizer!
    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {
        backAwary()
    }
    @IBAction func back(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            self.backAwary()
        })
    }
    
    func backAwary(){
        let notf = NSNotificationCenter.defaultCenter()
        notf.postNotificationName(StoryBoardConstants.CloseNotfi, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: imageStr)
        jieShao.text = jeiShaoStr
        luXianDetail.text = luXianDetailStr
        time.text = timeStr
        
        self.view.addGestureRecognizer(swipeGestureMy)
    }
    
    var jeiShaoStr:String = ""
    var imageStr:String = ""
    var timeStr:String = ""
    var luXianDetailStr:String = ""
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var luXianDetail: UILabel!
    @IBOutlet weak var jieShao: UILabel!
    @IBOutlet weak var imageView: UIImageView!
}
