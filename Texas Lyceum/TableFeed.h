//
//  TableFeed.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 7/14/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableFeed : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
