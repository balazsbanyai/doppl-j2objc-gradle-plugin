//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/core-doppl/androidbasetest/src/main/java/co/touchlab/doppl/testing/DopplContextTestRunner.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabDopplTestingDopplContextTestRunner")
#ifdef RESTRICT_CoTouchlabDopplTestingDopplContextTestRunner
#define INCLUDE_ALL_CoTouchlabDopplTestingDopplContextTestRunner 0
#else
#define INCLUDE_ALL_CoTouchlabDopplTestingDopplContextTestRunner 1
#endif
#undef RESTRICT_CoTouchlabDopplTestingDopplContextTestRunner

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (CoTouchlabDopplTestingDopplContextTestRunner_) && (INCLUDE_ALL_CoTouchlabDopplTestingDopplContextTestRunner || defined(INCLUDE_CoTouchlabDopplTestingDopplContextTestRunner))
#define CoTouchlabDopplTestingDopplContextTestRunner_

#define RESTRICT_OrgJunitRunnersBlockJUnit4ClassRunner 1
#define INCLUDE_OrgJunitRunnersBlockJUnit4ClassRunner 1
#include "org/junit/runners/BlockJUnit4ClassRunner.h"

@class IOSClass;
@class OrgJunitRunnerNotificationRunNotifier;
@class OrgJunitRunnersModelFrameworkMethod;

@interface CoTouchlabDopplTestingDopplContextTestRunner : OrgJunitRunnersBlockJUnit4ClassRunner

#pragma mark Public

- (instancetype)initWithIOSClass:(IOSClass *)klass;

#pragma mark Protected

- (void)runChildWithId:(OrgJunitRunnersModelFrameworkMethod *)method
withOrgJunitRunnerNotificationRunNotifier:(OrgJunitRunnerNotificationRunNotifier *)notifier;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabDopplTestingDopplContextTestRunner)

FOUNDATION_EXPORT void CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(CoTouchlabDopplTestingDopplContextTestRunner *self, IOSClass *klass);

FOUNDATION_EXPORT CoTouchlabDopplTestingDopplContextTestRunner *new_CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(IOSClass *klass) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabDopplTestingDopplContextTestRunner *create_CoTouchlabDopplTestingDopplContextTestRunner_initWithIOSClass_(IOSClass *klass);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabDopplTestingDopplContextTestRunner)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_CoTouchlabDopplTestingDopplContextTestRunner")
