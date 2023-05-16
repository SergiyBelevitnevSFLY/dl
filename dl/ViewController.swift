//
//  ViewController.swift
//  dl
//
//  Created by Belevitnev on 16.05.2023.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let dict = ["Account": "shutterfly-staging://mobile/v2/screens/account",
                "Decor": "shutterfly-staging://mobile/v2/categories/decor",
                "Cases": "shutterfly-staging://mobile/v2/categories/cases",
                "Books": "shutterfly-staging://mobile/v2/categories/books",
                "Prints": "shutterfly-staging://mobile/v2/categories/prints",
                "Cards": "shutterfly-staging://mobile/v2/categories/cards",
                "Wedding": "shutterfly-staging://mobile/v2/categories/Cards/Wedding+Cards",
                "Save The Dates": "shutterfly-staging://mobile/v2/categories/Cards/Wedding+Cards/Save+the+Dates",
                "Store": "shutterfly-staging://mobile/v2/screens/store",
                "Photos": "shutterfly-staging://mobile/v2/screens/photos",
                "Upload": "shutterfly-staging://mobile/v2/screens/upload",
                "Cart": "shutterfly-staging://mobile/v2/screens/cart",
                "Promos": "shutterfly-staging://mobile/v2/screens/promos",
                "Projects": "shutterfly-staging://mobile/v2/screens/projects",
                "Order History": "shutterfly-staging://mobile/v2/screens/orderhistory",
                "Sign Up": "shutterfly-staging://mobile/v2/screens/signup",
                "Sign In": "shutterfly-staging://mobile/v2/screens/signin",
                "Notification": "shutterfly-staging://mobile/v2/screens/notification",
                "Specials": "shutterfly-staging://mobile/v2/screens/specials",
                "Search": "shutterfly-staging://mobile/v2/screens/search?keyword=mug",
                "Styles Books": "shutterfly-staging://mobile/v2/screens/styles_books",
                "Timeline": "shutterfly-staging://mobile/v2/screens/timeline",
                "FBAM": "shutterfly-staging://mobile/v2/section/free_book_a_month",
                "PUAS": "shutterfly-staging://mobile/v2/section/pick_up_at_store",
                "Lifetouch": "shutterfly-staging://mobile/v2/section/lifetouch",
                "Social book instagram": "shutterfly-staging://mobile/v2/section/social_book?source=instagram",
                "Wedding Sample Kit": "shutterfly-staging://mobile/v2/section/wedding_sample_kit",
                "Metal Ornament": "shutterfly-staging://mobile/v2/products/Metal%20Ornament[?thumbnailPage=true]",
                "Settings": "shutterfly-staging://mobile/v2/screens/settings",
                "Gifts": "shutterfly-staging://mobile/v2/categories/gifts"
                ]
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 22
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Array(dict.keys)[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            let urlString =  Array(dict.values)[indexPath.row]
            if let url = URL(string: urlString)
            {
                UIApplication.shared.open(url)
            }
        }
    
   


}

