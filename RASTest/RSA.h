/*
 @author: ideawu
 @link: https://github.com/ideawu/Objective-C-RSA
*/

#import <Foundation/Foundation.h>

@interface RSA : NSObject

// return base64 encoded string
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;   //加密
// return raw data
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;        //加密
// return base64 encoded string
// enc with private key NOT working YET!
//+ (NSString *)encryptString:(NSString *)str privateKey:(NSString *)privKey;//加签
// return raw data
//+ (NSData *)encryptData:(NSData *)data privateKey:(NSString *)privKey;    //加签

// decrypt base64 encoded string, convert result to string(not base64 encoded)
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;   //验签
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;        //验签

+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey; //解密
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;      //解密


//
+ (NSString *)encryptString:(NSString *)str publicKeySecKeyRef:(SecKeyRef)pubSecKeyRef;
+ (NSData *)encryptData:(NSData *)data publicKeySecKeyRef:(SecKeyRef)pubSecKeyRef;

@end
