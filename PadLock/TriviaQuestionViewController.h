//
//  TriviaQuestionViewController.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubCategory.h"
#import "Badge.h"

@interface TriviaQuestionViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) SubCategory *subCategory;
@property (strong, nonatomic) NSMutableArray *badgeArray;



@end
