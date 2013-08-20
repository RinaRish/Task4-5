//
//  ViewController.h
//  TwitterApplication
//
//  Created by Catherine Trishina on 17/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tweetTableView;
@property (strong, nonatomic) NSArray *dataSource;
@property (strong, nonatomic) NSArray *coordinates;


- (IBAction)postNewTweet:(id)sender;
@end
