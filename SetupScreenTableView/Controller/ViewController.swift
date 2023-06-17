//
//  ViewController.swift
//  SetupScreenTableView
//
//  Created by koala panda on 2023/06/15.
//

import UIKit

class ViewController: UIViewController {


    private let image: UIImage! = UIImage(named: "test")
    
    @IBOutlet weak var iconImage: UIImageView! {
        didSet {
            iconImage.image = image
        }
    }

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib.init(nibName: TestViewCell.className, bundle: nil), forCellReuseIdentifier: TestViewCell.className)
            tableView.dataSource = self
            tableView.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()

    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestViewCell.className) as? TestViewCell else {
            fatalError()
        }
        let settingItem = settings[indexPath.row]

        cell.configure(setingItem: settingItem)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
