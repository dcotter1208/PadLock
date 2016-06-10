//
//  TriviaQuestionViewController.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubCategory.h"
#import "Realm/Realm.h"
#import "Badge.h"

@interface TriviaQuestionViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) SubCategory *subCategory;
@property (strong, nonatomic) RLMRealm *realm;


@end
