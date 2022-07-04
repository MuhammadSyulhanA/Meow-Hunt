//
//  SceneOneDoneVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit
import AVFoundation

class SceneOneDoneVC: UIViewController {
    
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
           imgView.image = UIImage(named: "backgroundDone")
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
           imgView.frame.size = CGSize(width: 550, height: 550)
           imgView.image = UIImage(named: "mapsContinue")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()

       var textIntroStorytelling: UILabel = {
           let label = UILabel()
           label.frame.origin = CGPoint(x: 0, y: 0)
           label.frame.size = CGSize(width: 750, height: 370)
           label.numberOfLines = 0
           label.font = UIFont.systemFont(ofSize: 35)
           label.contentMode = .scaleAspectFill
           label.text = "Apakah kamu mau melanjutkan mencari\n\nharta karun ke tempat selajutnya?"
           label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
           return label
       }()
       
       var imageViewIyaButton: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 80, height: 80)
           imgView.image = UIImage(named: "iyaButton")
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
       
       var imageViewTidakButton: UIImageView = {
           let imgView = UIImageView()
           imgView.frame.origin = CGPoint(x: 0, y: 0)
           imgView.frame.size = CGSize(width: 80, height: 80)
           imgView.image = UIImage(named: "tidakButton")
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
           
           imageViewChat.center = view.center
           view.addSubview(imageViewChat)
           
           textIntroStorytelling.center = view.center
           textIntroStorytelling.frame.origin.y = 305
           textIntroStorytelling.frame.origin.x = 325
           playNextMap()
           textIntroStorytelling.setTypingIntroduction(text: "Apakah kamu mau melanjutkan mencari harta\n\nkarun ke tempat selajutnya?")
           view.addSubview(textIntroStorytelling)
           
           imageViewIyaButton.center = CGPoint(x: view.center.x - 240 , y: view.center.y + 160)
           view.addSubview(imageViewIyaButton)
           let tapYes = UITapGestureRecognizer(target: self, action: #selector(self.gameTwoPage))
           imageViewIyaButton.addGestureRecognizer(tapYes)
           imageViewIyaButton.isUserInteractionEnabled = true
           
           imageViewTidakButton.center = CGPoint(x: view.center.x + 220 , y: view.center.y + 160)
           view.addSubview(imageViewTidakButton)
           let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.homePage))
           imageViewTidakButton.addGestureRecognizer(tapSkip)
           imageViewTidakButton.isUserInteractionEnabled = true

       }
       
       @objc func gameTwoPage(sender: UITapGestureRecognizer){
           
           imageViewIyaButton.frame.size = CGSize(width: 90, height: 90)
           UIView.animate(withDuration: 0.5){
               self.imageViewIyaButton.frame.size = CGSize(width: 80, height: 80)
           }
           navigationController?.pushViewController(Intro2OneVC(), animated: false)
       }
       
       @objc func homePage(sender: UITapGestureRecognizer){
           
           imageViewTidakButton.frame.size = CGSize(width: 90, height: 90)
           UIView.animate(withDuration: 0.5){
               self.imageViewTidakButton.frame.size = CGSize(width: 80, height: 80)
           }
   //        navigationController?.pushViewController(IntroducingTwoVC(), animated: false)
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

    @objc func playNextMap(){
        self.playSound(file: "pertanyaan mau lanjut main ke meja belajar", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }
    
}

