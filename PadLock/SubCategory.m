//
//  SubCategory.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "SubCategory.h"

@implementation SubCategory

-(id)initWithSubCategoryName:(NSString *)subCategoryName andQuestionArray:(NSArray *)questionArray {
    self = [super init];
    
    if (self) {
        _subCategoryName = subCategoryName;
        _questionArray = questionArray;
    }
    return self;
}

@end
