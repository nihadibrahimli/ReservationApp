//
//  LocationsView.swift
//  ReservationApp
//
//  Created by Gulzar Aghalarova on 2023-06-11.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack{
            LogoView()
            
            Text(model.displayingReservationForm ? "Reservation details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in  NavigationLink(destination: ReservationForm(restaurant)) {
                    RestaurantView(restaurant)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                }
                .listStyle(.plain)
            }
        }
        .padding()
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}
