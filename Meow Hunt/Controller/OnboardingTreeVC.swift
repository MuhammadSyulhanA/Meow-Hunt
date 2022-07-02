//
//  OnboardingTreeVC.swift
//  Meow Hunt
//
//  Created by Ferry Julian on 02/07/22.
//

import UIKit
import Foundation
import AVFoundation

class OnboardingTreeVC: UIViewController {
    
    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 700, height: 1400)
        imgView.image = UIImage(named: "backgroundOnboarding2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBase: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1370, height: 400)
        imgView.image = UIImage(named: "base")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewCloud1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "awan2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewCloud2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "awan1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewCloud3: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "awan1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewCloud4: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "awan2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewSun: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 200, height: 200)
        imgView.image = UIImage(named: "sun")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()


    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 225, height: 225)
        imgView.image = UIImage(named: "catDetectiveBag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewBush: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "bush2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewBigStone: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "stone")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTree: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 380, height: 380)
        imgView.image = UIImage(named: "tree")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewStone: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 40, height: 40)
        imgView.image = UIImage(named: "stone2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewStoneUnderBush: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "stone3")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewStoneRightSideCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "stone3")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewGrass1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "grass1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewGrass2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "grass1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewGrass3: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "grass1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewGrass4: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "grass1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewGrass5: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 30, height: 30)
        imgView.image = UIImage(named: "grass1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewHome: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 500, height: 400)
        imgView.image = UIImage(named: "homeClose")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 400, height: 200)
        imgView.image = UIImage(named: "rectangleTinyChat")
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
        label.text = "Mau main bersamaku?"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()

    var imageViewPlayButton: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 130, height: 130)
        imgView.image = UIImage(named: "nextButton")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewBase.center = view.center
        view.addSubview(imageViewBase)

        imageViewCloud1.center = CGPoint(x: view.center.x - 440 , y: view.center.y - 330)
        view.addSubview(imageViewCloud1)

        imageViewCloud2.center = CGPoint(x: view.center.x - 150 , y: view.center.y - 150)
        view.addSubview(imageViewCloud2)

        imageViewCloud4.center = CGPoint(x: view.center.x + 150 , y: view.center.y - 370)
        view.addSubview(imageViewCloud4)

        imageViewSun.center = CGPoint(x: view.center.x + 520 , y: view.center.y - 370)
        view.addSubview(imageViewSun)

        imageViewCloud3.center = CGPoint(x: view.center.x + 480 , y: view.center.y - 200)
        view.addSubview(imageViewCloud3)
        
        imageViewTree.center = CGPoint(x: view.center.x - 530 , y: view.center.y + 120)
        view.addSubview(imageViewTree)

        imageViewBush.center = CGPoint(x: view.center.x - 615 , y: view.center.y + 320)
        view.addSubview(imageViewBush)
        
        imageViewBigStone.center = CGPoint(x: view.center.x - 670 , y: view.center.y + 390)
        view.addSubview(imageViewBigStone)

        imageViewStoneUnderBush.center = CGPoint(x: view.center.x - 645 , y: view.center.y + 470)
        view.addSubview(imageViewStoneUnderBush)

        imageViewStone.center = CGPoint(x: view.center.x - 245 , y: view.center.y + 445)
        view.addSubview(imageViewStone)

        imageViewGrass1.center = CGPoint(x: view.center.x - 500 , y: view.center.y + 450)
        view.addSubview(imageViewGrass1)

        imageViewGrass2.center = CGPoint(x: view.center.x - 365 , y: view.center.y + 415)
        view.addSubview(imageViewGrass2)

        imageViewGrass3.center = CGPoint(x: view.center.x - 105 , y: view.center.y + 435)
        view.addSubview(imageViewGrass3)

        imageViewGrass4.center = CGPoint(x: view.center.x + 300 , y: view.center.y + 460)
        view.addSubview(imageViewGrass4)

        imageViewGrass5.center = CGPoint(x: view.center.x + 150 , y: view.center.y + 405)
        view.addSubview(imageViewGrass5)
        
        imageViewHome.center = CGPoint(x: view.center.x + 425 , y: view.center.y + 120)
        view.addSubview(imageViewHome)
        
        imageViewCat.center = CGPoint(x: view.center.x + 90 , y: view.center.y + 280)
        view.addSubview(imageViewCat)

        imageViewStoneRightSideCat.center = CGPoint(x: view.center.x + 550 , y: view.center.y + 430)
        view.addSubview(imageViewStoneRightSideCat)

        imageViewChat.center = CGPoint(x: view.center.x - 200 , y: view.center.y + 95)
        view.addSubview(imageViewChat)

        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 395
        textIntroStorytelling.frame.origin.x = 320
        textIntroStorytelling.setTypingIntroduction(text: "Mau main bersamaku?")
        view.addSubview(textIntroStorytelling)

        imageViewPlayButton.center = CGPoint(x: view.center.x + 427 , y: view.center.y + 260)
        view.addSubview(imageViewPlayButton)
        
        let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.startGamePage))
        imageViewPlayButton.addGestureRecognizer(tapSkip)
        imageViewPlayButton.isUserInteractionEnabled = true
        
//        animation
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageViewCloud1.center.y -= 80
        } completion: { isComplete in

        }

        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageViewCloud2.center.y -= 70
        } completion: { isComplete in

        }

        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageViewCloud3.center.y -= 60
        } completion: { isComplete in

        }

        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageViewCloud4.center.y -= 50
        } completion: { isComplete in

        }
        
//        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse]) {
//            self.imageViewPlayButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
//        } completion: { isComplete in
//
//        }
    }
    
    @objc func startGamePage(sender: UITapGestureRecognizer){
        
        imageViewPlayButton.frame.size = CGSize(width: 160, height: 160)
        UIView.animate(withDuration: 0.5){
            self.imageViewPlayButton.frame.size = CGSize(width: 150, height: 150)
        }
        imageViewHome.image = UIImage(named: "homeOpen")
    }
    
}

