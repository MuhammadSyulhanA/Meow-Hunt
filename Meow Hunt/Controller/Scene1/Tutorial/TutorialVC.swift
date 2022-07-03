//
//  TutorialVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

class TutorialVC: UIViewController {

    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1050, height: 1050)
        imgView.image = UIImage(named: "backgroundScene1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBackgroundShadow: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1040, height: 1040)
        imgView.image = UIImage(named: "shadow")
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
    
    var imageViewTutor1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 800, height: 800)
        imgView.image = UIImage(named: "tutorRight")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTutor2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 800, height: 800)
        imgView.image = UIImage(named: "tutorRightDone")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTutor3: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 800, height: 800)
        imgView.image = UIImage(named: "tutorWrong")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTutor4: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 800, height: 800)
        imgView.image = UIImage(named: "tutorWrongDone")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTutorDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 125, height: 125)
        imgView.image = UIImage(named: "doll")
        imgView.contentMode = .scaleAspectFill
        return imgView
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
        
        imageViewBackgroundShadow.center = view.center
        view.addSubview(imageViewBackgroundShadow)
        
        imageViewTutor1.center = view.center
        view.addSubview(imageViewTutor1)
        
        imageViewTutor2.center = view.center
        view.addSubview(imageViewTutor2)
        imageViewTutor2.isHidden = true
        
        imageViewTutor3.center = view.center
        view.addSubview(imageViewTutor3)
        imageViewTutor3.isHidden = true
        
        imageViewTutor4.center = view.center
        view.addSubview(imageViewTutor4)
        imageViewTutor4.isHidden = true
        
        imageViewTutorDoll.center = CGPoint(x: view.center.x + 0 , y: view.center.y + 120)
        view.addSubview(imageViewTutorDoll)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
            self.navigationController?.pushViewController(SceneOneVC(), animated: true)
        }
        
        //animation
        UIView.animate(withDuration: 2.0, delay: 0) {
            self.imageViewTutorDoll.center.x -= 170
            self.imageViewTutorDoll.center.y -= 299
        } completion: { isComplete in
            if isComplete {
                self.imageViewTutor1.isHidden = true
                self.imageViewTutorDoll.isHidden = true
                self.imageViewTutor2.isHidden = false
            }
        }
    }
    
    func convertDegreesRadians(degrees:CGFloat)-> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
}

