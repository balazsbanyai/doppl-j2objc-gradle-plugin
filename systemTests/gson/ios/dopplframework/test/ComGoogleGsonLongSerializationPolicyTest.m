//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonGson.h"
#include "ComGoogleGsonGsonBuilder.h"
#include "ComGoogleGsonJsonElement.h"
#include "ComGoogleGsonJsonPrimitive.h"
#include "ComGoogleGsonLongSerializationPolicy.h"
#include "ComGoogleGsonLongSerializationPolicyTest.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "junit/framework/TestCase.h"

@implementation ComGoogleGsonLongSerializationPolicyTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonLongSerializationPolicyTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testDefaultLongSerialization {
  ComGoogleGsonJsonElement *element = [((ComGoogleGsonLongSerializationPolicy *) nil_chk(JreLoadEnum(ComGoogleGsonLongSerializationPolicy, DEFAULT))) serializeWithJavaLangLong:JavaLangLong_valueOfWithLong_(1556LL)];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((ComGoogleGsonJsonElement *) nil_chk(element)) isJsonPrimitive]);
  ComGoogleGsonJsonPrimitive *jsonPrimitive = [element getAsJsonPrimitive];
  JunitFrameworkTestCase_assertFalseWithBoolean_([((ComGoogleGsonJsonPrimitive *) nil_chk(jsonPrimitive)) isString]);
  JunitFrameworkTestCase_assertTrueWithBoolean_([jsonPrimitive isNumber]);
  JunitFrameworkTestCase_assertEqualsWithLong_withLong_(1556LL, [element getAsLong]);
}

- (void)testDefaultLongSerializationIntegration {
  ComGoogleGsonGson *gson = [((ComGoogleGsonGsonBuilder *) nil_chk([create_ComGoogleGsonGsonBuilder_init() setLongSerializationPolicyWithComGoogleGsonLongSerializationPolicy:JreLoadEnum(ComGoogleGsonLongSerializationPolicy, DEFAULT)])) create];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[1]", [((ComGoogleGsonGson *) nil_chk(gson)) toJsonWithId:[IOSLongArray arrayWithLongs:(jlong[]){ 1LL } count:1] withJavaLangReflectType:IOSClass_longArray(1)]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[1]", [gson toJsonWithId:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangLong_valueOfWithLong_(1LL) } count:1 type:JavaLangLong_class_()] withJavaLangReflectType:IOSClass_arrayType(JavaLangLong_class_(), 1)]);
}

- (void)testStringLongSerialization {
  ComGoogleGsonJsonElement *element = [((ComGoogleGsonLongSerializationPolicy *) nil_chk(JreLoadEnum(ComGoogleGsonLongSerializationPolicy, STRING))) serializeWithJavaLangLong:JavaLangLong_valueOfWithLong_(1556LL)];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((ComGoogleGsonJsonElement *) nil_chk(element)) isJsonPrimitive]);
  ComGoogleGsonJsonPrimitive *jsonPrimitive = [element getAsJsonPrimitive];
  JunitFrameworkTestCase_assertFalseWithBoolean_([((ComGoogleGsonJsonPrimitive *) nil_chk(jsonPrimitive)) isNumber]);
  JunitFrameworkTestCase_assertTrueWithBoolean_([jsonPrimitive isString]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"1556", [element getAsString]);
}

- (void)testStringLongSerializationIntegration {
  ComGoogleGsonGson *gson = [((ComGoogleGsonGsonBuilder *) nil_chk([create_ComGoogleGsonGsonBuilder_init() setLongSerializationPolicyWithComGoogleGsonLongSerializationPolicy:JreLoadEnum(ComGoogleGsonLongSerializationPolicy, STRING)])) create];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[\"1\"]", [((ComGoogleGsonGson *) nil_chk(gson)) toJsonWithId:[IOSLongArray arrayWithLongs:(jlong[]){ 1LL } count:1] withJavaLangReflectType:IOSClass_longArray(1)]);
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"[\"1\"]", [gson toJsonWithId:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangLong_valueOfWithLong_(1LL) } count:1 type:JavaLangLong_class_()] withJavaLangReflectType:IOSClass_arrayType(JavaLangLong_class_(), 1)]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testDefaultLongSerialization);
  methods[2].selector = @selector(testDefaultLongSerializationIntegration);
  methods[3].selector = @selector(testStringLongSerialization);
  methods[4].selector = @selector(testStringLongSerializationIntegration);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangException;" };
  static const J2ObjcClassInfo _ComGoogleGsonLongSerializationPolicyTest = { "LongSerializationPolicyTest", "com.google.gson", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonLongSerializationPolicyTest;
}

@end

void ComGoogleGsonLongSerializationPolicyTest_init(ComGoogleGsonLongSerializationPolicyTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonLongSerializationPolicyTest *new_ComGoogleGsonLongSerializationPolicyTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonLongSerializationPolicyTest, init)
}

ComGoogleGsonLongSerializationPolicyTest *create_ComGoogleGsonLongSerializationPolicyTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonLongSerializationPolicyTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonLongSerializationPolicyTest)
