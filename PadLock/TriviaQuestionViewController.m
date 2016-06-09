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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
