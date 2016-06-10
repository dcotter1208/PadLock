//
//  IntroViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "IntroViewController.h"
#import "Realm/Realm.h"
@interface IntroViewController ()

@end

@implementation IntroViewController

NSMutableArray *badgeArray;

- (void)viewDidLoad {
    [super viewDidLoad];
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    NSLog(@"%@", realm.configuration.fileURL);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction) unwindToIntroVC:(UIStoryboardSegue *)unwindSegue {
    //used to unwind from the NavBarButton "Start Menu" on TriviaQuestionViewController.
}

@end
