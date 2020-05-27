//
//  ViewController.h
//  SoundPlayingApp
//
//  Created by Vladan Randjelovic on 27/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID catSoundID;
    SystemSoundID dogSoundID;
    SystemSoundID frogSoundID;
    SystemSoundID horseSoundID;
    SystemSoundID pigSoundID;
    SystemSoundID sheepSoundID;
    
}

@property (weak, nonatomic) IBOutlet UIButton *catButton;
@property (weak, nonatomic) IBOutlet UIButton *dogButton;
@property (weak, nonatomic) IBOutlet UIButton *frogButton;
@property (weak, nonatomic) IBOutlet UIButton *horseButton;
@property (weak, nonatomic) IBOutlet UIButton *pigButton;
@property (weak, nonatomic) IBOutlet UIButton *sheepButton;

- (IBAction)catSound:(id)sender;
- (IBAction)dogSound:(id)sender;
- (IBAction)frogSound:(id)sender;
- (IBAction)horseSound:(id)sender;
- (IBAction)pigSound:(id)sender;
- (IBAction)sheepSound:(id)sender;


@end

