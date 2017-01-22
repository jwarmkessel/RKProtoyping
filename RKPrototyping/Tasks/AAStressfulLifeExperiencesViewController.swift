//
//  AAStressfulLifeExperiencesViewController.swift
//  RKPrototyping
//
//  Created by Warmkessel, Justin on 1/21/17.
//  Copyright © 2017 Warmkessel, Justin. All rights reserved.
//

import UIKit
import ResearchKit

class AAStressfulLifeExperiencesViewController: AAAwareBaseViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentTheTask(task: self.taskConfiguration())
    }
    
    func taskConfiguration() -> ORKOrderedTask {
        
        let textChoices = ["Not at all", "A little bit", "Moderately", "Quite a bit", "Extremely"]
        
        let step1 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 1, title: "In the past month, how much were you bothered by: Repeated, disturbing, and unwanted memories of a stressful experience", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step2 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 2, title: "In the past month, how much were you bothered by: Repeated, disturbing dreams of the stressful experience?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step3 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 3, title: "In the past month, how much were you bothered by: Suddenly feeling or acting as if the stressful experience were happening again (as if you were actually back there reliving it)?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step4 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 4, title: "In the past month, how much were you bothered by: Feeling very upset when something reminded you of the stressful experience?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step5 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 5, title: "In the past month, how much were you bothered by: Having strong reactions when something reminded you of the stressful experience (for example, heart pounding, trouble breathing, sweating)?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step6 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 6, title: "In the past month, how much were you bothered by: Avoiding memories, thoughts, or feelings related to the stressful experience?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step7 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 7, title: "In the past month, how much were you bothered by: Avoiding external reminders of the stressful experience (for example, people, places, conversations, activities, objects, or situations)?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step8 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 8, title: "In the past month, how much were you bothered by: Trouble remembering important parts of the stressful experience?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step9 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 9, title: "In the past month, how much were you bothered by: Having strong negative beliefs about yourself and, other people, or the world (for example, having thoughts such as: I am bad, there is something seriously wrong with me, no one can be trusted, the world is completely dangerous)?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step10 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 10, title: "In the past month, how much were you bothered by: Blaming yourself or someone else for the stressful experience or what happened after it?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step11 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 11, title: "In the past month, how much were you bothered by: Having strong feelings such as fear, horror, anger, guilt, or shame?", detailText: nil, choices: textChoices, style: .singleChoice)

        let step12 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 12, title: "In the past month, how much were you bothered by: Loss of interest in activities that you used to enjoy?", detailText: nil, choices: textChoices, style: .singleChoice)

        let step13 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 13, title: "In the past month, how much were you bothered by: Feeling distant or cut off from other people?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step14 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 14, title: "In the past month, how much were you bothered by: Trouble experiencing positive feelings (for example, being unable to feel happiness or have loving feelings for people close to you)?", detailText: nil, choices: textChoices, style: .singleChoice)

        let step15 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 15, title: "In the past month, how much were you bothered by: Irritable behavior, angry outbursts, or acting aggressively?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step16 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 16, title: "In the past month, how much were you bothered by: Taking too many risks or doing things that could cause you harm?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step17 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 17, title: "In the past month, how much were you bothered by: Being \"superalert\" or watchful or on guard?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step18 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 18, title: "In the past month, how much were you bothered by: Feeling jumpy or easily startled?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step19 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 19, title: "In the past month, how much were you bothered by: Having difficulty concentrating?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        let step20 = createTextChoiceStep(withRootIdentifier: "stressfulLifeExperiencesStep", stepNumber: 20, title: "In the past month, how much were you bothered by: Trouble falling or staying asleep?", detailText: nil, choices: textChoices, style: .singleChoice)
        
        return ORKOrderedTask(identifier: String(describing:"schoolingTaskIdentifier"), steps: [step1, step2, step3, step4, step5, step6, step7, step8, step9, step10, step11, step12, step13, step14, step15, step16, step17, step18, step19, step20])
    }
}
