//
//  TriviaQuestionViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "TriviaQuestionViewController.h"

@interface TriviaQuestionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@end

@implementation TriviaQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", _subCategory.subCategoryName);
    

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
