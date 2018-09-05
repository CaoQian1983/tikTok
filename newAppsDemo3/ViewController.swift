//
//  ViewController.swift
//  newAppsDemo3
//
//  Created by CaoQian on 2018/09/03.
//  Copyright © 2018 CaoQian. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "sample", ofType: "mp4")!
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        player.play()
        
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.zPosition = -1
        view.layer.insertSublayer(playerLayer, at: 0)

        let label = UILabel(frame: CGRect(x: 0, y:300, width: 200, height: 40))
        label.text = "やっほー"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textAlignment = .center
        label.center.x = view.center.x
        label.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        view.addSubview(label)
        
        
        
        let loginButton = UIButton(frame: .init(x: 30, y: view.frame.height - 150, width: view.frame.width - 60, height: 50))
        loginButton.setTitle("スタート", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.cornerRadius = 4
        loginButton.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        view.addSubview(loginButton)
    loginButton.addTarget(self, action
    }
}

