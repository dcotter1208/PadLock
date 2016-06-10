//
//  Badge.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Realm/Realm.h"
#import <UIKit/UIKit.h>

@interface Badge : RLMObject

@property (strong, nonatomic) NSString *badgeImage;
@property (strong, nonatomic) NSString *level;

-(id)initWithBadgeLevel:(NSString *)level andBadgeImage:(NSString *)badgeImage;

@end
