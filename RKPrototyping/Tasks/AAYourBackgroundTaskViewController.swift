//
//  AAYourBackgroundTaskViewController.swift
//  RKPrototyping
//
//  Created by Warmkessel, Justin on 1/20/17.
//  Copyright © 2017 Warmkessel, Justin. All rights reserved.
//

import Foundation
import UIKit
import ResearchKit

class AAYourBackgroundTaskViewController: AAAwareBaseViewController {
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentTheTask(task: self.taskConfiguration())
    }
    
    //TASK ******************************************************************************************
    func taskConfiguration() -> ORKOrderedTask {
                
        let answerFormatInteger : ORKAnswerFormat = ORKAnswerFormat.integerAnswerFormat(withUnit: "years old")
        
        let formItem01 = ORKFormItem(identifier: String(describing:"identifier1"), text: nil, answerFormat: answerFormatInteger)
        let step1 = ORKFormStep(identifier: String(describing:"backgroundStep1"), title: "How old are you?", text: "")
        step1.formItems = [
            formItem01
        ]
        
        let textChoices2 = ["White", "Hispanic/Latino/a, Chicano/a", "Black, or African American", "Asian, or Pacific Islander", "American Indian, or Native Alaskan", "Other"]
        let step2 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 2, title: "What is your ethnicity, or racial background", detailText: "Select All That Apply:",choices: textChoices2, style: .multipleChoice)
        
        let textChoices3 = ["Female", "Male"]
        let step3 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 3, title: "What's your sex?", detailText: nil, choices: textChoices3, style: .singleChoice)
        
        let textChoices4 = ["Straight", "Gay, or Lesbian", "Bisexual", "Transgender", "Transexual, or Gender Non-Conforming"]
        let step4 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 4, title: "What's your sex?", detailText: "Please Select All That Apply:", choices: textChoices4, style: .multipleChoice)
        
        let textChoices5 = ["Single", "Married", "Living with significant other for more than a year", "Divorced", "Separated", "Widowed"]
        let step5 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 5, title: "What is your current relationship status?", detailText: nil, choices: textChoices5, style: .singleChoice)
        
        let textChoices6 = ["No, I have never been in the military.", "Yes, I am currently serving (active duty).", "Yes, I am a Veteran."]
        let step6 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 6, title: "Are you currently, or were you ever, a member of the U.S. military?", detailText: nil, choices: textChoices6, style: .singleChoice)
        
        let textChoices7 = ["Air Force", "Army", "Marine Corps", "Navy", "Coast Guard", "National Guard, or Reserves"]
        let step7 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 7, title: "In what branch of the military are you currently serve?", detailText: nil, choices: textChoices7, style: .singleChoice)
        
        let textChoices8 = ["No Schooling Completed (Less Than 1 Year)", "Elementary (Grades 1-8)", "High School (Grades 9-12)", "High School Graduate (or Equivalent)", "Some College (1-4 Years, No Degree)", "Associate's Degree (Including Occuptation, or Academic Degrees)", "Bachelor's Degree", "Master's Degree", "Professional School Degree (like MD, DDC, JD)", "Doctorate Degree (Like PhD, or EdD)"]
        let step8 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 8, title: "How many years of formal education have you completed?", detailText: "Select The Highest Completed:", choices: textChoices8, style: .singleChoice)
        
        let textChoices9 = ["Full-Time Employed", "Part-Time Employed", "Full-Time Student", "Part-Time Student", "Retired", "Disabled", "Unemployed, Seeking Work", "Unemployed, Not Seeking Work"]
        let step9 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 9, title: "What is your employment, or student status", detailText: nil, choices: textChoices9, style: .singleChoice)
        
        let textChoices10 = ["Less than $25,000 per year", "$25,000 to $49,000 per year", "$50,000 to $74,999 per year", "$75,000 to $100,000 per year", "More than $100,000 per year"]
        let step10 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 10, title: "What is your approximate household income?", detailText: nil, choices: textChoices10, style: .singleChoice)
        
        let textChoices11 = ["Excellent", "Very Good", "Good", "Fair", "Poor"]
        let step11 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 11, title: "Would you say, in general, your health is...", detailText: nil, choices: textChoices11, style: .singleChoice)
        
        let textChoices12 = ["Anxiety", "Bipolar Disorder", "Depression", "Posttraumatic Stress Disorder (PTSD)", "Schizophrenia", "Substance Abuse", "Traumatic Brain Injury (TBI)", "I've never been diagnosed with any of these conditions"]
        let step12 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 12, title: "Have you ever been diagonsed, or received treatment for any of the following", detailText: nil, choices: textChoices12, style: .multipleChoice)
        
        let textChoices13 = ["Insurance through a current or former employer or union (of you or another family member)", "Insurance purhcased directly from an insurance company", "Medicare, for people 65 and older, or people with certain disabilities", "Medicaid, Medical Assitance, or any kind of government-assistance plan for those with low-incomes or a disability", "TRICARE, or other military health care", "VA (including if you've ever used or enrolled for VA health care", "Indian Health Services", "I do not have any type of Health insurance."]
        let step13 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 13, title: "Are you currently covered by any of the following types of health insurance, or health coverage plans", detailText: "Select All That Apply:", choices: textChoices13, style: .multipleChoice)
        
        let textChoices14 = ["Transportation-related accident (car, motorcycle, boat, train, airplane", "Life-threatening illness or injury", "Physical assault (beaten up, shot, or stabbed)", "Sexual assault (rape, attempted rape, unwanted sexual experience, force or threat of harm to perform a sexual act", "Serious accident at home, work, or during a recreational activity", "Sudden violent or accidental death of another person", "Community violence", "Disaster (hurricane, tornado, earthquake tsunami, fire or explosion", "I have never experienced any of these types of events"]
        let step14 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 14, title: "Have you ever experienced any of the following types of events?", detailText: "Select All That Apply:", choices: textChoices14, style: .multipleChoice)
        
        let textChoices15 = ["Tracking health or fitness", "Communicating with a healthcare provider", "Calling, Texting, or emailing", "Getting directions", "Social networking (like Facebook, Instagram, or LinkedIn)", "Playing games", "Checking news", "Reading books, or magazines", "Listening to music", "Watching videos, tv shows, or movies", "I don't do any of these things"]
        let step15 = createTextChoiceStep(withRootIdentifier: "backgroundStep", stepNumber: 15, title: "Do you use your smartphone or table to do any of the following things?", detailText: "Select All That Apply:", choices: textChoices15, style: .multipleChoice)
        
        let step16 = ORKCompletionStep(identifier: "backgroundStep16")
        
        return ORKOrderedTask(identifier: String(describing:"taskIdentifier"), steps: [step1, step2, step3, step4, step5, step6, step7, step8, step9, step10, step11, step12, step13, step14, step15, step16])
    }
}

