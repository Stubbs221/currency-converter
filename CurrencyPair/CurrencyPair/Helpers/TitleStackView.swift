//
//  TitleStackView.swift
//  CurrencyPair
//
//  Created by MAC on 04.08.2022.
//

import UIKit

class TitleStackView: UIStackView, UIScrollViewDelegate {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        axis = .horizontal
        alignment = .center
        addArrangedSubview(titleLabel)
        addArrangedSubview(button)
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize, weight: .heavy)
        label.text = "Currency"
        label.textColor = UIColor(named: "thirdColor")
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var button: UIButton = {
        let buttonWidth = 35.0
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: buttonWidth, height: buttonWidth)))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.heightAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        button.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        button.imageView?.tintColor = UIColor(named: "thirdColor")
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.widthAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        button.imageView?.heightAnchor.constraint(equalToConstant: buttonWidth).isActive = true
        return button
    }()
    
    
}
