//
//  ASViewController.m
//  StringPractice
//
//  Created by Anirudh Sethi on 8/24/14.
//  Copyright (c) 2014 Anirudh. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *myString = @"This is just a practice and time pass with Objective C and hope it is fruitful";
    NSArray *wordsInSentence  = [myString componentsSeparatedByString:@" "];
    NSMutableArray *capitalizedWords  = [[NSMutableArray alloc] init];
    for (int word = 0; word< [wordsInSentence count]; word ++) {
        NSString *unCapitalizedWord = [wordsInSentence objectAtIndex:word];
        NSString *capitalizedWord = [unCapitalizedWord capitalizedString];
        [capitalizedWords addObject:capitalizedWord];
    }
    NSLog(@"%@", capitalizedWords);
    
    [self.myButton setTitle:@"Wow, somehow" forState:UIControlStateNormal];
    [self.myButton setHidden:YES];
    UIAlertView *alerView =[[UIAlertView alloc] initWithTitle:@"Alert!" message:@"This is an error message" delegate:Nil cancelButtonTitle:@"Cancel" otherButtonTitles : Nil];
    [alerView show];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
