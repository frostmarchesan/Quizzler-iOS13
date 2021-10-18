//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    var quizBrain = QuizBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
        updateView()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if (quizBrain.checkAnswer(userAnswer)){
            sender.backgroundColor = .green
            countLabel.text = quizBrain.getCountNumber(userAnswer)
        } else {
            sender.backgroundColor = .red
        }

        if (quizBrain.restartCount()){
            countLabel.text = "0"
        }
        
        quizBrain.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.updateView()
        }
    }
    
    func updateView() {
        questionLabel.text = quizBrain.upDateLabelText()
        progressBar.progress = quizBrain.upDateProgressBar()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }


}

