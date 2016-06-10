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
    
    _badges = [Badge allObjects];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_badges count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"badgeCell" forIndexPath:indexPath];
    
    Badge *badge = [_badges objectAtIndex:indexPath.row];
    cell.textLabel.text = badge.level;
    cell.imageView.image = [UIImage imageNamed:badge.badgeImage];
    
    return cell;
}


@end
