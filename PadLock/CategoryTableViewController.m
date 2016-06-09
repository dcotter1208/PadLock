//
//  CategoryTableViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "CategoryTableViewController.h"
#import "SubCategoryViewController.h"
#import "Category.h"
#import "SubCategory.h"

@interface CategoryTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

@end

@implementation CategoryTableViewController

NSArray *categoryArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTriviaQuestionsAndCategories];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTriviaQuestionsAndCategories {
    
    SubCategory *subCat1 = [[SubCategory alloc]initWithSubCategoryName:@"NFL" andQuestionArray:@[@""]];
    SubCategory *subCat2 = [[SubCategory alloc]initWithSubCategoryName:@"NBA" andQuestionArray:@[@""]];

    Category *category1 = [[Category alloc]initWithCategoryName:@"Sports" andSubCategoryArray:@[subCat1, subCat2]];
    Category *category2 = [[Category alloc]initWithCategoryName:@"Movies" andSubCategoryArray:@[@""]];
    Category *category3 = [[Category alloc]initWithCategoryName:@"History" andSubCategoryArray:@[@""]];
    
    categoryArray = @[category1,category2,category3];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [categoryArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCell" forIndexPath:indexPath];

    Category *category = [categoryArray objectAtIndex:indexPath.row];
    cell.textLabel.text = category.categoryName;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SubCategoryViewController *destVC = [segue destinationViewController];
    
    NSIndexPath *indexPath = [_categoryTableView indexPathForSelectedRow];

    Category *category = [categoryArray objectAtIndex:indexPath.row];

    destVC.subCategoryArray = category.subCategoryArray;
}

@end
