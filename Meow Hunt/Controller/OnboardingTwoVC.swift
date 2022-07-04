//
//  OnboardingTwoVC.swift
//  Meow Hunt
//
//  Created by Ferry Julian on 02/07/22.
//

import UIKit
import Foundation
import AVFoundation

class OnboardingTwoVC: UIViewController {
    
    // MARK: Music
    var soundURI: URL?
    var audioPlayer = AVAudioPlayer()
    
    // Multimedia
    var soundURIBackground: URL?
    var audioPlayerBackground = AVAudioPlayer()
    
    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 700, height: 1400)
        imgView.image = UIImage(named: "backgroundOnboarding")
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
        imgView.frame.size = CGSize(width: 265, height: 265)
        imgView.image = UIImage(named: "catDetectiveBag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewBush: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
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

    var imageViewStoneLeftSideCat: UIImageView = {
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
    
    var imageViewFlowers1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 60, height: 60)
        imgView.image = UIImage(named: "flowers")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewFlowers2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 60, height: 60)
        imgView.image = UIImage(named: "flowers")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewFlowers3: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 60, height: 60)
        imgView.image = UIImage(named: "flowers")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 450, height: 350)
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
        label.text = "Aku akan mengajak kamu ke rumahku dan bermain bersama!\n\nKita akan bermain mencari harta karun karena itu sangat seru."
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
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

        imageViewBush.center = CGPoint(x: view.center.x - 615 , y: view.center.y + 310)
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

        imageViewGrass4.center = CGPoint(x: view.center.x + 450 , y: view.center.y + 460)
        view.addSubview(imageViewGrass4)

        imageViewGrass5.center = CGPoint(x: view.center.x + 200 , y: view.center.y + 405)
        view.addSubview(imageViewGrass5)
        
        imageViewFlowers1.center = CGPoint(x: view.center.x - 355 , y: view.center.y + 345)
        view.addSubview(imageViewFlowers1)
        
        imageViewFlowers2.center = CGPoint(x: view.center.x - 155 , y: view.center.y + 345)
        view.addSubview(imageViewFlowers2)
        
        imageViewFlowers3.center = CGPoint(x: view.center.x + 65 , y: view.center.y + 345)
        view.addSubview(imageViewFlowers3)

        imageViewCat.center = CGPoint(x: view.center.x + 350 , y: view.center.y + 280)
        view.addSubview(imageViewCat)

        imageViewStoneLeftSideCat.center = CGPoint(x: view.center.x + 45 , y: view.center.y + 420)
        view.addSubview(imageViewStoneLeftSideCat)

        imageViewChat.center = CGPoint(x: view.center.x - 110 , y: view.center.y + 75)
        view.addSubview(imageViewChat)

        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 375
        textIntroStorytelling.frame.origin.x = 305
        textIntroStorytelling.setTypingIntroduction(text: "Aku akan mengajak kamu ke rumahku dan bermain bersama!\n\nKita akan bermain mencari harta karun karena itu sangat seru.")
        playTeksOnboard2()
        view.addSubview(textIntroStorytelling)

        imageViewSkipButton.center = CGPoint(x: view.center.x + 580 , y: view.center.y + 385)
        view.addSubview(imageViewSkipButton)
        
        let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.onboardingGamePage))
        imageViewSkipButton.addGestureRecognizer(tapSkip)
        imageViewSkipButton.isUserInteractionEnabled = true
        
//      animation
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

    }
    
    @objc func onboardingGamePage(sender: UITapGestureRecognizer){
        
        imageViewSkipButton.frame.size = CGSize(width: 160, height: 160)
        UIView.animate(withDuration: 0.5){
            self.imageViewSkipButton.frame.size = CGSize(width: 150, height: 150)
        }
        navigationController?.pushViewController(OnboardingTreeVC(), animated: false)
    }
    
    @objc func playSound(file: String, fileExtension: String, isLoop: Bool = false){
        soundURI = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURI else {return}
            audioPlayer = try AVAudioPlayer(contentsOf: uri)
            audioPlayer.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    @objc func playSoundLoop(file: String, fileExtension: String, isLoop: Bool = true){
        soundURIBackground = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURIBackground else {return}
            audioPlayerBackground = try AVAudioPlayer(contentsOf: uri)
            audioPlayerBackground.numberOfLoops =  -1
            audioPlayerBackground.play()
        } catch {
            // couldn't load file :(
        }
    }

    @objc func playTeksOnboard2(){
        self.playSound(file: "onboarding 2", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }
}
