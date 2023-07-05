//
//  ViewController.swift
//  TestAlphaVideo
//
//  Created by wudijimao on 2021/9/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        let avPlayerLayer = AVPlayerLayer.init(player: AVPlayer.init(url: Bundle.main.url(forResource: "puppets_with_alpha_hevc", withExtension: "mov")!))
        self.view.layer.addSublayer(avPlayerLayer)
        avPlayerLayer.frame = self.view.bounds
        avPlayerLayer.isOpaque = false
        avPlayerLayer.player?.play()
    }


}

