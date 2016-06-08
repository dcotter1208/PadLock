//
//  SubCategory.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubCategory : NSObject

@property(strong, nonatomic) NSString *subCategoryName;
@property(strong, nonatomic) NSArray *questionArray;

-(id)initWithSubCategoryName:(NSString *)subCategoryName andQuestionArray:(NSArray *)questionArray;

@end
