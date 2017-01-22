//
//  AASchoolingTaskViewController.swift
//  RKPrototyping
//
//  Created by Warmkessel, Justin on 1/20/17.
//  Copyright © 2017 Warmkessel, Justin. All rights reserved.
//

import UIKit
import ResearchKit

class AASchoolingTaskViewController: AAAwareBaseViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentTheTask(task: self.taskConfiguration())
    }
    
    func taskConfiguration() -> ORKOrderedTask {
        let step = ORKFormStep(identifier: String(describing:"schoolingStepIdentifier1"), title: "Where are the places you spend most of your time", text: "")
        
        let answerFormat : ORKTextAnswerFormat = ORKAnswerFormat.textAnswerFormat()
        answerFormat.multipleLines = false
        
        let formItem01 = ORKFormItem(identifier: String(describing:"schoolingFormIdentifier1"), text: nil, answerFormat: answerFormat)
        
        
        formItem01.placeholder = NSLocalizedString("Add Home Address", comment: "")
        
        // A second field, for entering a time interval.
        let formItem02Text = NSLocalizedString("", comment: "")
        
        let formItem02 = ORKFormItem(identifier: String(describing:"schoolingFormIdentifier2"), text: formItem02Text, answerFormat: answerFormat)
        formItem02.placeholder = NSLocalizedString("Add Work/School Address", comment: "")
        
        let formItem03 = ORKFormItem(identifier: String(describing:"schoolingFormIdentifier3"), text: formItem02Text, answerFormat: answerFormat)
        formItem03.placeholder = NSLocalizedString("Additional Location", comment: "")
        
        step.formItems = [
            formItem01,
            formItem02,
            formItem03
        ]
        
        return ORKOrderedTask(identifier: String(describing:"schoolingTaskIdentifier"), steps: [step])
    }
}
