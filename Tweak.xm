#include <objc/runtime.h>

%hook JYQuestionQueueController

-(void)advanceToNextQuestion {
    NSMutableOrderedSet *questionIDs;
    object_getInstanceVariable(self, "_questionIDs", (void **)&questionIDs);
    id top = [questionIDs objectAtIndex:0];
    [questionIDs setObject:@"1" atIndex:0];
    [questionIDs addObject:top];
    %orig;
}

%end
