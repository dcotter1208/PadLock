//
//  BadgeViewController.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Realm/Realm.h"

@interface BadgeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *badgeDisplayArray;
@property(nonatomic, strong) RLMResults *badges;


@end
