//
//  DetailViewController.m
//  TwitterApplication
//
//  Created by Catherine Trishina on 17/08/2013.
//  Copyright (c) 2013 Catherine Trishina. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"


@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.detailLabel.text = self.tweetDetail;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
