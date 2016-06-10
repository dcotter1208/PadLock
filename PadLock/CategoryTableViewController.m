//
//  CategoryTableViewController.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "CategoryTableViewController.h"
#import "SubCategoryViewController.h"
#import "Category.h"
#import "SubCategory.h"
#import "Question.h"

@interface CategoryTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

@end

@implementation CategoryTableViewController

NSArray *categoryArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTriviaQuestionsAndCategories];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [categoryArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCell" forIndexPath:indexPath];
    Category *category = [categoryArray objectAtIndex:indexPath.row];
    cell.textLabel.text = category.categoryName;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SubCategoryViewController *destVC = [segue destinationViewController];
    NSIndexPath *indexPath = [_categoryTableView indexPathForSelectedRow];
    Category *category = [categoryArray objectAtIndex:indexPath.row];
    destVC.subCategoryArray = category.subCategoryArray;
    
}

#pragma mark - Create Trivia Questions and Categories
-(void)setupTriviaQuestionsAndCategories {
    
    // NFL Trivia questions
    Question *nflQuestion1 = [[Question alloc]initWithQuestion:@"Who is the owner of Detroit Lions frainchise?" andWrongAnswerOne:@"William Ford" andWrongAnswerTwo:@"Barak Obama" andCorrectAnswer:@"Martha Firestone"];
    
    nflQuestion1.answerArray = [NSMutableArray arrayWithObjects:nflQuestion1.wrongAnswerOne, nflQuestion1.wrongAnswerTwo, nflQuestion1.correctAnswer, nil];
    
    Question *nflQuestion2 = [[Question alloc]initWithQuestion:@"Which team made a recent move to Los Angeles?"
                                             andWrongAnswerOne:@"Oakland Raiders" andWrongAnswerTwo:@"SanDiego Chargers" andCorrectAnswer:@"St. Louis Rams"];
    
    nflQuestion2.answerArray = [NSMutableArray arrayWithObjects:nflQuestion2.wrongAnswerOne, nflQuestion2.wrongAnswerTwo, nflQuestion2.correctAnswer, nil];
    
    Question *nflQuestion3 = [[Question alloc]initWithQuestion:@"Who is the starting QB of Minnesota Vikings"
                                             andWrongAnswerOne:@"Brandon Manson" andWrongAnswerTwo:@"Mark Sanchez" andCorrectAnswer:@"Teddy Bridgewater"];
    
    nflQuestion3.answerArray = [NSMutableArray arrayWithObjects:nflQuestion3.wrongAnswerOne, nflQuestion3.wrongAnswerTwo, nflQuestion3.correctAnswer, nil];
    
    //NBA Trivia questions
    Question *nbaQuestion1 = [[Question alloc]initWithQuestion:@"What is the name of sacremento franchise?" andWrongAnswerOne:@"Rings" andWrongAnswerTwo:@"Sings" andCorrectAnswer:@"Kings"];
    
    nbaQuestion1.answerArray = [NSMutableArray arrayWithObjects:nbaQuestion1.wrongAnswerOne, nbaQuestion1.wrongAnswerTwo, nbaQuestion1.correctAnswer, nil];
    
    Question *nbaQuestion2 = [[Question alloc]initWithQuestion:@"Who won the NBA championship in 2015?" andWrongAnswerOne:@"Cavaliers" andWrongAnswerTwo:@"Spurs" andCorrectAnswer:@"Warriors"];
    
    nbaQuestion2.answerArray = [NSMutableArray arrayWithObjects:nbaQuestion2.wrongAnswerOne, nbaQuestion2.wrongAnswerTwo, nbaQuestion2.correctAnswer, nil];
    
    Question *nbaQuestion3 = [[Question alloc]initWithQuestion:@"Who was the NBA MVP in 2015" andWrongAnswerOne:@"Lebron" andWrongAnswerTwo:@"Jordan" andCorrectAnswer:@"Steph Curry"];
    
    nbaQuestion3.answerArray = [NSMutableArray arrayWithObjects:nbaQuestion3.wrongAnswerOne, nbaQuestion3.wrongAnswerTwo, nbaQuestion3.correctAnswer, nil];
    
    //Action Movies Trivia Questions
    Question *actionMovieQuestion1 = [[Question alloc]initWithQuestion:@"In Terminator 2: Judgment Day, Arnold Schwarzenegger’s famous quote was?" andWrongAnswerOne:@"I'll kick your back" andWrongAnswerTwo:@"Watch your back" andCorrectAnswer:@"I'll be back"];
    
    actionMovieQuestion1.answerArray = [NSMutableArray arrayWithObjects:actionMovieQuestion1.wrongAnswerOne, actionMovieQuestion1.wrongAnswerTwo, actionMovieQuestion1.correctAnswer, nil];
    
    Question *actionMovieQuestion2 = [[Question alloc]initWithQuestion:@"In “Silence of the Lambs,” Hannibal Lecter was potrayed by which actor?" andWrongAnswerOne:@"Gene Hackman" andWrongAnswerTwo:@"Will Smith" andCorrectAnswer:@"Anthony Hopkins"];
    
    actionMovieQuestion2.answerArray = [NSMutableArray arrayWithObjects:actionMovieQuestion2.wrongAnswerOne, actionMovieQuestion2.wrongAnswerTwo, actionMovieQuestion2.correctAnswer, nil];
    
    Question *actionMovieQuestion3 = [[Question alloc]initWithQuestion:@"In “Speed,” a bomb is placed on a bus and set to go off if the speed drops below what?" andWrongAnswerOne:@"70 mph" andWrongAnswerTwo:@"55 mph" andCorrectAnswer:@"50 mph"];
    
    actionMovieQuestion3.answerArray = [NSMutableArray arrayWithObjects:actionMovieQuestion3.wrongAnswerOne, actionMovieQuestion3.wrongAnswerTwo, actionMovieQuestion3.correctAnswer, nil];
    
    //Comedy Movies Trivia Questions
    Question *comedyMovieQuestion1 = [[Question alloc]initWithQuestion:@"According to Buddy the Elf, the four food groups are candy, candy canes, candy corns and ?" andWrongAnswerOne:@"Milk chocolate" andWrongAnswerTwo:@"Marshmallows" andCorrectAnswer:@"Syrup"];
    
    comedyMovieQuestion1.answerArray = [NSMutableArray arrayWithObjects:comedyMovieQuestion1.wrongAnswerOne, comedyMovieQuestion1.wrongAnswerTwo, comedyMovieQuestion1.correctAnswer, nil];
    
    Question *comedyMovieQuestion2 = [[Question alloc]initWithQuestion:@"What is Napoleon Dynamite’s favorite sport?" andWrongAnswerOne:@"Bocce Ball" andWrongAnswerTwo:@"Racquetball" andCorrectAnswer:@"Tetherball"];
    
    comedyMovieQuestion2.answerArray = [NSMutableArray arrayWithObjects:comedyMovieQuestion2.wrongAnswerOne, comedyMovieQuestion2.wrongAnswerTwo, comedyMovieQuestion2.correctAnswer, nil];
    
    Question *comedyMovieQuestion3 = [[Question alloc]initWithQuestion:@"In “There’s Something About Mary,” what football player plays Mary’s former love interest?" andWrongAnswerOne:@"Peyton Manning" andWrongAnswerTwo:@"John Elway" andCorrectAnswer:@"Brett Favre"];
    
    comedyMovieQuestion3.answerArray = [NSMutableArray arrayWithObjects:comedyMovieQuestion3.wrongAnswerOne, comedyMovieQuestion3.wrongAnswerTwo, comedyMovieQuestion3.correctAnswer, nil];
    
    //USA History Trivia Questions
    Question *usaHistoryQuestion1 = [[Question alloc]initWithQuestion:@"Albany is the capital of which State?" andWrongAnswerOne:@"Maryland" andWrongAnswerTwo:@"Texas" andCorrectAnswer:@"New York"];
    
    usaHistoryQuestion1.answerArray = [NSMutableArray arrayWithObjects:usaHistoryQuestion1.wrongAnswerOne, usaHistoryQuestion1.wrongAnswerTwo, usaHistoryQuestion1.correctAnswer, nil];
    
    Question *usaHistoryQuestion2 = [[Question alloc]initWithQuestion:@"Who is the third President of USA?" andWrongAnswerOne:@"John Adams" andWrongAnswerTwo:@"Abraham Lincoln" andCorrectAnswer:@"Thomas Jefferson"];
    
    usaHistoryQuestion2.answerArray = [NSMutableArray arrayWithObjects:usaHistoryQuestion2.wrongAnswerOne, usaHistoryQuestion2.wrongAnswerTwo, usaHistoryQuestion2.correctAnswer, nil];
    
    Question *usaHistoryQuestion3 = [[Question alloc]initWithQuestion:@"How many stars are in the flag of USA?" andWrongAnswerOne:@"49" andWrongAnswerTwo:@"51" andCorrectAnswer:@"50"];
    
    usaHistoryQuestion3.answerArray = [NSMutableArray arrayWithObjects:usaHistoryQuestion3.wrongAnswerOne, usaHistoryQuestion3.wrongAnswerTwo, usaHistoryQuestion3.correctAnswer, nil];
    
    //World History Trivia Questions
    Question *worldHistoryQuestion1 = [[Question alloc]initWithQuestion:@"World War I began in which year?" andWrongAnswerOne:@"1917" andWrongAnswerTwo:@"1912" andCorrectAnswer:@"1914"];
    
    worldHistoryQuestion1.answerArray = [NSMutableArray arrayWithObjects:worldHistoryQuestion1.wrongAnswerOne, worldHistoryQuestion1.wrongAnswerTwo, worldHistoryQuestion1.correctAnswer, nil];
    
    Question *worldHistoryQuestion2 = [[Question alloc]initWithQuestion:@"Adolf Hitler was born in which country?" andWrongAnswerOne:@"France" andWrongAnswerTwo:@"Germany" andCorrectAnswer:@"Austria"];
    
    worldHistoryQuestion2.answerArray = [NSMutableArray arrayWithObjects:worldHistoryQuestion2.wrongAnswerOne, worldHistoryQuestion2.wrongAnswerTwo, worldHistoryQuestion2.correctAnswer, nil];
    
    Question *worldHistoryQuestion3 = [[Question alloc]initWithQuestion:@"Who was the first Western explorer to reach China?" andWrongAnswerOne:@"Magellan" andWrongAnswerTwo:@"Sir Francis Drake" andCorrectAnswer:@"Marco Polo"];
    
    worldHistoryQuestion3.answerArray = [NSMutableArray arrayWithObjects:worldHistoryQuestion3.wrongAnswerOne, worldHistoryQuestion3.wrongAnswerTwo, worldHistoryQuestion3.correctAnswer, nil];
    
    SubCategory *subCat1 = [[SubCategory alloc]initWithSubCategoryName:@"NFL" andQuestionArray:@[nflQuestion1, nflQuestion2, nflQuestion3]];
    SubCategory *subCat2 = [[SubCategory alloc]initWithSubCategoryName:@"NBA" andQuestionArray:@[nbaQuestion1, nbaQuestion2, nbaQuestion3]];
    SubCategory *subCat3 = [[SubCategory alloc]initWithSubCategoryName:@"Action" andQuestionArray:@[actionMovieQuestion1, actionMovieQuestion2, actionMovieQuestion3]];
    SubCategory *subCat4 = [[SubCategory alloc]initWithSubCategoryName:@"Comedy" andQuestionArray:@[comedyMovieQuestion1,  comedyMovieQuestion2, comedyMovieQuestion3]];
    SubCategory *subCat5 = [[SubCategory alloc]initWithSubCategoryName:@"United States" andQuestionArray:@[usaHistoryQuestion1, usaHistoryQuestion2, usaHistoryQuestion3]];
    SubCategory *subCat6 = [[SubCategory alloc]initWithSubCategoryName:@"World" andQuestionArray:@[worldHistoryQuestion1, worldHistoryQuestion2, worldHistoryQuestion3]];
    
    Category *category1 = [[Category alloc]initWithCategoryName:@"Sports" andSubCategoryArray:@[subCat1, subCat2]];
    Category *category2 = [[Category alloc]initWithCategoryName:@"Movies" andSubCategoryArray:@[subCat3, subCat4]];
    Category *category3 = [[Category alloc]initWithCategoryName:@"History" andSubCategoryArray:@[subCat5, subCat6]];
    
    categoryArray = @[category1,category2,category3];
}

@end
