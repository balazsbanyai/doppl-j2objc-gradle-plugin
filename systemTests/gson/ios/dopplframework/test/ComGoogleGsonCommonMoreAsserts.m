//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonCommonMoreAsserts.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/Collection.h"
#include "junit/framework/Assert.h"

@implementation ComGoogleGsonCommonMoreAsserts

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonCommonMoreAsserts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)assertEqualsWithIntArray:(IOSIntArray *)expected
                    withIntArray:(IOSIntArray *)target {
  ComGoogleGsonCommonMoreAsserts_assertEqualsWithIntArray_withIntArray_(expected, target);
}

+ (void)assertEqualsWithJavaLangIntegerArray:(IOSObjectArray *)expected
                    withJavaLangIntegerArray:(IOSObjectArray *)target {
  ComGoogleGsonCommonMoreAsserts_assertEqualsWithJavaLangIntegerArray_withJavaLangIntegerArray_(expected, target);
}

+ (void)assertContainsWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                      withId:(id)value {
  ComGoogleGsonCommonMoreAsserts_assertContainsWithJavaUtilCollection_withId_(collection, value);
}

+ (void)assertEqualsAndHashCodeWithId:(id)a
                               withId:(id)b {
  ComGoogleGsonCommonMoreAsserts_assertEqualsAndHashCodeWithId_withId_(a, b);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, 5, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(assertEqualsWithIntArray:withIntArray:);
  methods[2].selector = @selector(assertEqualsWithJavaLangIntegerArray:withJavaLangIntegerArray:);
  methods[3].selector = @selector(assertContainsWithJavaUtilCollection:withId:);
  methods[4].selector = @selector(assertEqualsAndHashCodeWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "assertEquals", "[I[I", "[LJavaLangInteger;[LJavaLangInteger;", "assertContains", "LJavaUtilCollection;LNSObject;", "<T:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;TT;)V", "assertEqualsAndHashCode", "LNSObject;LNSObject;" };
  static const J2ObjcClassInfo _ComGoogleGsonCommonMoreAsserts = { "MoreAsserts", "com.google.gson.common", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonCommonMoreAsserts;
}

@end

void ComGoogleGsonCommonMoreAsserts_init(ComGoogleGsonCommonMoreAsserts *self) {
  NSObject_init(self);
}

ComGoogleGsonCommonMoreAsserts *new_ComGoogleGsonCommonMoreAsserts_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonCommonMoreAsserts, init)
}

ComGoogleGsonCommonMoreAsserts *create_ComGoogleGsonCommonMoreAsserts_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonCommonMoreAsserts, init)
}

void ComGoogleGsonCommonMoreAsserts_assertEqualsWithIntArray_withIntArray_(IOSIntArray *expected, IOSIntArray *target) {
  ComGoogleGsonCommonMoreAsserts_initialize();
  if (expected == nil) {
    JunitFrameworkAssert_assertNullWithId_(target);
  }
  JunitFrameworkAssert_assertEqualsWithInt_withInt_(((IOSIntArray *) nil_chk(expected))->size_, ((IOSIntArray *) nil_chk(target))->size_);
  for (jint i = 0; i < expected->size_; ++i) {
    JunitFrameworkAssert_assertEqualsWithInt_withInt_(IOSIntArray_Get(expected, i), IOSIntArray_Get(target, i));
  }
}

void ComGoogleGsonCommonMoreAsserts_assertEqualsWithJavaLangIntegerArray_withJavaLangIntegerArray_(IOSObjectArray *expected, IOSObjectArray *target) {
  ComGoogleGsonCommonMoreAsserts_initialize();
  if (expected == nil) {
    JunitFrameworkAssert_assertNullWithId_(target);
  }
  JunitFrameworkAssert_assertEqualsWithInt_withInt_(((IOSObjectArray *) nil_chk(expected))->size_, ((IOSObjectArray *) nil_chk(target))->size_);
  for (jint i = 0; i < expected->size_; ++i) {
    JunitFrameworkAssert_assertEqualsWithId_withId_(IOSObjectArray_Get(expected, i), IOSObjectArray_Get(target, i));
  }
}

void ComGoogleGsonCommonMoreAsserts_assertContainsWithJavaUtilCollection_withId_(id<JavaUtilCollection> collection, id value) {
  ComGoogleGsonCommonMoreAsserts_initialize();
  for (id __strong entry_ in nil_chk(collection)) {
    if ([nil_chk(entry_) isEqual:value]) {
      return;
    }
  }
  JunitFrameworkAssert_failWithNSString_(JreStrcat("@$@", value, @" not present in ", collection));
}

void ComGoogleGsonCommonMoreAsserts_assertEqualsAndHashCodeWithId_withId_(id a, id b) {
  ComGoogleGsonCommonMoreAsserts_initialize();
  JunitFrameworkAssert_assertTrueWithBoolean_([nil_chk(a) isEqual:b]);
  JunitFrameworkAssert_assertTrueWithBoolean_([nil_chk(b) isEqual:a]);
  JunitFrameworkAssert_assertEqualsWithInt_withInt_(((jint) [a hash]), ((jint) [b hash]));
  JunitFrameworkAssert_assertFalseWithBoolean_([a isEqual:nil]);
  JunitFrameworkAssert_assertFalseWithBoolean_([a isEqual:create_NSObject_init()]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonCommonMoreAsserts)