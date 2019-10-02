//
//  ViewModelFactory.swift
//  VKMy
//
//  Created by Надежда Морозова on 02/10/2019.
//  Copyright © 2019 NadiaMorozova. All rights reserved.
//

import Foundation

final class ViewModelFactory {
    
    func constructViewModels(from friends: [User]) -> [ViewModel] {
        return friends.compactMap(self.viewModel)
    }
    
    private func viewModel(from friend: User) -> ViewModel {
        let nameText = friend.firstName
        let surnameText = friend.surName
        let iconImage = friend.imageString
        
        return ViewModel(nameText: nameText, surnameText: surnameText, iconImage: iconImage)
        
    
    }
    
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH.mm"
        return dateFormatter
    }()
}
