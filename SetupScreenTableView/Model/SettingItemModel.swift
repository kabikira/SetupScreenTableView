//
//  SettingItemModel.swift
//  SetupScreenTableView
//
//  Created by koala panda on 2023/06/16.
//

import Foundation

struct SettingItem {
    let emoji: String
    let title: String
}

let settings: [SettingItem] = [
    SettingItem(emoji: "👀", title: "アプリの説明"),
    SettingItem(emoji: "✉️", title: "お問い合わせ"),
    SettingItem(emoji: "📝", title: "プライバシーポリシー"),
    SettingItem(emoji: "📱", title: "バージョン Ver1.0")
]
