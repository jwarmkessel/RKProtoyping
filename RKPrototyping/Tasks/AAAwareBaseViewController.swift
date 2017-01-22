//
//  AAAwareBaseViewController.swift
//  RKPrototyping
//
//  Created by Warmkessel, Justin on 1/21/17.
//  Copyright © 2017 Warmkessel, Justin. All rights reserved.
//

import Foundation
import UIKit
import ResearchKit

class AAAwareBaseViewController: UIViewController {
    
    func presentTheTask(task : ORKOrderedTask) {
        let taskViewController = ORKTaskViewController(task: task, taskRun: nil)
        taskViewController.delegate = self
        
        present(taskViewController, animated: true, completion: nil)
    }
    
    func createTextChoiceStep(withRootIdentifier : String, stepNumber: Int, title: String, detailText: String?, choices: [String], style: ORKChoiceAnswerStyle) ->ORKQuestionStep {
        
        var textChoices : [ORKTextChoice] = [ORKTextChoice]()
        
        for (index, element) in choices.enumerated() {
            
            let textChoice : ORKTextChoice = ORKTextChoice(text: element, value: String(describing:"\(withRootIdentifier)\(index)") as NSCoding & NSCopying & NSObjectProtocol)
            textChoices.append(textChoice)
        }
        
        let answerFormat : ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: style, textChoices: textChoices)
        let step : ORKQuestionStep = ORKQuestionStep(identifier: String(describing:"\(withRootIdentifier)\(stepNumber)"), title: title, text: detailText, answer: answerFormat)
        
        return step
    }
    
    //END TASK ******************************************************************************************
    
}

extension AAAwareBaseViewController: ORKTaskViewControllerDelegate {
    
    public func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        /*
         The `reason` passed to this method indicates why the task view
         controller finished: Did the user cancel, save, or actually complete
         the task; or was there an error?
         
         The actual result of the task is on the `result` property of the task
         view controller.
         */
        
        //TODO: They are using a generic completion handler to deal with results.
        //        taskResultFinishedCompletionHandler?(taskViewController.result)
        
        taskViewController.dismiss(animated: true, completion: nil)
    }
}


