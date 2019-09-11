#import <UIKit/UIKit.h>

%group enabled
    NSDictionary *bundleDefaults1 = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.elasticfoldersprefs"];
%hook BSUIAnimationFactorySettings
- (bool)slowAnimations {
    return 1;
}
%end

%hook BSMutableSpringAnimationSettings

- (void)setDelay:(double)arg1 {
    id delay = [bundleDefaults1 valueForKey:@"delay"];
    NSString *delayS = delay;
    double delayD = [delayS doubleValue];
//    arg1 = 0.15;
    arg1 = delayD;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings

- (void)setMass:(double)arg1 {
    id mass = [bundleDefaults1 valueForKey:@"mass"];
    NSString *massS = mass;
    double massD = [massS doubleValue];
//    arg1 = 20;
    arg1 = massD;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings

- (void)setStiffness:(double)arg1 {
    id stiffness = [bundleDefaults1 valueForKey:@"stiffness"];
    NSString *stiffnessS = stiffness;
    double stiffnessD = [stiffnessS doubleValue];
//    arg1 = 1000;
    arg1 = stiffnessD;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings

- (void)setDamping:(double)arg1 {
    id damping = [bundleDefaults1 valueForKey:@"damping"];
    NSString *dampingS = damping;
    double dampingD = [dampingS doubleValue];
//    arg1 = 200;
    arg1 = dampingD;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setSpeed:(float)arg1 {
   id speed = [bundleDefaults1 valueForKey:@"speed"];
   NSString *speedS = speed;
   double speedD = [speedS floatValue];
   if (![speed isEqual:nil]) {
      arg1 = dampingD;
}
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setTimingFunction:(id)arg1 {
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setInitialVelocity:(double)arg1 {
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setFrameInterval:(double)arg1 {
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setEpsilon:(double)arg1 {
    arg1 = 0.04;
    %orig;
}
%end

%end

%ctor {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.elasticfoldersprefs"];
    
    id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
    if ([isEnabled isEqual:@1]) {
        %init(enabled)
    }
}

