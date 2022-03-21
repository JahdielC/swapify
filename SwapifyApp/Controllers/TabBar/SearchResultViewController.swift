//
//  SearchResultViewController.swift
//  SwapifyApp
//
//  Created by Apple on 10/03/2022.
//

import UIKit

class SearchResultViewController: UIViewController {

    @IBOutlet weak var SearchResultTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINibRegisterCell ()
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "SearchResultTableViewCell", bundle: nil)
        SearchResultTableView?.register(nib, forCellReuseIdentifier: "SearchResultTableViewCell")
        
    }
   
    @IBAction func backBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }

}
extension SearchResultViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultTableViewCell") as! SearchResultTableViewCell
        return cell
    }
    
    
    
}
