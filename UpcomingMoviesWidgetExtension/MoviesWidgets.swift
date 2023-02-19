//
//  MovieWidgets.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import WidgetKit
import SwiftUI

@main
struct MoviesWidgets: WidgetBundle {
    var body: some Widget {
        UpcomingMoviesWidget()
        SearchMoviesWidget()
    }
}

struct UpcomingMoviesWidget_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingMoviesWidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
