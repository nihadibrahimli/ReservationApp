//
//  RestaurantLocation.swift
//  ReservationApp
//
//  Created by Gulzar Aghalarova on 2023-06-15.
//

import SwiftUI

struct RestaurantLocation:Hashable {
  let city:String
  let neighborhood:String
  let phoneNumber:String
  
  init(city:String = "",
       neighborhood:String = "",
       phoneNumber:String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}

