//
//  TextFieldContentView.swift
//  Today
//
//  Created by Zehra on 7.12.2022.
//

import UIKit

class TextFieldContentView: UIView {
    let textField = UITextField()
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 44, height: 44)
    }
    
    init() {
        super.init(frame: .zero)
        addPinnedSubview(textField, insets: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        textField.clearButtonMode = .whileEditing
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
