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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_subCategoryArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"subCatCell" forIndexPath:indexPath];
    
    SubCategory *subCategory = [_subCategoryArray objectAtIndex:indexPath.row];
    cell.textLabel.text = subCategory.subCategoryName;
    
    return cell;
}

@end
