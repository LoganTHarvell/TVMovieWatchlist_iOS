//
//  AppUser.swift
//  Team4ProjectApp
//
//  Created by Logan Harvell on 11/28/17.
//  Copyright © 2017 Logan Harvell. All rights reserved.
//

import Foundation

final class AppUser {
  
  var id: String
  var email: String
  var password: String
  var auth_token: String
  var watchlist: Watchlist?
  
  struct Watchlist : Codable {
    let id: Int
    let movie_id: Int?
    let tv_id: Int?
    let title: String
    let releaseDate: String
    let user_id: String?
  }
  
  required init(id: String, email: String, password: String,
                auth_token: String, watchlist: Watchlist) {
    self.id = id
    self.email = email
    self.password = password
    self.auth_token = auth_token
    self.watchlist = watchlist
  }
  
  public static func initUserFromWebApp(email: String,
                                        password: String) -> AppUser {
    var authenticated = false
    var watchlistReceieved = false
    
    var userJSON: WebAppApi.User?
    var watchlist: [AppUser.Watchlist]?
    
    WebAppApi.login(email: email, password: password) { (completionBlock) in
      userJSON = completionBlock
      authenticated = true
    }
    
    repeat {
      RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
    } while !authenticated
        
//    WebAppApi.getWatchlist() { (completionBlock) in
//      watchlist = completionBlock
//      watchlistReceieved = true
//    }
//
//    repeat {
//      RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
//    } while !watchlistReceieved
//
//    WebAppApi.currentTask?.cancel()
//
    let user = AppUser.init(id: userJSON!.id, email: email, password: password,
                            auth_token: userJSON!.authentication_token,
                            watchlist: Watchlist(id: 1, movie_id: 2, tv_id: nil,
                                                 title: "somethin", releaseDate: "date", user_id: userJSON?.id))
    return user
  }
}
