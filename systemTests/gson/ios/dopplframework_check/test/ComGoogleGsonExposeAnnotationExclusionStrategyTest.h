//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonExposeAnnotationExclusionStrategyTest")
#ifdef RESTRICT_ComGoogleGsonExposeAnnotationExclusionStrategyTest
#define INCLUDE_ALL_ComGoogleGsonExposeAnnotationExclusionStrategyTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonExposeAnnotationExclusionStrategyTest 1
#endif
#undef RESTRICT_ComGoogleGsonExposeAnnotationExclusionStrategyTest

#if !defined (ComGoogleGsonExposeAnnotationExclusionStrategyTest_) && (INCLUDE_ALL_ComGoogleGsonExposeAnnotationExclusionStrategyTest || defined(INCLUDE_ComGoogleGsonExposeAnnotationExclusionStrategyTest))
#define ComGoogleGsonExposeAnnotationExclusionStrategyTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonExposeAnnotationExclusionStrategyTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testDifferentSerializeAndDeserializeField;

- (void)testNeverSkipClasses;

- (void)testNeverSkipExplicitlyExposedAnnotatedFields;

- (void)testNeverSkipExposedAnnotatedFields;

- (void)testSkipExplicitlySkippedFields;

- (void)testSkipNonAnnotatedFields;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonExposeAnnotationExclusionStrategyTest)

FOUNDATION_EXPORT void ComGoogleGsonExposeAnnotationExclusionStrategyTest_init(ComGoogleGsonExposeAnnotationExclusionStrategyTest *self);

FOUNDATION_EXPORT ComGoogleGsonExposeAnnotationExclusionStrategyTest *new_ComGoogleGsonExposeAnnotationExclusionStrategyTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonExposeAnnotationExclusionStrategyTest *create_ComGoogleGsonExposeAnnotationExclusionStrategyTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonExposeAnnotationExclusionStrategyTest)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonExposeAnnotationExclusionStrategyTest")
