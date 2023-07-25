//
//  DatabaseManager.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 25/07/2023.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    static let shared = DatabaseManager()
    private let database = Firestore.firestore()
    
    private init (){
        
    }
    
    public func insert(
        blogPost: BlogPost,
        user : User,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func getAllPosts(
        
        completion: @escaping ([BlogPost]) -> Void
    ){
        
    }
    
    public func getPosts(
        for user : User,
        completion: @escaping ([BlogPost]) -> Void
    ){
        
    }
    
    public func insertUser(
        user : User,
        completion: @escaping (Bool) -> Void
    ){
        
    }
}
