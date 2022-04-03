//
//  ViewController.swift
//  MemeMaker
//
//  Created by zac on 2021/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak private var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak private var topCaptionLabel: UILabel!
    @IBOutlet weak private var bottomCaptionLabel: UILabel!

    private var topChoices = [CaptionOption]()
    private var bottomChoices = [CaptionOption]()
    
    private let needChoice = CaptionOption(emoji: "👊", caption: "What Do I Need Now?" )
    private let lifeChoice = CaptionOption(emoji: "🌲", caption: "What Is Important in Life?")
    private let mindChoice = CaptionOption(emoji: "🏃🏻", caption: "What Should I Keep in Mind?")
    private let passionChoice = CaptionOption(emoji: "💡", caption: "PASSION")
    private let faithChoice = CaptionOption(emoji: "💎", caption: "FAITH")
    private let loveChoice = CaptionOption(emoji: "💓", caption: "LOVE")

    @IBAction private func tapSegmentedControl(_ sender: UISegmentedControl) {
        updateCaption()
    }
    
}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        topChoices = [needChoice, lifeChoice, mindChoice]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        bottomChoices = [passionChoice, faithChoice, loveChoice]
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateCaption()
    }
}

extension ViewController {
    
    private func updateCaption() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
    }
    
}

