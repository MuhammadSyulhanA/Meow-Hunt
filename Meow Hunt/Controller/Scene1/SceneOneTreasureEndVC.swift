//
//  SceneOneTreasureEndVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit
import AVFoundation

class SceneOneTreasureEndVC: UIViewController {
    
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
            imgView.frame.size = CGSize(width: 350, height: 350)
            imgView.image = UIImage(named: "rectangleChatYellow")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        var textIntroStorytelling: UILabel = {
            let label = UILabel()
            label.frame.origin = CGPoint(x: 0, y: 0)
            label.frame.size = CGSize(width: 520, height: 370)
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 30)
            label.contentMode = .scaleAspectFill
            label.text = "Yeay, Selamat!\n\nKamu sudah berhasil merapikan kamar dan menemukan harta karun yang ada di balik lampu."
            label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
            return label
        }()
        
        var imageViewCat: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 400, height: 400)
            imgView.image = UIImage(named: "smileCat")
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
            playKamar6()
            textIntroStorytelling.setTypingIntroduction(text: "Yeay, Selamat!\n\nKamu sudah berhasil merapikan kamar dan menemukan harta karun yang ada di balik lampu.")
            view.addSubview(textIntroStorytelling)
            
            imageViewCat.center = CGPoint(x: view.center.x + 240 , y: view.center.y + 160)
            view.addSubview(imageViewCat)
            
            imageViewSkipButton.center = CGPoint(x: view.center.x + 580 , y: view.center.y + 385)
            view.addSubview(imageViewSkipButton)
            
            let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.continueGamePage))
            imageViewSkipButton.addGestureRecognizer(tapSkip)
            imageViewSkipButton.isUserInteractionEnabled = true
            
        }
        
        @objc func continueGamePage(sender: UITapGestureRecognizer){
            
            imageViewSkipButton.frame.size = CGSize(width: 160, height: 160)
            UIView.animate(withDuration: 0.5){
                self.imageViewSkipButton.frame.size = CGSize(width: 150, height: 150)
            }
            navigationController?.pushViewController(SceneOneDoneVC(), animated: true)
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

    @objc func playKamar6(){
        self.playSound(file: "kamar 6 (selamat)", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }
    
}

