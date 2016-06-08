//
//  Category.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Category.h"

@implementation Category

-(id)initWithCategoryName:(NSString *)categoryName andSubCategoryArray:(NSArray *)subCategoryArray {
    
    self = [super init];
    
    if (self) {
        _categoryName = categoryName;
        _subCategoryArray = subCategoryArray;
    }
    
    return self;
}




@end
