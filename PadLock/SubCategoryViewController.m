//
//  SubCategoryViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "SubCategoryViewController.h"
#import "SubCategory.h"

@interface SubCategoryViewController ()

@end

@implementation SubCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (SubCategory *sub in _subCategoryArray) {
        NSLog(@"%@", sub.subCategoryName);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//subCatCell

@end
