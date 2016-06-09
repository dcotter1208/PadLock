//
//  IntroViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "IntroViewController.h"
#import "TriviaQuestionViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

NSMutableArray *badgeArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    badgeArray = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) unwindToIntroVC:(UIStoryboardSegue *)unwindSegue {
    TriviaQuestionViewController *srcViewController = [unwindSegue sourceViewController];
    
    badgeArray = srcViewController.badgeArray;
    NSLog(@"%@",badgeArray.description);
}


@end
