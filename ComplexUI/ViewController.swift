//
//  ViewController.swift
//  ComplexUI
//
//  Created by Windy on 26/03/21.
//

import UIKit

class ViewController: UITableViewController {

    private let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Complex UI"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.backgroundColor = .systemBackground
        tableView.register(HCell.self, forCellReuseIdentifier: "HCell")
        tableView.separatorStyle = .none
    }
    
}

extension ViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HCell") as! HCell
            cell.widthCell = 250
            cell.dataSource = viewModel.colorSection1
            cell.selectionHandler = { [weak self] color in
                guard let self = self else { return }
                self.viewModel.getColor(color: color)
            }
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HCell") as! HCell
            cell.widthCell = 150
            cell.dataSource = viewModel.colorSection2
            cell.selectionHandler = { [weak self] color in
                guard let self = self else { return }
                self.viewModel.getColor(color: color)
            }
            return cell
        } else {
            let cell = UITableViewCell()
            cell.selectionStyle = .none
            cell.textLabel?.text = "Cell with section \(indexPath.section) and row \(indexPath.row)"
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else if indexPath.section == 1 {
            return 175
        } else {
            return 64
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 2 ? 10 : 1
    }
    
}
