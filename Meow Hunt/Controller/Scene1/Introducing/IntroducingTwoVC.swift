//
//  IntroducingTwoVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

class IntroducingTwoVC: UIViewController {

    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1050, height: 1050)
        imgView.image = UIImage(named: "backgroundScene1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBigCupboard: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 350, height: 450)
        imgView.image = UIImage(named: "bigCupboard")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewCupboard: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 250, height: 250)
        imgView.image = UIImage(named: "cupboard")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBox: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "box")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBed: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 300, height: 300)
        imgView.image = UIImage(named: "bed")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewPhoto: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 130, height: 130)
        imgView.image = UIImage(named: "photoFrame")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewLamp: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "lamp")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewWindows: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 400, height: 400)
        imgView.image = UIImage(named: "windows")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBooks1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "books1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBooks2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "books2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewRobot: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 70, height: 70)
        imgView.image = UIImage(named: "robot")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewPlane: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "plane")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBall: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "ball")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBag: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "bag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "doll")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTowel1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 40, height: 40)
        imgView.image = UIImage(named: "towel1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTowel2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 43, height: 43)
        imgView.image = UIImage(named: "towel2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 300, height: 300)
        imgView.image = UIImage(named: "cat")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSadCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 300, height: 300)
        imgView.image = UIImage(named: "sadCat")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    
    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "chatBoxIntro")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var textIntroStorytelling: UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 550, height: 370)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.contentMode = .scaleAspectFill
        label.text = "Ouchh!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewBigCupboard.center = CGPoint(x: view.center.x - 510 , y: view.center.y + 70)
        view.addSubview(imageViewBigCupboard)
        
        imageViewBed.center = CGPoint(x: view.center.x + 528 , y: view.center.y + 245)
        view.addSubview(imageViewBed)
        
        imageViewCupboard.center = CGPoint(x: view.center.x + 250 , y: view.center.y + 235)
        view.addSubview(imageViewCupboard)
        
        imageViewPhoto.center = CGPoint(x: view.center.x + 530 , y: view.center.y - 215)
        view.addSubview(imageViewPhoto)
        
        imageViewLamp.center = CGPoint(x: view.center.x + 533 , y: view.center.y - 445)
        view.addSubview(imageViewLamp)
        
        imageViewWindows.center = CGPoint(x: view.center.x - 33 , y: view.center.y - 215)
        view.addSubview(imageViewWindows)
        
        imageViewBox.center = CGPoint(x: view.center.x - 528 , y: view.center.y - 297)
        view.addSubview(imageViewBox)
        
        imageViewDoll.center = CGPoint(x: view.center.x - 390 , y: view.center.y - 297)
        view.addSubview(imageViewDoll)
        
        imageViewBall.center = CGPoint(x: view.center.x - 520 , y: view.center.y - 165)
        view.addSubview(imageViewBall)
        
        imageViewBooks2.center = CGPoint(x: view.center.x - 437 , y: view.center.y - 0)
        view.addSubview(imageViewBooks2)
        
        imageViewTowel1.center = CGPoint(x: view.center.x - 575 , y: view.center.y + 156)
        view.addSubview(imageViewTowel1)
        
        imageViewPlane.center = CGPoint(x: view.center.x - 590 , y: view.center.y + 455)
        imageViewPlane.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -390.96))
        view.addSubview(imageViewPlane)
        
        imageViewBooks1.center = CGPoint(x: view.center.x - 250 , y: view.center.y + 405)
        imageViewBooks1.transform = CGAffineTransform(rotationAngle: convertDegreesRadians (degrees: -31.39))
        view.addSubview(imageViewBooks1)
        
        imageViewTowel2.center = CGPoint(x: view.center.x + 250 , y: view.center.y + 455)
        view.addSubview(imageViewTowel2)
        
        imageViewRobot.center = CGPoint(x: view.center.x + 510 , y: view.center.y + 360)
        imageViewRobot.transform = CGAffineTransform(rotationAngle:convertDegreesRadians(degrees: -270.00))
        view.addSubview(imageViewRobot)
        
        imageViewBag.center = CGPoint(x: view.center.x + 630 , y: view.center.y + 190)
        view.addSubview(imageViewBag)
        
        imageViewChat.center = CGPoint(x: view.center.x - 330 , y: view.center.y + 100)
        view.addSubview(imageViewChat)
        imageViewChat.isHidden = true
        
        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 415
        textIntroStorytelling.frame.origin.x = 300
        textIntroStorytelling.setTypingIntroduction(text: "Ouchh!")
        view.addSubview(textIntroStorytelling)
        textIntroStorytelling.isHidden = true
        
        imageViewCat.center = CGPoint(x: view.center.x + 30 , y: view.center.y + 260)
        view.addSubview(imageViewCat)
        
        imageViewSadCat.center = CGPoint(x: view.center.x - 120 , y: view.center.y + 260)
        view.addSubview(imageViewSadCat)
        imageViewSadCat.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
            self.navigationController?.pushViewController(IntroducingThreeVC(), animated: true)
        }
        
        //animation
        UIView.animate(withDuration: 2.0, delay: 0) {
            self.imageViewCat.center.x -= 150
        } completion: { isComplete in
            if isComplete {
                self.imageViewCat.isHidden = true
                self.imageViewChat.isHidden = false
                self.textIntroStorytelling.isHidden = false
                self.imageViewSadCat.isHidden = false
            }
        }
    }
    
    func convertDegreesRadians(degrees:CGFloat)-> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
}
