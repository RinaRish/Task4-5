//
//  DetailViewController.h
//  TwitterApplication
//
//  Created by Catherine Trishina on 17/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import "ViewController.h"

@interface DetailViewController : ViewController

@property (nonatomic, weak) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) NSString *tweetDetail;


@end
