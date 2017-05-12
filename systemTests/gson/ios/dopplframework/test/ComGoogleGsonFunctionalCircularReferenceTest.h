//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonFunctionalCircularReferenceTest")
#ifdef RESTRICT_ComGoogleGsonFunctionalCircularReferenceTest
#define INCLUDE_ALL_ComGoogleGsonFunctionalCircularReferenceTest 0
#else
#define INCLUDE_ALL_ComGoogleGsonFunctionalCircularReferenceTest 1
#endif
#undef RESTRICT_ComGoogleGsonFunctionalCircularReferenceTest

#if !defined (ComGoogleGsonFunctionalCircularReferenceTest_) && (INCLUDE_ALL_ComGoogleGsonFunctionalCircularReferenceTest || defined(INCLUDE_ComGoogleGsonFunctionalCircularReferenceTest))
#define ComGoogleGsonFunctionalCircularReferenceTest_

#define RESTRICT_JunitFrameworkTestCase 1
#define INCLUDE_JunitFrameworkTestCase 1
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalCircularReferenceTest : JunitFrameworkTestCase

#pragma mark Public

- (instancetype)init;

- (void)testCircularSerialization;

- (void)testDirectedAcyclicGraphDeserialization;

- (void)testDirectedAcyclicGraphSerialization;

- (void)testSelfReferenceArrayFieldSerialization;

- (void)testSelfReferenceCustomHandlerSerialization;

- (void)testSelfReferenceIgnoredInSerialization;

#pragma mark Protected

- (void)setUp;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalCircularReferenceTest)

FOUNDATION_EXPORT void ComGoogleGsonFunctionalCircularReferenceTest_init(ComGoogleGsonFunctionalCircularReferenceTest *self);

FOUNDATION_EXPORT ComGoogleGsonFunctionalCircularReferenceTest *new_ComGoogleGsonFunctionalCircularReferenceTest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonFunctionalCircularReferenceTest *create_ComGoogleGsonFunctionalCircularReferenceTest_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalCircularReferenceTest)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonFunctionalCircularReferenceTest")