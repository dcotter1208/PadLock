//
//  SubCategoryViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "SubCategoryViewController.h"
#import "TriviaQuestionViewController.h"
#import "SubCategory.h"

@interface SubCategoryViewController ()
@property (weak, nonatomic) IBOutlet UITableView *subCategoryTableView;

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TriviaQuestionViewController *destVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [_subCategoryTableView indexPathForSelectedRow];
    
    destVC.subCategory = [_subCategoryArray objectAtIndex:indexPath.row];
}


@end
