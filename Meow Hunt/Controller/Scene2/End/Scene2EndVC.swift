//
//  Scene2EndVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 05/07/22.
//

import UIKit
import AVFoundation

class Scene2EndVC: UIViewController {
    
    // MARK: Music
    var soundURI: URL?
    var audioPlayer = AVAudioPlayer()
    
    // Multimedia
    var soundURIBackground: URL?
    var audioPlayerBackground = AVAudioPlayer()

    var imageViewBackground: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 1040, height: 1040)
           imgView.image = UIImage(named: "backgroundEnd")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
       
       var imageViewMaps: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 600, height: 500)
           imgView.image = UIImage(named: "mapsContinue")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()

       var textIntroStorytelling: UILabel = {
           let label = UILabel()
           label.frame.origin = CGPoint(x: 0, y: 0)
           label.frame.size = CGSize(width: 550, height: 370)
           label.numberOfLines = 0
           label.font = UIFont.systemFont(ofSize: 40)
           label.contentMode = .scaleAspectFill
           label.text = "SAMPAI BERTEMU LAGI! 👋👋"
           label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
           return label
       }()
       
       var imageViewOkeButton: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 80, height: 80)
           imgView.image = UIImage(named: "okeButton")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
       
       var imageViewCat1: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 500, height: 500)
           imgView.image = UIImage(named: "catBye1")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
       
       var imageViewCat2: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 500, height: 500)
           imgView.image = UIImage(named: "catBye2")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()

       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = .white
       
           imageViewBackground.center = view.center
           view.addSubview(imageViewBackground)
           
           imageViewMaps.center = CGPoint(x: view.center.x + 50 , y: view.center.y + 0)
           view.addSubview(imageViewMaps)
           
           textIntroStorytelling.center = view.center
           textIntroStorytelling.frame.origin.y = 295
           textIntroStorytelling.frame.origin.x = 460
           playEnd()
           textIntroStorytelling.setTypingIntroduction(text: "SAMPAI BERTEMU LAGI! 👋👋")
           view.addSubview(textIntroStorytelling)
           
           imageViewOkeButton.center = CGPoint(x: view.center.x + 40 , y: view.center.y + 135)
           view.addSubview(imageViewOkeButton)
           
           let tapOke = UITapGestureRecognizer(target: self, action: #selector(self.backGamePage))
           imageViewOkeButton.addGestureRecognizer(tapOke)
           imageViewOkeButton.isUserInteractionEnabled = true
           
           imageViewCat1.center = CGPoint(x: view.center.x - 500 , y: view.center.y + 335)
           view.addSubview(imageViewCat1)
           
           imageViewCat2.center = CGPoint(x: view.center.x - 500 , y: view.center.y + 335)
           view.addSubview(imageViewCat2)
           imageViewCat2.isHidden = true
           
           UIView.animate(withDuration: 0.5, delay: 0) {
               self.imageViewCat1.center.y -= 10
               self.imageViewCat1.isHidden = true
               self.imageViewCat2.isHidden = false
               } completion: { isComplete in
                   if isComplete {
                       UIView.animate(withDuration: 0.5, delay: 0) {
                           self.imageViewCat2.center.y -= 10
                           self.imageViewCat1.isHidden = false
                           self.imageViewCat2.isHidden = true
                       } completion: { isComplete in
                           if isComplete {
                               UIView.animate(withDuration: 0.5, delay: 0) {
                                   self.imageViewCat1.center.y -= 10
                                   self.imageViewCat1.isHidden = true
                                   self.imageViewCat2.isHidden = false
                           } completion: { isComplete in
                               if isComplete {
                                   UIView.animate(withDuration: 0.5, delay: 0) {
                                       self.imageViewCat1.center.y -= 10
                                       self.imageViewCat1.isHidden = false
                                       self.imageViewCat2.isHidden = true
                                   } completion: { isComplete in
                                       if isComplete {
                                           UIView.animate(withDuration: 0.5, delay: 0) {
                                               self.imageViewCat1.center.y -= 10
                                               self.imageViewCat1.isHidden = true
                                               self.imageViewCat2.isHidden = false
                                           } completion: { isComplete in
                                               if isComplete {
                                                   UIView.animate(withDuration: 0.5, delay: 0) {
                                                       self.imageViewCat1.center.y -= 10
                                                       self.imageViewCat1.isHidden = false
                                                       self.imageViewCat2.isHidden = true
                                                   } completion: { isComplete in
                                                       if isComplete {
                                                           UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
                                                               self.imageViewCat1.center.y -= 10
                                                               self.imageViewCat1.isHidden = true
                                                               self.imageViewCat2.isHidden = false
                                                           } completion: { isComplete in
                                                               if isComplete {
                                                                   UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
                                                                       self.imageViewCat1.center.y -= 10
                                                                       self.imageViewCat1.isHidden = false
                                                                       self.imageViewCat2.isHidden = true
                                                                   }
                                                               }
                                                           }
                                                       }
                                                   }
                                               }
                                           }
                                       }
                                   }
                               }
                           }
                       }
                   }
               }
           }
       }
       
       @objc func backGamePage(sender: UITapGestureRecognizer){
           
           imageViewOkeButton.frame.size = CGSize(width: 160, height: 160)
           UIView.animate(withDuration: 0.5){
               self.imageViewOkeButton.frame.size = CGSize(width: 150, height: 150)
           }
           navigationController?.pushViewController(OnboardingOneVC(), animated: true)
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

    @objc func playEnd(){
        self.playSound(file: "sampai bertemu lagi", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }

   }
