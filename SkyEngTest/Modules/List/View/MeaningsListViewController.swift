//
//  MeaningsListViewController.swift
//  SkyEngTest
//
//  Created by Сергей Филиппов on 08/11/2019.
//  Copyright © 2019 spacedema. All rights reserved.
//

import Foundation
import UIKit
import PKHUD

class MeaningsListViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Dependencies

    var presenter: IMeaningListViewOutput?

    // MARK: - Props
    
    let searchController = UISearchController(searchResultsController: nil)

    var ds: [MeaningModel] = []

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}

extension MeaningsListViewController: IMeaningListViewInput {

    func setData(meanings: [MeaningModel]) {
        ds = meanings
        tableView.reloadData()
    }

    func showError(text: String) {
        let alert = UIAlertController(title: "!!!", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true)
    }

    func showLoading() {
        HUD.show(.progress)
    }

    func hideLoading() {
        HUD.hide()
    }
}

extension MeaningsListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "meaningsListViewCell", for: indexPath) as? MeaningListViewCell else {
            return UITableViewCell()
        }
        cell.set(model: ds[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.cellDidTap(with: ds[indexPath.row])
    }
}

extension MeaningsListViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let queryText = searchBar.text else { return }
        presenter?.searchDidTap(searchText: queryText)
    }
}
