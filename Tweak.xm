#import <UIKit/UIKit.h>

%group enabled
%hook BSUIAnimationFactorySettings
- (bool)slowAnimations {
    return 1;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setDelay:(double)arg1 {
    arg1 = 0.15;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setMass:(double)arg1 {
    arg1 = 20;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setStiffness:(double)arg1 {
    arg1 = 1000;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setDamping:(double)arg1 {
    arg1 = 200;
    %orig;
}
%end

%hook BSMutableSpringAnimationSettings
- (void)setSpeed:(float)arg1 {
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

