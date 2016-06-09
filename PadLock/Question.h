//
//  Question.h
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *wrongAnswerOne;
@property (strong, nonatomic) NSString *wrongAnswerTwo;
@property (strong, nonatomic) NSString *correctAnswer;

@property (strong, nonatomic) NSArray *answerArray;

-(id)initWithQuestion:(NSString *)question andWrongAnswerOne:(NSString *)wrongAnswerOne andWrongAnswerTwo:(NSString *)wrongAnswerTwo andCorrectAnswer:(NSString *)correctAnswer andAnswerArray:(NSArray *)answerArray;

@end
