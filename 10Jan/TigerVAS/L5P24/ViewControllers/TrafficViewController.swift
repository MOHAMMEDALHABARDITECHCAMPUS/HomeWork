//
//  TrafficViewController.swift
//  L5P24
//
//  Created by mac on 09/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class TrafficViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    // MARK : - Private Varibles
    private var TrafficItem : [TrafficItems] = [TrafficItems]()
    private var TrafficnibName = "TrafficTableViewCell"
    
    // MARK : - IBOutlets
    @IBOutlet weak var TableView: UITableView! {
    
    didSet {
        
        TableView.delegate = self
        TableView.dataSource = self
        TableView.register(UINib(nibName: TrafficnibName, bundle: nil), forCellReuseIdentifier: TrafficnibName)
    
    }
    }
    
    // MARK : - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setTrafficItemsArray()
        
        // Do any additional setup after loading the view.
    }
    
    // connot convert value of type string to expected argument
    // MARK : - Helpers تعبات الايتمز
    func setTrafficItemsArray() {
        TrafficItem = [TrafficItems(itemName:"توقف",ItemImage: UIImage(named:"stop"),itemDesc:"معنها قف وقوف تام ولا تتحرك"),TrafficItems(itemName:"منقطة سير",ItemImage: UIImage(named:"both-directions"),itemDesc:"منطقة سير على اتجاهين"),TrafficItems(itemName:"ممنوع",ItemImage: UIImage(named:"forbidden-left-turn"),itemDesc:"ممنوع الاتجاه لليسار"),TrafficItems(itemName:"دوران",ItemImage: UIImage(named:"forbidden"),itemDesc:"ممنوع الدوران للخلف"),TrafficItems(itemName:"اجباري",ItemImage: UIImage(named:"rightTurn"),itemDesc:"امامك اتجاه اجباري لليمين"),TrafficItems(itemName:"دوران",ItemImage: UIImage(named:"rotate"),itemDesc:"افضلية المرورو لمن بداخل الدوار"),TrafficItems(itemName:"ممنوع",ItemImage: UIImage(named:"turnprohibited"),itemDesc:"ممنوع الاتجاه لليمين")]
    }
    
    // MARK : - UITableViewDataSource اجباري اظافتها من متطلبات الداتا
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TrafficItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TrafficnibName, for: indexPath) as! TrafficTableViewCell
        cell.configureTraiffic(Trif: TrafficItem[indexPath.row])
        return cell
    }
    



}
