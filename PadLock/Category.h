//
//  Category.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Category : NSObject

@property (strong, nonatomic) NSString *categoryName;
@property (strong, nonatomic) NSArray *subCategoryArray;

-(id)initWithCategoryName:(NSString *)categoryName andSubCategoryArray:(NSArray *)subCategoryArray;

@end
