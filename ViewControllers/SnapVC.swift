//
//  SnapVC.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 11.02.2023.
//

import UIKit
import ImageSlideshow
import ImageSlideshowKingfisher

class SnapVC: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var selectedImage: Snap?
    var inputArray = [KingfisherSource]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let snap = selectedImage {
            timeLabel.text = "Time Left: \(snap.timeDifference)"
        }
        
        
        if let snap = selectedImage {
            for imageUrl in snap.imageUrlArray {
                inputArray.append(KingfisherSource(urlString: imageUrl)!)
            }
        }
        
        
        let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 10, width: self.view.frame.width*0.95, height: self.view.frame.height*0.9))
        imageSlideShow.backgroundColor = UIColor.systemBackground
        
        let pageIndicator = UIPageControl()
        pageIndicator.currentPageIndicatorTintColor = UIColor.lightGray
        pageIndicator.pageIndicatorTintColor = UIColor.black
        imageSlideShow.pageIndicator = pageIndicator
        
        imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
        imageSlideShow.setImageInputs(inputArray)
        self.view.addSubview(imageSlideShow)
        self.view.bringSubviewToFront(timeLabel)

        
    }


}
