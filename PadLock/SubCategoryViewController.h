//
//  SubCategoryViewController.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Category.h"
#import "TriviaQuestionViewController.h"

@interface SubCategoryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property(strong, nonatomic) NSArray *subCategoryArray;

@end
