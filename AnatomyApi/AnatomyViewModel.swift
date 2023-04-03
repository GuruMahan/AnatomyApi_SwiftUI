//
//  AnatomyViewModel.swift
//  AnatomyApi
//
//  Created by Guru Mahan on 29/12/22.
//

import Foundation

class AnatomyViewModel: ObservableObject {
    
    @Published var dataList : AnatomyModel? = AnatomyModel.loadMockData()
}
