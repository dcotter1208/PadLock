//
//  Badge.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Badge : NSObject

@property (strong, nonatomic) UIImage *badgeImage;
@property (strong, nonatomic) NSString *level;

-(id)initWithBadgeLevel:(NSString *)level andBadgeImage:(UIImage *)badgeImage;

@end
