//
//  TestViewCell.swift
//  SetupScreenTableView
//
//  Created by koala panda on 2023/06/15.
//

import UIKit

final class TestViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    static var className: String { String(describing: TestViewCell.self)}

    override func prepareForReuse() {
        super.prepareForReuse()
        emojiLabel.text = nil
        titleLabel.text = nil

    }

    func configure(setingItem: SettingItem) {
        self.emojiLabel.text = setingItem.emoji
        self.titleLabel.text = setingItem.title
    }


}
