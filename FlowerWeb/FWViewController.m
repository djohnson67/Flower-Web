//
//  FWViewController.m
//  FlowerWeb
//
//  Created by Daniel Reid on 3/4/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import "FWViewController.h"

@interface FWViewController ()

@end

@implementation FWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.flowerDetailView.hidden = YES;
    [self getFlower:nil];
    //changes done at gui one 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getFlower:(id)sender {
    
    NSURL *imageURL;
    NSURL *detailsURL;
    NSString *imageURLString;
    NSString *detailsURLString;
    NSString *color;
    int sessionID;
    
    //find out the color;
    color = [self.colorChoice titleForSegmentAtIndex:self.colorChoice.selectedSegmentIndex];
    sessionID = random()%50000;//create sessionID
    //create url strings
    imageURLString = [[NSString alloc]initWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",color,sessionID];
    detailsURLString = [[NSString alloc]initWithFormat:@"http://www.floraphotographs.com/detailios.php?session=%d",sessionID];
    //set urls
    imageURL = [[NSURL alloc]initWithString:imageURLString];
    detailsURL = [[NSURL alloc]initWithString:detailsURLString];
    
    //set the web views with URLs
    [self.flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailsURL]];
    
    
    //set background color
    self.flowerDetailView.backgroundColor=[UIColor clearColor];
    
    
}

- (IBAction)toggleFlowerDetails:(id)sender {
   /* if(self.flowerDetailView.hidden){
        self.flowerDetailView.hidden = NO;
    }
    else{
        self.flowerDetailView.hidden = YES;
    }*/
    self.flowerDetailView.hidden = ![sender isOn];
    
}
@end
