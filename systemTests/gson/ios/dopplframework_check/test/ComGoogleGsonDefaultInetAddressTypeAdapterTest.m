//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonDefaultInetAddressTypeAdapterTest.h"
#include "ComGoogleGsonGson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/net/InetAddress.h"
#include "junit/framework/TestCase.h"

@interface ComGoogleGsonDefaultInetAddressTypeAdapterTest () {
 @public
  ComGoogleGsonGson *gson_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonDefaultInetAddressTypeAdapterTest, gson_, ComGoogleGsonGson *)

@implementation ComGoogleGsonDefaultInetAddressTypeAdapterTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonDefaultInetAddressTypeAdapterTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  [super setUp];
  JreStrongAssignAndConsume(&gson_, new_ComGoogleGsonGson_init());
}

- (void)testInetAddressSerializationAndDeserialization {
  JavaNetInetAddress *address = JavaNetInetAddress_getByNameWithNSString_(@"8.8.8.8");
  NSString *jsonAddress = [((ComGoogleGsonGson *) nil_chk(gson_)) toJsonWithId:address];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"\"8.8.8.8\"", jsonAddress);
  JavaNetInetAddress *value = [((ComGoogleGsonGson *) nil_chk(gson_)) fromJsonWithNSString:jsonAddress withIOSClass:JavaNetInetAddress_class_()];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(value, address);
}

- (void)dealloc {
  RELEASE_(gson_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(testInetAddressSerializationAndDeserialization);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "gson_", "LComGoogleGsonGson;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;" };
  static const J2ObjcClassInfo _ComGoogleGsonDefaultInetAddressTypeAdapterTest = { "DefaultInetAddressTypeAdapterTest", "com.google.gson", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleGsonDefaultInetAddressTypeAdapterTest;
}

@end

void ComGoogleGsonDefaultInetAddressTypeAdapterTest_init(ComGoogleGsonDefaultInetAddressTypeAdapterTest *self) {
  JunitFrameworkTestCase_init(self);
}

ComGoogleGsonDefaultInetAddressTypeAdapterTest *new_ComGoogleGsonDefaultInetAddressTypeAdapterTest_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonDefaultInetAddressTypeAdapterTest, init)
}

ComGoogleGsonDefaultInetAddressTypeAdapterTest *create_ComGoogleGsonDefaultInetAddressTypeAdapterTest_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonDefaultInetAddressTypeAdapterTest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonDefaultInetAddressTypeAdapterTest)
