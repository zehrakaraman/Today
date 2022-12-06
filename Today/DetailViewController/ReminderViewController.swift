//
//  ReminderViewController.swift
//  Today
//
//  Created by Zehra on 6.12.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class ReminderViewController: UICollectionViewController {

    var reminder: Reminder
    
    init(reminder: Reminder) {
        self.reminder = reminder
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        listConfiguration.showsSeparators = false
        var listLayout = UICollectionViewCompositionalLayout.list(using: listConfiguration)
        //collectionView.collectionViewLayout = listLayout
        super.init(collectionViewLayout: listLayout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Always initialize ReminderViewController using init(reminder:)")
    }
    
    func text(for row: Row) -> String? {
        switch row {
        case .viewDate: return reminder.dueDate.dayText
        case .viewNotes: return reminder.notes
        case .viewTime: return reminder.dueDate.formatted(date: .omitted, time: .shortened)
        case .viewTitle: return reminder.title
        }
    }

}
