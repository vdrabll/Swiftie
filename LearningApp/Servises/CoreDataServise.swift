//
//  CoreDataServise.swift
//  LearningApp
//
//  Created by Виктория Федосова on 22.05.2023.
//

import Foundation
import UIKit
import CoreData

final class CoreDataServise {
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetchLessionIntoBD(id: String, name: String, content: String, quiz: String) {
        var entity = NSEntityDescription.entity(forEntityName: "SwiftLessions", in: context)
               var newLession = SwiftLessions(entity: entity!, insertInto: context)
                newLession.lession_name = name
                newLession.lession_data = content
                newLession.lession_questions = quiz
               do {
                   try context.save()
               } catch {
                   print(error.localizedDescription)
               }
    }
    
    func getItem(with id: UUID?, complitionhandler: (Lession) -> ()) {
        let entity = NSEntityDescription.entity(forEntityName: "SwiftLessions", in: context)

        let fetchRequest: NSFetchRequest<SwiftLessions> = SwiftLessions.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", "\(String(describing: id))")

        do {
            let result = try context.fetch(fetchRequest)
            if let entity = result.first {
                 var lession = Lession(name: entity.lession_name!,
                                           content: entity.lession_data!,
                                           questions: entity.lession_questions!)
                complitionhandler(lession)
            } else {
                print("Object not found")
            }
        } catch {
            print("Error fetching object: (error)")
        }
    }
}
