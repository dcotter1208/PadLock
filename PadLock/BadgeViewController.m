//
//  BadgeViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "BadgeViewController.h"
#import "Badge.h"

@interface BadgeViewController ()

@end

@implementation BadgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",_badgeDisplayArray.description);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_badgeDisplayArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"badgeCell" forIndexPath:indexPath];
    
    Badge *badge = [_badgeDisplayArray objectAtIndex:indexPath.row];
    cell.textLabel.text = badge.level;
    cell.imageView.image = badge.badgeImage;
    
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
