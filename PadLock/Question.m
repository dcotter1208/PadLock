//
//  Question.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Question.h"

@implementation Question

-(id)initWithQuestion:(NSString *)question andWrongAnswerOne:(NSString *)wrongAnswerOne andWrongAnswerTwo:(NSString *)wrongAnswerTwo andCorrectAnswer:(NSString *)correctAnswer{
    self = [super init];
    
    if (self) {
        _question = question;
        _wrongAnswerOne = wrongAnswerOne;
        _wrongAnswerTwo = wrongAnswerTwo;
        _correctAnswer = correctAnswer;
    }
    return self;
}

@end
