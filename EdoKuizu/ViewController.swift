//
//  ViewController.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 29/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var quizzes = [
        Quiz(question: "Japan is composed of five main islands.", answer: "FALSE"),
            Quiz(question: "Japanese hiragana and katakana characters share the same phonetic sounds.", answer: "FALSE"),
            Quiz(question: "The Aokigahara Forest is located at the base of Mount Fuji.", answer: "FALSE"),
            Quiz(question: "Japan has never experienced a major earthquake.", answer: "FALSE"),
            Quiz(question: "Sumo wrestlers follow a vegetarian diet.", answer: "FALSE"),
            Quiz(question: "The Japanese tea ceremony originated in the 19th century.", answer: "FALSE"),
            Quiz(question: "Japan has only one time zone.", answer: "FALSE"),
            Quiz(question: "Kyoto was the capital of Japan before Tokyo.", answer: "TRUE"),
            Quiz(question: "Japanese calligraphy originated from Chinese calligraphy.", answer: "TRUE"),
            Quiz(question: "The island of Okinawa has a subtropical climate.", answer: "TRUE")
    ]
    
    var quizNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = quizzes[quizNumber].question
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if (quizNumber < quizzes.count - 1) {
            quizNumber += 1
        } else {
            quizNumber = 0
        }
        
        questionLabel.text = quizzes[quizNumber].question
    }
    
}

