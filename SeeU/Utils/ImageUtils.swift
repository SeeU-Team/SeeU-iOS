//
//  ImageUtils.swift
//  SeeU
//
//  Created by Thomas Fouan on 16/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

class ImageUtils {
    
    static func downloadAndSetImage(url: String, cornerRadius: CGFloat, imageView: UIImageView) {
        let url = URL(string: url)!
        
        imageView.af_setImage(withURL: url)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
    }
    
    static func downloadAndSetImageAsBackground(url: String, cornerRadius: CGFloat, view: UIView) {
        let url = URL(string: url)!
        let imageView = UIImageView(frame: view.bounds)
        
        imageView.af_setImage(withURL: url)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        
        view.addSubview(imageView)
        view.sendSubview(toBack: imageView)
    }
    
    /*
    func getDataFromUrl(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            completion(data, response, error)
            }.resume()
    }
 */
    /*
    func downloadImage(url: URL) {
        print("Download Started")
        getDataFromUrl(url: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
 */
}
