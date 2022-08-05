//
//  AddCurrencyCell.swift
//  CurrencyPair
//
//  Created by MAC on 03.08.2022.
//

import UIKit

class AddCurrencyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    lazy var cellView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "firstColor")
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var ticketLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        label.textColor = UIColor(named: "thirdColor")
        return label
    }()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: SetupUI

extension AddCurrencyCell {
    private func setupUI() {
        contentView.addSubview(cellView)
        cellView.addSubview(ticketLabel)
        contentView.backgroundColor = UIColor(named: "secondColor")
        
        NSLayoutConstraint.activate([
            cellView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            cellView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cellView.heightAnchor.constraint(equalToConstant: 80),
            cellView.widthAnchor.constraint(equalToConstant: 250)])
        
        NSLayoutConstraint.activate([
            ticketLabel.centerXAnchor.constraint(equalTo: cellView.centerXAnchor),
            ticketLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor)])
    }
}
