//
//  diaryVC.swift
//  livFit
//
//  Created by Akshat Gupta on 02/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class diaryVC: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    let cardSize : CGFloat = 200
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("Scrollview width: \(scrollView.frame.size.width)")
        
        let scrollWidth = scrollView.frame.size.width
        
        
        
        
        for x in 1...2 {
            
            let image = UIImage(named: "well\(2).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x-1) - cardSize/2
            
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX , y: (scrollView.frame.size.height / 2) - cardSize/2, width: cardSize, height: cardSize)
     }
        scrollView.clipsToBounds = false
        // scrollView.contentSize = CGSize(width: contentWidth, height: 280)
        //infinite scroll removal
        
        scrollView.contentSize = CGSize(width: scrollWidth*2, height: 200)

    }
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
