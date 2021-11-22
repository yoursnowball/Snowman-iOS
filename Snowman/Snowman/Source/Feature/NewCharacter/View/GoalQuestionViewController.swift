//
//  GoalQuestionViewController.swift
//  Snowman
//
//  Created by 김윤서 on 2021/11/19.
//

import UIKit

final class GoalQuestionViewController: QuestionBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setProperties()
        makeCloseButton()
    }

    override func nextButtonDidTapped(_ sender: UIButton) {
        goToNextViewController()
    }

    override func textFieldDidChange(_ textField: UITextField) {
        super.textFieldDidChange(textField)
        NewGoal.shared.name = textField.text
    }

}

extension GoalQuestionViewController {
    private func setProperties() {
        numberLabelText = "1/3"
        questionLabelText = "당신의 목표는 무엇인가요?"
        descriptionLabelText = "목표"
        textFieldTextCount = 15
    }

    private func goToNextViewController() {
        let viewController = CharacterChoiceViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
extension GoalQuestionViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.returnKeyType == .done {
            goToNextViewController()
            return true
        } else {
            return false
        }
    }
}