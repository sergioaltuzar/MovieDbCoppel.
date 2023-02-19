//
//  MovieSortType.swift
//  UpcomingMoviesDomain
//
//  Created by Sergio on 2/16/23.
//

public struct MovieSortType {

    public enum Watchlist {
        case createdAtAsc
        case createdAtDesc

        public func callAsFunction() -> String {
            switch self {
            case .createdAtAsc: return "created_at.asc"
            case .createdAtDesc: return "created_at.desc"
            }
        }
    }

    public enum Favorite {
        case createdAtAsc
        case createdAtDesc

        public func callAsFunction() -> String {
            switch self {
            case .createdAtAsc: return "created_at.asc"
            case .createdAtDesc: return "created_at.desc"
            }
        }
    }

}
