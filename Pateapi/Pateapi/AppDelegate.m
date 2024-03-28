//
//  AppDelegate.m
//  Pateapi
//
//  Created by adin on 2024/3/28.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *aray = @[
                @"Propose to any three strangers.",
                @"Sing 'Happy Birthday' loudly to a stranger in a store.",
                @"Shout loudly in public, 'I am a little piggy!' and then quickly run away.",
                @"Walk onto the sidewalk, scream, and pretend to be scared by an imaginary bug.",
                @"Shake hands with a passerby and say, 'You are the friend I've always dreamed of!'",
                @"Follow a stranger in the supermarket until they notice you.",
                @"Borrow some food or drink from a stranger, then loudly say, 'Thank you, you're such a good person!'",
                @"Send a text to a stranger saying, 'I'm in your car's trunk, please help me!'",
                @"Imitate animal sounds in public until someone guesses the animal you're mimicking.",
                @"Post a photo of yourself wearing terrible clothes on social media.",
                @"Make a funny face in front of a stranger.",
                @"Pretend to be chasing your 'friend' in front of strangers.",
                @"Approach a stranger and ask for a hug.",
                @"Jump out in a public place and shout loudly, 'I'm a superhero!'",
                @"Tell a stranger a boring yet astonishing joke.",
                @"Perform an extremely awkward dance in front of a stranger.",
                @"Take photos with any two passersby and ask them to pose in a funny way for you.",
                @"Pretend to be a famous athlete in front of any three strangers and ask them for autographs."
            ];
    
    NSArray *zxha = @[
        @"What is your idea of a perfect date?",
        @"What is your favorite song? Why?",
        @"If you could change one historical event, what would it be?",
        @"What is your biggest dream?",
        @"What was your favorite toy when you were a child?",
        @"What was the most embarrassing moment you've experienced?",
        @"When was the last time you felt heartbroken?",
        @"What was your most recent mistake?",
        @"What is your greatest success?",
        @"Have you ever had a crush on someone?",
        @"What is your favorite movie? Why?",
        @"What was the most recent thing that touched you about your family?",
        @"What is your least favorite food?",
        @"What were you most afraid of as a child?",
        @"When was the last time you felt proud?",
        @"What is your favorite book? Why?",
        @"What was the most special gift you've ever received?",
        @"What is your most important value?",
        @"What was the most recent good deed you did?",
        @"What do you hope to achieve in the next five years?",
        @"Who is your favorite family member?"
    ];

   
    if ([defaults objectForKey:@"zxh"] == nil) {
        [defaults setObject:zxha forKey:@"zxh"];
    }
    
    if ([defaults objectForKey:@"dmx"] == nil) {
        [defaults setObject:aray forKey:@"dmx"];
    }
    
    [defaults synchronize];
    
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
