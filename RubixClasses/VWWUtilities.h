//
//  VWWUtilities.h
//
//  Created by Zakk Hoyt on 1/24/13.
//
//

#ifndef VWW_VWWUtilities_h
#define VWW_VWWUtilities_h


//************************************** Console logging ***********************

#define VWW_VERBOSE_LOGGING 1
#if defined(VWW_VERBOSE_LOGGING)
    #define SMLOG(fmt, ...) {    \
        NSString* is = [NSString stringWithFormat:fmt, ##__VA_ARGS__]; \
        NSLog(@"%s:%d %@", __FUNCTION__, __LINE__, is); \
    }
#else
    #define VWWLOG(fmt, ...) NSLog(fmt, ##__VA_ARGS__)
#endif //VWW_VERBOSE_LOGGING


//************************************** Time Marking **************************
static __attribute((unused)) bool hasRun = NO;
static __attribute((unused)) NSDate* __attribute__((unused)) startTime;


#define VWW_VERBOSE_MARK_TIME 1
#if defined(VWW_VERBOSE_MARK_TIME)
    #define VWW_MARK_TIME { \
        if(hasRun == NO){ \
        startTime = [NSDate date]; \
        hasRun = YES; \
        NSLog(@"%s:%d Time marked: (first)", __FUNCTION__, __LINE__); \
    } \
    else { \
        NSDate* finishTime = [NSDate date]; \
        NSTimeInterval executionTime = [finishTime timeIntervalSinceDate:startTime]; \
        NSLog(@"%s:%d Time marked: %fms", __FUNCTION__, __LINE__, executionTime); \
        startTime = finishTime; \
        } \
    }
#else
    #define SM_MARK_TIME { \
        if(hasRun == NO){ \
            startTime = [NSDate date]; \
            hasRun = YES; \
            NSLog(@"Time marked: (first)"); \
        } \
        else { \
            NSDate* finishTime = [NSDate date]; \
            NSTimeInterval executionTime = [finishTime timeIntervalSinceDate:startTime]; \
            NSLog(@"Time marked: %fms", executionTime  ); \
            startTime = finishTime; \
        } \
    }
#endif //VWW_VERBOSE_MARK_TIME

#endif //VWW_VWWUtilities_h
