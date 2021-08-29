//
//  DetailViewController.swift
//  TrackListInContainer
//
//  Created by Victoria Klimova on 29.08.2021.
//

import UIKit

class DetailViewController: UITableViewController {
    
    let imageNameArray = ["Singer1 - Song1",
                        "Singer2 - Song2",
                        "Singer3 - Song3",
                        "Singer4 - Song4",
                        "Singer5 - Song5",
                        "Singer6 - Song6",
                        "Singer7 - Song7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }


    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = parent as? ViewController {
            let trackTitle = imageNameArray[indexPath.row]
            viewController.titleLabel.text = trackTitle
            viewController.imageCover.image = UIImage(named: trackTitle)
        }
    }

}
