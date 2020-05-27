//
//  ViewController.m
//  SoundPlayingApp
//
//  Created by Vladan Randjelovic on 27/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self.catButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.dogButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.frogButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.horseButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.pigButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.sheepButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    
    NSURL *catSoudURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)catSoudURL, &catSoundID);
    
    NSURL *dogSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)dogSoundURL, &dogSoundID);
    
    NSURL *frogSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)frogSoundURL, &frogSoundID);
    
    NSURL *horseSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)horseSoundURL, &horseSoundID);
    
    NSURL *pigSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)pigSoundURL, &pigSoundID);
    
    NSURL *sheepSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)sheepSoundURL, &sheepSoundID);
}



- (IBAction)sheepSound:(id)sender {
    
    AudioServicesPlaySystemSound(sheepSoundID);
    
}

- (IBAction)pigSound:(id)sender {
    
     AudioServicesPlaySystemSound(pigSoundID);
    
}

- (IBAction)horseSound:(id)sender {
    
     AudioServicesPlaySystemSound(horseSoundID);
    
}

- (IBAction)frogSound:(id)sender {
    
     AudioServicesPlaySystemSound(frogSoundID);
    
}

- (IBAction)dogSound:(id)sender {
    
     AudioServicesPlaySystemSound(dogSoundID);
    
}

- (IBAction)catSound:(id)sender {
    
     AudioServicesPlaySystemSound(catSoundID);
    
}

@end
