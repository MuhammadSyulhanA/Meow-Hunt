//
//  ViewController.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 28/06/22.
//

import UIKit
import Foundation
import AVFoundation

class OnboardingOneVC: UIViewController {
    
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
        imgView.image = UIImage(named: "bush")
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
        imgView.image = UIImage(named: "stone")
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
        label.text = "Hai! Namaku Leo 🦁👋\n\nSelamat datang di dunia Meow-Hunt yang penuh kejutan!"
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
        
        playGame()
        
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

        imageViewTree.center = CGPoint(x: view.center.x - 520 , y: view.center.y + 110)
        view.addSubview(imageViewTree)

        imageViewBush.center = CGPoint(x: view.center.x - 635 , y: view.center.y + 310)
        view.addSubview(imageViewBush)

        imageViewStoneUnderBush.center = CGPoint(x: view.center.x - 645 , y: view.center.y + 430)
        view.addSubview(imageViewStoneUnderBush)

        imageViewStone.center = CGPoint(x: view.center.x - 245 , y: view.center.y + 445)
        view.addSubview(imageViewStone)

        imageViewGrass1.center = CGPoint(x: view.center.x - 500 , y: view.center.y + 450)
        view.addSubview(imageViewGrass1)

        imageViewGrass2.center = CGPoint(x: view.center.x - 345 , y: view.center.y + 405)
        view.addSubview(imageViewGrass2)

        imageViewGrass3.center = CGPoint(x: view.center.x - 105 , y: view.center.y + 435)
        view.addSubview(imageViewGrass3)

        imageViewGrass4.center = CGPoint(x: view.center.x + 300 , y: view.center.y + 460)
        view.addSubview(imageViewGrass4)

        imageViewGrass5.center = CGPoint(x: view.center.x + 150 , y: view.center.y + 405)
        view.addSubview(imageViewGrass5)

        imageViewCat.center = CGPoint(x: view.center.x + 400 , y: view.center.y + 280)
        view.addSubview(imageViewCat)

        imageViewStoneLeftSideCat.center = CGPoint(x: view.center.x + 35 , y: view.center.y + 410)
        view.addSubview(imageViewStoneLeftSideCat)

        imageViewChat.center = CGPoint(x: view.center.x - 20 , y: view.center.y + 75)
        view.addSubview(imageViewChat)
        
        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 375
        textIntroStorytelling.frame.origin.x = 405
        textIntroStorytelling.setTypingIntroduction(text: "Hai! Namaku Leo 🦁👋\n\nSelamat datang di dunia Meow-Hunt yang penuh kejutan!")
        playTeksOnboard1()
        view.addSubview(textIntroStorytelling)
        
        imageViewSkipButton.center = CGPoint(x: view.center.x + 580 , y: view.center.y + 385)
        view.addSubview(imageViewSkipButton)
        
        let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.onboardingTwoPage))
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
    
//    override func viewWillAppear(_ animated: Bool) {
//        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.landscape, andRotateTo: UIInterfaceOrientation.landscapeLeft)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
//    }
    
    @objc func onboardingTwoPage(sender: UITapGestureRecognizer){
        
        imageViewSkipButton.frame.size = CGSize(width: 160, height: 160)
        UIView.animate(withDuration: 0.5){
            self.imageViewSkipButton.frame.size = CGSize(width: 150, height: 150)
        }
        navigationController?.pushViewController(OnboardingTwoVC(), animated: false)
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

    @objc func playTeksOnboard1(){
        self.playSound(file: "onboarding 1", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound3", fileExtension: "mp3", isLoop: true)
    }
    
}

extension UILabel {
    
    func setTypingIntroduction(text: String, characterDelay: TimeInterval = 5) {
        self.text = ""
          
        let writingTask = DispatchWorkItem { [weak self] in
          text.forEach { char in
            DispatchQueue.main.async {
              self?.text?.append(char)
            }
            Thread.sleep(forTimeInterval: characterDelay/100)
          }
        }
          
        let queue: DispatchQueue = .init(label: "typespeed", qos: .userInteractive)
        queue.asyncAfter(deadline: .now() + 0.05, execute: writingTask)
        
      }
}

