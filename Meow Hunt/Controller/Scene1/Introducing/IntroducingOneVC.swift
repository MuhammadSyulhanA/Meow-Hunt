//
//  IntroducingOneVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

class IntroducingOneVC: UIViewController {

    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1040, height: 1040)
        imgView.image = UIImage(named: "backgroundIntro")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBackgroundLatar: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1040, height: 1040)
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
    
    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 350, height: 350)
        imgView.image = UIImage(named: "rectangleChatYellow")
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
        label.text = "Ada harta karun tersembunyi di sini! Kita harus mencari harta karunnya! Pasti ada di sekitar sini!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 400, height: 400)
        imgView.image = UIImage(named: "cat")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSkipButton: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "skipButton2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackgroundLatar.center = view.center
        view.addSubview(imageViewBackgroundLatar)
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewBackgroundShadow.center = view.center
        view.addSubview(imageViewBackgroundShadow)
        
        imageViewChat.center = CGPoint(x: view.center.x - 220 , y: view.center.y - 150)
        view.addSubview(imageViewChat)
        
        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 145
        textIntroStorytelling.frame.origin.x = 205
        textIntroStorytelling.setTypingIntroduction(text: "Ada harta karun tersembunyi di sini!\n\nKita harus mencari harta karunnya!\n\nPasti ada di sekitar sini!!")
        view.addSubview(textIntroStorytelling)
        
        imageViewCat.center = CGPoint(x: view.center.x + 230 , y: view.center.y + 160)
        view.addSubview(imageViewCat)
        
        imageViewSkipButton.center = CGPoint(x: view.center.x + 580 , y: view.center.y + 385)
        view.addSubview(imageViewSkipButton)
        
        let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.introducingTwoPage))
        imageViewSkipButton.addGestureRecognizer(tapSkip)
        imageViewSkipButton.isUserInteractionEnabled = true
        
    }
    
    @objc func introducingTwoPage(sender: UITapGestureRecognizer){
        
        imageViewSkipButton.frame.size = CGSize(width: 160, height: 160)
        UIView.animate(withDuration: 0.5){
            self.imageViewSkipButton.frame.size = CGSize(width: 150, height: 150)
        }
        navigationController?.pushViewController(IntroducingTwoVC(), animated: false)
    }
}
