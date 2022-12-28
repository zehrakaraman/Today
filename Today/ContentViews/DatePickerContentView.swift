//
//  DatePickerContentView.swift
//  Today
//
//  Created by Zehra on 28.12.2022.
//

import UIKit

class DatePickerContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        func updated(for state: UIConfigurationState) -> DatePickerContentView.Configuration {
            return self
        }
        
        var date = Date.now
        
        func makeContentView() -> UIView & UIContentView {
            return DatePickerContentView(configuration: self)
        }
    }
    
    let datePicker = UIDatePicker()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }
    
    init(configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
        addPinnedSubview(datePicker)
        datePicker.preferredDatePickerStyle = .inline
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        datePicker.date = configuration.date
    }
}

extension UICollectionViewListCell {
    func datePickerConfiguration() -> DatePickerContentView.Configuration {
        DatePickerContentView.Configuration()
    }
}
