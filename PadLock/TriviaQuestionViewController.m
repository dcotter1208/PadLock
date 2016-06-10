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
@end

Question *question;
NSArray *answerArray;
int currentQuestionIndex;

@implementation TriviaQuestionViewController

- (void)viewDidLoad {
//    [self.navigationController setNavigationBarHidden:true];
    [super viewDidLoad];
    _realm = [RLMRealm defaultRealm];
    
    NSLog(@"%@", _realm.configuration.fileURL);
    
    _badgeArray = [[NSMutableArray alloc]init];
    currentQuestionIndex = 0;
    question = _subCategory.questionArray[currentQuestionIndex];
    [self shuffleArray:question.answerArray];
    _questionLabel.text = question.question;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        [self displayAlert:@"Correct!"];
    } else {
        [self displayAlert:@"Wrong!"];
    }
    
}

-(void)displayAlert:(NSString *)alertMessage {
   
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertMessage message:nil preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
        if ([alertMessage isEqualToString:@"Correct!"]) {
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
        Badge *badge = [[Badge alloc]initWithBadgeLevel:@"Level 1" andBadgeImage:@"levelOne"];
        [self writeToRealm:badge];
    }
}

-(void)writeToRealm:(Badge *)badge {
    [_realm beginWriteTransaction];
    [_realm addObject:badge];
    [_realm commitWriteTransaction];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
