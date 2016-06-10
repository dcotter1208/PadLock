//
//  TriviaQuestionViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "TriviaQuestionViewController.h"
#import "Question.h"
#import "Badge.h"

@interface TriviaQuestionViewController ()
@property (weak, nonatomic) IBOutlet UITableView *questionAnswerTableView;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *padLockImageView;
@end

Question *question;
int currentQuestionIndex;
@implementation TriviaQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self triviaQuestionViewControllerSetUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [question.answerArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"answerCell" forIndexPath:indexPath];
    cell.textLabel.text = [question.answerArray objectAtIndex:indexPath.row];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *selectedAnswer = [question.answerArray objectAtIndex:tableView.indexPathForSelectedRow.row];
    [self checkForAnswerCorrectness:selectedAnswer];

}


-(void)checkForAnswerCorrectness:(NSString *)answer {
    
    if ([answer isEqualToString:question.correctAnswer]) {
        [self displayAlert:@"Correct!" alertMessage:nil];
    } else {
        [self displayAlert:@"Wrong!" alertMessage:nil];
    }
}

-(void)triviaQuestionViewControllerSetUp {
    _realm = [RLMRealm defaultRealm];
    currentQuestionIndex = 0;
    question = _subCategory.questionArray[currentQuestionIndex];
    [self shuffleArray:question.answerArray];
    _questionLabel.text = question.question;
}

-(void)displayAlert:(NSString *)alertTitle alertMessage:(NSString *)alertMessage {
   
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
        if ([alertTitle isEqualToString:@"Correct!"]) {
            [self nextQuestion];
        }
    }];
    
    [alertController addAction:action];
}

-(NSArray *)shuffleArray:(NSMutableArray *)questionAnswerArray {
    
    for (int i = 0; i < questionAnswerArray.count; i++) {
        int randomInt = arc4random() % [questionAnswerArray count];
        [questionAnswerArray exchangeObjectAtIndex:i withObjectAtIndex:randomInt];
    }
    return questionAnswerArray;
}

-(void)nextQuestion {

    if (currentQuestionIndex < _subCategory.questionArray.count -1) {
        currentQuestionIndex++;
        question = _subCategory.questionArray[currentQuestionIndex];
        [self shuffleArray:question.answerArray];
        _questionLabel.text = question.question;
        [_questionAnswerTableView reloadData];
    } else {
        [_padLockImageView setImage:[UIImage imageNamed:@"padlockOpen"]];
        Badge *badge = [[Badge alloc]initWithBadgeLevel:@"Level 1" andBadgeImage:@"levelOne"];
        [self displayAlert:@"Congrats!" alertMessage:[NSString stringWithFormat:@"you won a badge for %@. Check your earned badges by going to the start menu.", badge.level]];
        [self writeToRealm:badge];
    }
}

-(void)writeToRealm:(Badge *)badge {
    [_realm beginWriteTransaction];
    [_realm addObject:badge];
    [_realm commitWriteTransaction];
}


@end
