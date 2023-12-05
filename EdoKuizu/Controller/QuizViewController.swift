//
//  ViewController.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 29/11/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = quizBrain.getQuestionText()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        quizBrain.checkAnswer(answer: sender.titleLabel!.text!)
        
        let quizNumber = quizBrain.nextQuiz()
        if (quizNumber == 0) {
            self.performSegue(withIdentifier: "goToResult", sender: self)
            quizBrain.randomizeQuizzes()
        }
        
        self.questionLabel.text = quizBrain.getQuestionText()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let resultVC = segue.destination as! ResultViewController
            resultVC.score = quizBrain.getScore()
        }
    }
}

