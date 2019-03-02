//
//  RewardsVC.swift
//  livFit
//
//  Created by Akshat Gupta on 02/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class RewardsVC: UIViewController {
    
    @IBOutlet weak var scrollView : UIScrollView!
   var images = [UIImageView]()
    let cardSize : CGFloat = 280
    
    @IBOutlet weak var DoneButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        DoneButton.layer.cornerRadius = DoneButton.bounds.height/2
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("Scrollview width: \(scrollView.frame.size.width)")
        
        let scrollWidth = scrollView.frame.size.width
     
        
        
        
        for x in 1...5 {
            
            let image = UIImage(named: "card\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x-1) - cardSize/2
            
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
              imageView.frame = CGRect(x: newX , y: (scrollView.frame.size.height / 2) - cardSize/2, width: cardSize, height: cardSize)
            
            if(x>1){
                let blurView = UIView()
                let lockImage = UIImage(named: "padlock.png")
                let lockImageView = UIImageView(image: lockImage)
                imageView.addSubview(blurView)
                
                blurView.backgroundColor = UIColor.gray
                blurView.alpha = CGFloat(0.7)
                blurView.frame = CGRect(x: 0 , y: 0, width: cardSize, height: cardSize)
                imageView.addSubview(lockImageView)
                lockImageView.frame = CGRect(x: cardSize/2 - 15, y: cardSize/2 - 15, width: 30, height: 30)
            }
            

        }
        
        scrollView.clipsToBounds = false
               // scrollView.contentSize = CGSize(width: contentWidth, height: 280)
        //infinite scroll removal

        scrollView.contentSize = CGSize(width: scrollWidth*5, height: 280)
    }

    @IBAction func dismissScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
