//
//  ViewController.swift
//  Week4-3
//
//  Created by Jordan Wu on 2022/4/15.
//

//func movieResonse(urlComponent: URLComponents) async throws -> MovieResponse {
//        let url = urlComponent.url!
//
//        let (data, response) = try await URLSession.shared.data(from: url)
//
//        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//            throw MovieServiceError.movieListNotFound
//        }
//
//        print(httpResponse.statusCode)
//        let decoder = JSONDecoder()
//        let movieResponse = try decoder.decode(MovieResponse.self, from: data)
//        return movieResponse
//    }


import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var labelID: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
     
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    let task = URLSession.shared.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
           
        if let error = error {
               print("Error", error)
               return
        }
        guard let httpResponse = response as? HTTPURLResponse else {
            print("not the right response")
            return
        }
        guard (200...299).contains(httpResponse.statusCode) else {
            print ("Error, status code", httpResponse.statusCode)
            return
        }
        guard let data = data else {
            print("bad data")
            return
        }
        do {
            
        let station = try JSONDecoder().decode(Station.self, from: data)
            
        DispatchQueue.main.async {
            self.labelID.text = station.stationID
            self.labelName.text = station.stationName
            self.labelAddress.text = station.stationAddress
           }
        } catch let error {
                print("Error", error)
            }
        }
       task.resume()
    }
    }
  
