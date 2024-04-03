//
//  AppDelegate.m
//  Pateapi
//
//  Created by adin on 2024/3/28.
//

#import "AppDelegate.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import "ScriptMESS.h"
#import "PrivacyController.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>

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
    
    [[AppsFlyerLib shared] setAppsFlyerDevKey:@"hKfNyx68RdLimbCcgNiVzW"];
    [[AppsFlyerLib shared] setAppleAppID:@"6480173860"];
    
    [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:18];
    [AppsFlyerLib shared].delegate = self;
    [[AppsFlyerLib shared] start];
    
    [ScriptMESS setAfuuid:[self getAfUIDString]];
    
  
    if ([self reunui]) {
          PrivacyController *myViewController = [[PrivacyController alloc] init];
              self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
              self.window.rootViewController = myViewController;
              [self.window makeKeyAndVisible];
    }
    return YES;
}

- (void)onConversionDataFail:(nonnull NSError *)error {
    NSString* af_status = @"";
}

- (void)onConversionDataSuccess:(nonnull NSDictionary *)conversionInfo {
    NSString* af_status = [conversionInfo objectForKey:@"af_status"];
    if (af_status == nil) {
        af_status = @"";
    }
   // [ViewController setAfSources:af_status];
}

- (NSString *)getAfUIDString {
    NSString* afid = [[AppsFlyerLib shared] getAppsFlyerUID];
    if (afid == nil){
        afid = @"";
    }
    return afid;
}

-(BOOL) reunui{
    
    NSTimeInterval timestamp = 1712140443;
    NSDate *localDate = [NSDate date];
     NSTimeInterval timestamp1 = [localDate timeIntervalSince1970];
        if (timestamp <= timestamp1) {
            NSLocale *locale = [NSLocale currentLocale];
            NSString *regionCode = [locale objectForKey:NSLocaleCountryCode];
            if([regionCode isEqualToString:@"IN"]){
                return  YES;
            }else{
                return NO;
            }
        }else{
            return  NO;
        }
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2.5f*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        if (@available(iOS 14, *)) {
            if (ATTrackingManager.trackingAuthorizationStatus == ATTrackingManagerAuthorizationStatusNotDetermined) {
                [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus s) {}];
            }
        }
    });
}



@end
