//
//  Scene2DoneVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 05/07/22.
//

import UIKit
import AVFoundation

class Scene2DoneVC: UIViewController {
    
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
        
        var imageViewChat: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 350, height: 350)
            imgView.image = UIImage(named: "chatRectangleLeft")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()
        
        var imageViewCat: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 400, height: 400)
            imgView.image = UIImage(named: "catEnd")
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
            label.text = "Kita sudah mengunjungi semua tempat\nuntuk mencari harta karun di rumahku.\n\nAku sangat senang bermain bersamamu\nhari ini!"
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
            
            imageViewCat.center = CGPoint(x: view.center.x - 250 , y: view.center.y + 200)
            view.addSubview(imageViewCat)

            imageViewChat.center = CGPoint(x: view.center.x + 220 , y: view.center.y - 75)
            view.addSubview(imageViewChat)
            
            textIntroStorytelling.center = view.center
            textIntroStorytelling.frame.origin.y = 215
            textIntroStorytelling.frame.origin.x = 630
            playDone()
            textIntroStorytelling.setTypingIntroduction(text: "Kita sudah mengunjungi semua tempat\nuntuk mencari harta karun di rumahku.\n\nAku sangat senang bermain bersamamu\nhari ini!")
            view.addSubview(textIntroStorytelling)
            
            imageViewSkipButton.center = CGPoint(x: view.center.x + 580 , y: view.center.y + 385)
            view.addSubview(imageViewSkipButton)
            
            let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.sceneEndPage))
            imageViewSkipButton.addGestureRecognizer(tapSkip)
            imageViewSkipButton.isUserInteractionEnabled = true
            
        }
        
        @objc func sceneEndPage(sender: UITapGestureRecognizer){
            
            imageViewSkipButton.frame.size = CGSize(width: 160, height: 160)
            UIView.animate(withDuration: 0.5){
                self.imageViewSkipButton.frame.size = CGSize(width: 150, height: 150)
            }
            navigationController?.pushViewController(Scene2EndVC(), animated: false)
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

    @objc func playDone(){
        self.playSound(file: "scene selesai cari harta karun", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }

}

