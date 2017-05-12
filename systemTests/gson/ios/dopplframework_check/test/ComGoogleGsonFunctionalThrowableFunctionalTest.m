//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonAnnotationsSerializedName.h"
#include "ComGoogleGsonFunctionalThrowableFunctionalTest.h"
#include "ComGoogleGsonGson.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/OutOfMemoryError.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonFunctionalThrowableFunctionalTest () {
 @public
  ComGoogleGsonGson *gson_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonFunctionalThrowableFunctionalTest, gson_, ComGoogleGsonGson *)

@interface ComGoogleGsonFunctionalThrowableFunctionalTest_MyException : NSException {
 @public
  NSString *myCustomMessage_;
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException)

J2OBJC_FIELD_SETTER(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException, myCustomMessage_, NSString *)

__attribute__((unused)) static void ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *self);

__attribute__((unused)) static ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *new_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *create_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init();

__attribute__((unused)) static IOSObjectArray *ComGoogleGsonFunctionalThrowableFunctionalTest_MyException__Annotations$0();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException)

@implementation ComGoogleGsonFunctionalThrowableFunctionalTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonFunctionalThrowableFunctionalTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testExceptionWithoutCause {
  JavaLangRuntimeException *e = create_JavaLangRuntimeException_initWithNSString_(@"hello");
  NSString *json = [((ComGoogleGsonGson *) nil_chk(gson_)) toJsonWithId:e];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((NSString *) nil_chk(json)) java_contains:@"hello"]);
  e = [gson_ fromJsonWithNSString:@"{'detailMessage':'hello'}" withIOSClass:JavaLangRuntimeException_class_()];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"hello", [((JavaLangRuntimeException *) nil_chk(e)) getMessage]);
}

- (void)testSerializedNameOnExceptionFields {
  ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *e = create_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init();
  NSString *json = [((ComGoogleGsonGson *) nil_chk(gson_)) toJsonWithId:e];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((NSString *) nil_chk(json)) java_contains:@"{\"my_custom_name\":\"myCustomMessageValue\""]);
}

- (void)testErrorWithoutCause {
  JavaLangOutOfMemoryError *e = create_JavaLangOutOfMemoryError_initWithNSString_(@"hello");
  NSString *json = [((ComGoogleGsonGson *) nil_chk(gson_)) toJsonWithId:e];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((NSString *) nil_chk(json)) java_contains:@"hello"]);
  e = [gson_ fromJsonWithNSString:@"{'detailMessage':'hello'}" withIOSClass:JavaLangOutOfMemoryError_class_()];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"hello", [((JavaLangOutOfMemoryError *) nil_chk(e)) getMessage]);
}

- (void)dealloc {
  RELEASE_(gson_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testExceptionWithoutCause);
  methods[2].selector = @selector(testSerializedNameOnExceptionFields);
  methods[3].selector = @selector(testErrorWithoutCause);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "gson_", "LComGoogleGsonGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleGsonFunctionalThrowableFunctionalTest_MyException;" };
  static const J2ObjcClassInfo _ComGoogleGsonFunctionalThrowableFunctionalTest = { "ThrowableFunctionalTest", "com.google.gson.functional", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, 0, -1, -1, -1 };
  return &_ComGoogleGsonFunctionalThrowableFunctionalTest;
}

@end

void ComGoogleGsonFunctionalThrowableFunctionalTest_init(ComGoogleGsonFunctionalThrowableFunctionalTest *self) {
  JunitFrameworkTestCase_init(self);
  JreStrongAssignAndConsume(&self->gson_, new_ComGoogleGsonGson_init());
}

ComGoogleGsonFunctionalThrowableFunctionalTest *new_ComGoogleGsonFunctionalThrowableFunctionalTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonFunctionalThrowableFunctionalTest, init)
}

ComGoogleGsonFunctionalThrowableFunctionalTest *create_ComGoogleGsonFunctionalThrowableFunctionalTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonFunctionalThrowableFunctionalTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonFunctionalThrowableFunctionalTest)

@implementation ComGoogleGsonFunctionalThrowableFunctionalTest_MyException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(myCustomMessage_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "myCustomMessage_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, 0 },
  };
  static const void *ptrTable[] = { (void *)&ComGoogleGsonFunctionalThrowableFunctionalTest_MyException__Annotations$0, "LComGoogleGsonFunctionalThrowableFunctionalTest;" };
  static const J2ObjcClassInfo _ComGoogleGsonFunctionalThrowableFunctionalTest_MyException = { "MyException", "com.google.gson.functional", ptrTable, methods, fields, 7, 0x1a, 1, 1, 1, -1, -1, -1, -1 };
  return &_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException;
}

@end

void ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *self) {
  NSException_init(self);
  JreStrongAssign(&self->myCustomMessage_, @"myCustomMessageValue");
}

ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *new_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException, init)
}

ComGoogleGsonFunctionalThrowableFunctionalTest_MyException *create_ComGoogleGsonFunctionalThrowableFunctionalTest_MyException_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException, init)
}

IOSObjectArray *ComGoogleGsonFunctionalThrowableFunctionalTest_MyException__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_ComGoogleGsonAnnotationsSerializedName([IOSObjectArray arrayWithLength:0 type:NSString_class_()], @"my_custom_name") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonFunctionalThrowableFunctionalTest_MyException)