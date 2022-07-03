//
//  IntroducingThreeVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

struct Intro {
    var imageName: UIImageView!
    var text: String!
}

class IntroducingThreeVC: UIViewController {

    var dataIntro: [Intro] = []
    var hiddenViewIntro = UIImageView()

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
    
    var imageViewChat2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 250, height: 250)
        imgView.image = UIImage(named: "chatBoxIntro2")
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
        label.text = "Sepertinya kita harus merapikan\n\nbenda yang berserakan sebelum\n\nmencari harta karun!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    var textSecondStorytelling: UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 550, height: 370)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.contentMode = .scaleAspectFill
        label.text = "Kalau tidak kita bereskan lebih dulu,\n\nkita akan menginjak mainan itu lalu\n\nkaki kita akan terluka dan nanti\n\nmainannya akan rusak"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 400, height: 400)
        imgView.image = UIImage(named: "sadCat")
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
    
    var state = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackgroundLatar.center = view.center
        view.addSubview(imageViewBackgroundLatar)
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewBackgroundShadow.center = view.center
        view.addSubview(imageViewBackgroundShadow)
        
        let data1 = Intro(imageName: imageViewChat, text: "Sepertinya kita harus merapikan\n\nbenda yang berserakan sebelum\n\nmencari harta karun!")
        let data2 = Intro(imageName: imageViewChat, text: "Kalau tidak kita bereskan lebih dulu,\n\nkita akan menginjak mainan itu lalu\n\nkaki kita akan terluka dan nanti\nmainannya akan rusak")
        let data3 = Intro(imageName: imageViewChat2, text: "Ayo kita bereskan mainan dan cari\n\nharta karun!")
        
        dataIntro = [data1, data2, data3]
        
        imageViewChat.center = CGPoint(x: view.center.x - 220 , y: view.center.y - 150)
        view.addSubview(imageViewChat)

        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 145
        textIntroStorytelling.frame.origin.x = 205
        textIntroStorytelling.setTypingIntroduction(text: "Sepertinya kita harus merapikan\n\nbenda yang berserakan sebelum\n\nmencari harta karun!")
        view.addSubview(textIntroStorytelling)
        
        imageViewCat.center = CGPoint(x: view.center.x + 240 , y: view.center.y + 160)
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
        state += 1
        if state < dataIntro.count{
            imageViewChat = dataIntro[state].imageName
            textIntroStorytelling.text = dataIntro[state].text
            textIntroStorytelling.setTypingIntroduction(text: textIntroStorytelling.text!)
        } else {
            navigationController?.pushViewController(TutorialWrongVC(), animated: false)
        }
    }
}
