//
//  ViewController.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 29/11/23.
//

import UIKit

class ViewController: UIViewController {
        
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = quizBrain.getQuestionText()
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        let userGotIt = quizBrain.checkAnswer(answer: sender.titleLabel!.text!)
        
        if userGotIt {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            sender.backgroundColor = UIColor.clear
            quizBrain.nextQuiz()
            self.questionLabel.text = quizBrain.getQuestionText()
        }
    }
}

