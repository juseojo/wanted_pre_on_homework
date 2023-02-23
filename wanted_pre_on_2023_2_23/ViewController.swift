//
//  ViewController.swift
//  wanted_pre_on_2023_2_23
//
//  Created by seongjun cho on 2023/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        img1.image = UIImage(systemName: "photo")
        img2.image = UIImage(systemName: "photo")
        img3.image = UIImage(systemName: "photo")
        img4.image = UIImage(systemName: "photo")
        img5.image = UIImage(systemName: "photo")
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        img1.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/237/400/300")!, img_view: img1)
    }
    @IBAction func btn2(_ sender: UIButton) {
        img2.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/236/400/300")!, img_view: img2)
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        img3.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/235/400/300")!, img_view: img3)
    }
    @IBAction func btn4(_ sender: UIButton) {
        img4.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/234/400/300")!, img_view: img4)
    }
    @IBAction func btn5(_ sender: UIButton) {
        img5.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/233/400/300")!, img_view: img5)
    }
    @IBAction func btn_all(_ sender: UIButton) {
        img1.image = UIImage(systemName: "photo")
        img2.image = UIImage(systemName: "photo")
        img3.image = UIImage(systemName: "photo")
        img4.image = UIImage(systemName: "photo")
        img5.image = UIImage(systemName: "photo")
        imageDownload(url: URL(string: "https://picsum.photos/id/237/400/300")!, img_view: img1)
        imageDownload(url: URL(string: "https://picsum.photos/id/236/400/300")!, img_view: img2)
        imageDownload(url: URL(string: "https://picsum.photos/id/235/400/300")!, img_view: img3)
        imageDownload(url: URL(string: "https://picsum.photos/id/234/400/300")!, img_view: img4)
        imageDownload(url: URL(string: "https://picsum.photos/id/233/400/300")!, img_view: img5)
    }
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!

    
    func imageDownload(url: URL, img_view: UIImageView) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else
            {
                    print("Download image fail -> \(url)")
                    return
            }

            DispatchQueue.main.async() {
                print("Download image success -> \(url)")
                img_view.image = image
            }
        }.resume()
    }

}

