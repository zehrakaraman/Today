//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Zehra on 5.12.2022.
//

import UIKit

extension ReminderListViewController {
    func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
