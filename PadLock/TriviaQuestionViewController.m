//
//  TriviaQuestionViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "TriviaQuestionViewController.h"
#import "Question.h"

@interface TriviaQuestionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@end

Question *question;

@implementation TriviaQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    question = _subCategory.questionArray[0];
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
    
   // NSLog(@"Selected Row: %@", [question.answerArray objectAtIndex:tableView.indexPathForSelectedRow.row]);
    
    

}


-(void)checkForAnswerCorrectness:(NSString *)answer {
    
    if ([answer isEqualToString:question.correctAnswer]) {
        NSLog(@"Correct Answer!!!");
        [self displayAlert:@"Correct!"];
    } else {
        NSLog(@"BS");
        [self displayAlert:@"Wrong!"];
    }
    
}

-(void)displayAlert:(NSString *)alertMessage {
   
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertMessage message:nil preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertController animated:TRUE completion:nil];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
    }];
    
    [alertController addAction:action];
    
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
