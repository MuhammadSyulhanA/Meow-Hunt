//
//  MapsOneVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 03/07/22.
//

import UIKit

class MapsOneVC: UIViewController {
    
    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1050, height: 1050)
        imgView.image = UIImage(named: "backgroundMaps")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBed: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "bed")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewMaps: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 800, height: 800)
        imgView.image = UIImage(named: "maps1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 200, height: 200)
        imgView.image = UIImage(named: "chatRectangle")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 250, height: 250)
        imgView.image = UIImage(named: "cat")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var textIntroStorytelling: UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 350, height: 370)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25)
        label.contentMode = .scaleAspectFill
        label.text = "Lokasi pertama yang harus kita tuju adalah kamar tidur!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewMaps.center = CGPoint(x: view.center.x + 50 , y: view.center.y - 60)
        view.addSubview(imageViewMaps)
        
        imageViewBed.center = CGPoint(x: view.center.x + 330 , y: view.center.y - 260)
        view.addSubview(imageViewBed)
        
        imageViewChat.center = CGPoint(x: view.center.x + 170 , y: view.center.y + 340)
        view.addSubview(imageViewChat)
        
        imageViewCat.center = CGPoint(x: view.center.x + 490 , y: view.center.y + 460)
        view.addSubview(imageViewCat)
        
        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 640
        textIntroStorytelling.frame.origin.x = 685
        textIntroStorytelling.setTypingIntroduction(text: "Lokasi pertama yang harus kita tuju adalah kamar tidur!")
        view.addSubview(textIntroStorytelling)
        
        //automatically move screen
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.navigationController?.pushViewController(IntroducingOneVC(), animated: true)
        }

        
        //animation
        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse]) {
        self.imageViewBed.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        } completion: { isComplete in

        }

    }
}
