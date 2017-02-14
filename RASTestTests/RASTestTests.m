//
//  RASTestTests.m
//  RASTestTests
//
//  Created by fanshengli on 16/3/4.
//  Copyright © 2016年 mao. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RSAEncrypt.h"
#import "RSA.h"

#define RSA_PUBLIC_KEY_BASE64 @"-----BEGIN PUBLIC KEY-----MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtfbJ8s2A15/clzkzd6Oq68PJIPRp6v3RnTQhcrNvwEqzAQYGgaUjN8aL8Q57UjQHgat6qScTx5YQtN7S5HJ9146dVmwmx1wU/imD5B4umOFEgNyi1pEvJSJqaKiequDlodkt1oqQGgcnPnTeV9EdFqdT5T0arzbFfHCkqqxlKWZF0BPebshEkvmkWhntS+XhjElDFJWWrIevX0IILPUJyXb+JFdCA0oY6wpt8bF/nb64myXcFqCMaaoEffVxW1OcEOYBRPb1Pwb5AolACwqiWADH+lmL5lCxEOcEOHE/wsckAkmOXb563zeUd4Vqnv7muOVG++C7tWcUp5mjuL1dxQIDAQAB-----END PUBLIC KEY-----"

#define RSA_PRIVATE_KEY_BASE64 @"-----BEGIN PUBLIC KEY-----MIIEpAIBAAKCAQEA0g9wrRzbehSwk7TxttGwWXhokceuogJg+Mx7XgdkT8m8rUlKvtQSMX4XbjFvB9JCPi31F4QQBPWt4KgjicXqy2t0tOvLoW4N7CxinnM4oE/Jx7YKuuRABEqXELeGgegUW4eEt0T7bJ2uyewGudhEgIEgb5RbvSrkUBb/osPabCktlAIR3/DYuCrcqYVPiDfze9kpOKi4FX1jkUBuaBZS+zNWx0iCtn3sd3Ne0pbV9rhrDdDaTaC3rGpc52F4/LX6Q4BVGEdzruL9Z2BrLpR6RaQH3lvcuajetAqEofFm3aoxua2qt0sKhkQEre1NpSwbF++XwjOAKip5W5oCv8NPEwIDAQABAoIBACw1pbA5b5O9AQDFR04Dycq6xb9QuFdOitwyJRDAG4OTYMtTrpCFD6Ms939wlf6eaOSvRXMCj2CL2GF84aXgaq8PWYuuSLgb8oAvQz4338YVpNEMZiu5WCPPEwYoqf1zO72bwvnTYdsVQLEspKm+c4RcKNhy7+/bNBwLCxhVggXbLufPEclDL5LUpP69NokTEfm0GdNrHLFicm1aH73ZYObb8gZW+1gBtugJmCBCG9IcTZe4/iEm7550sby7yQz81VotTqSFhU7YZlmlrFr9uCRPSebdN9EHMCdWrf1xqdDtq33rayuu/z1JuyHXOh9vmtmd5+ifgl3Q3yMe7amYohECgYEA+UKELZSbidhpVuGaDgFoRmRyEPZsQzHCqJLYr5J9DPEXzJFq4n1N4X9I6RlZ+5qz827pVgDTON3zISoUy/fWZXv/AeKUgd4bMBorM3BR5z5wTtJQSEB3NCzVIQgIabc5h3kjAsAcZAQJbMi/McocDQpU24XqFvEJSATBP7QhWdsCgYEA172RYy8MUGoLIqTkYjSnHw4MB2WAZzhXrbCcBxIogb43zyMxsMw9EtywA/1i3NeprTQPs8YvT7/Q5NB7IsmOq9SwbxvcObqzB4+dmZR2E4T54rFzcsz+MgtlnurId3gTvsTIxnU9VTqDV16cyJnnMt9R6gN3Zzsvd2KmVoh7MSkCgYEA2CfPujtSOtL6XsabsyOTSuAWbxFTx12iok9eK7uMSCnXaqZ8m1bwr+mSz9oVR3TcMvHu1Y83nOwUyKDWkh8lxLIn7XmRMaHrz+YRqrTvwepKuH/38QA+n3d1iASQTyT+dbYeH2d791vs1HKuIz5S3xgjiI9z9lsmolbFQzoxZdsCgYAAxgo+a83EgAzYK/UxsPSkdN1wLVn/hMEzuz1j/RmuFWuHz51+/8x8Q9RRv1faaN+P4m7n+x7yT0LFf0Xhww1C6nlTfKsWfefkcAxln5WozkJDINXEJJ4Iuee8YSUk4IZZmcUKiSMWKiaMaqdvRLYChbB6gVatRRYPfIgSKV0fuQKBgQCLxaEcG7tIlLB4hTnNnW9UVYDS1vKE6vgR/19Zcs4Om7kOfpIDCpamdb0OENYm0YDqudSeYgTaCNN55yTeovYSJ4dX6foSIthwEd4q0+dmt1eCTN1rxVTv/tB2uKYmNppy6kWyiwaj6QSaXiAeuFH9e0qurEqxF6s4PZ+DW8swLw==-----END PUBLIC KEY-----"

@interface RASTestTests : XCTestCase

@end

@implementation RASTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRSA {
    
    [self segmentDecrypt];
    
    NSString *str = [RSA encryptString:@"woqu我去" publicKey:RSA_PUBLIC_KEY_BASE64];
    NSLog(@"-->%@<--", str);
    
//    [self generateKeyPairPlease];
//    [self encryptWithPublicKey];
//    [self getPublicKeyBitsFromKey];
    
    NSString *string = @"LEigEdtSigaEqtdbcSoAUI0nusgBuSjBwlruuXOD1Dd7WQZr2iw1lGwYBCv0e3xZ9mheftLLZqbiOF5rFD8pRYWXYB4W5+rxM7Qt5lC96MwLq0KmFZeKBWPV+yEh0nN0j/+nThT2QQDfD08eLF2EQ7AFQBfJ1on4kl7SjZz1Gi8lgBZ11QgmX3lE1ZRcynp77i+zuXBU7M3YRZTlnBCw2jC1lg/3SWF/fUCGVFy4wYSog7Ssx4wUZOxDxcZEco0ftP724gVF+BxAacUu9NVAA7XNJz0kg9plbVWkYKoUTAYU8OhIKJn+Lo2jrg2D12sckdplwlMPV455vg/UB1V6gPUNR5sZKPj3h9Dl";
    NSData *data = [[NSData alloc] initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
//    [self decryptWithPrivateKeyData:data];
//    [self encryptWithPublicKey];
}

- (void)testExample {
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

//分段加密
- (void)segmentEncrypt {
    NSString *longStr = @"永和九年，岁在癸丑，暮春之初，会于会稽山阴之兰亭，修禊事也。群贤7毕至8，少长9咸10集。此地有崇山峻岭11，茂林修竹12，又有清流激湍13，映带左右14。引以为流觞曲水15，列坐其次16。虽无丝竹管弦之盛17，一觞一咏18，亦足以畅叙幽情19。是日也20，天朗气清，惠风21和畅22。仰观宇宙之大，俯察品类之盛23，所以24游目骋25怀，足以极26视听之娱，信27可乐也。夫人之相与，俯仰一世28。或取诸29怀抱，悟言30一室之内；或因寄所托，放浪形骸之外31。虽趣舍万殊32，静躁33不同，当其欣于所遇，暂34得于己，快然自足35，不知老之将至36。及其所之既倦37，情随事迁38，感慨系之39矣。向40之所欣，俯仰之间，已为陈迹41，犹不能不以之兴怀42。况修短随化43，终期44于尽。古人云：“死生亦大矣45！”岂不痛哉！每览昔人兴感之由，若合一契46，未尝不临文嗟悼47，不能喻48之于怀。固知一死生为虚诞，齐彭殇为妄作49。后之视今，亦犹今之视昔，悲夫！故列叙时人50，录其所述51。虽世殊事异，所以兴怀，其致一也52。后之览者53，亦将有感于斯文";
    
    NSString *enStr = [RSA encryptString:longStr publicKey:RSA_PUBLIC_KEY_BASE64];
    
    NSLog(@"-->%@<--", enStr);
}

//分段解密
- (void)segmentDecrypt {
    NSString *longStr = @"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";
    
    NSData *base64 = [[NSData alloc] initWithBase64EncodedString:longStr options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    NSMutableData *md = [NSMutableData data];
    
    NSUInteger len = base64.length / 256;
    
    NSData *temp = nil;
    
    for (int i=0; i<len; i++) {
        NSRange range = NSMakeRange(i*256, 256);
        
        temp = [base64 subdataWithRange:range];
        
        [md appendData:[RSA decryptData:temp privateKey:RSA_PRIVATE_KEY_BASE64]];
    }
    
    NSLog(@"->%@<-", [[NSString alloc] initWithData:md encoding:NSUTF8StringEncoding]);
}


//-----------------------------------生成密钥对----------------------------------------------------------
// 1. 定义公／私钥id的字符串变量，以便后面使用
static const UInt8 publicKeyIdentifier[] = "com.wan.test.publickey\0";
static const UInt8 privateKeyIdentifier[] = "com.wan.test.privatekey\0";

- (void)generateKeyPairPlease
{
    OSStatus status = noErr;
    
    // 2. 定义dictionary，用于传递SecKeyGeneratePair函数中的第1个参数
    NSMutableDictionary *privateKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *publicKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *keyPairAttr = [[NSMutableDictionary alloc] init];
    
    // 3. 把第1步中定义的字符串转换为NSData对象
    NSData * publicTag = [NSData dataWithBytes:publicKeyIdentifier length:strlen((const char *)publicKeyIdentifier)];
    NSData * privateTag = [NSData dataWithBytes:privateKeyIdentifier length:strlen((const char *)privateKeyIdentifier)];
    
    // 4. 为公／私钥对准备SecKeyRef对象
    SecKeyRef publicKey = NULL;
    SecKeyRef privateKey = NULL;
    
    // 5. 设置密钥对的密钥类型为RSA
    [keyPairAttr setObject:(id)kSecAttrKeyTypeRSA forKey:(id)kSecAttrKeyType]; // 5
    // 6. 设置密钥对的密钥长度为2048
    [keyPairAttr setObject:@2048 forKey:(id)kSecAttrKeySizeInBits]; // 6
    
    // 7. 设置私钥的持久化属性（即是否存入钥匙串）为YES
    [privateKeyAttr setObject:@(YES) forKey:(id)kSecAttrIsPermanent]; // 7
    // 8. 把1－3步中的identifier放到私钥的dictionary中
    [privateKeyAttr setObject:privateTag forKey:(id)kSecAttrApplicationTag]; // 8
    
    // 9. 设置公钥的持久化属性（即是否存入钥匙串）为YES
    [publicKeyAttr setObject:@(YES) forKey:(id)kSecAttrIsPermanent]; // 9
    // 10. 把1－3步中的identifier放到公钥的dictionary中
    [publicKeyAttr setObject:publicTag forKey:(id)kSecAttrApplicationTag]; // 10
    
    // 11. 把私钥的属性集（dictionary）加到密钥对的属性集（dictionary）中
    [keyPairAttr setObject:privateKeyAttr forKey:(id)kSecPrivateKeyAttrs]; // 11
    // 12. 把公钥的属性集（dictionary）加到密钥对的属性集（dictionary）中
    [keyPairAttr setObject:publicKeyAttr forKey:(id)kSecPublicKeyAttrs]; // 12
    
    // 13. 产生密钥对
    status = SecKeyGeneratePair((CFDictionaryRef)keyPairAttr, &publicKey, &privateKey); // 13
    
    //    error handling...
    if (noErr != status) {
        //有错误
    }
    // 14. 释放
//    printf("%s \n%s", publicKey, privateKey);
    
//    NSLog(@"\n--> %@\n\n--> %@\n", publicKey, privateKey);
    
    if(publicKey) CFRelease(publicKey);
    if(privateKey) CFRelease(privateKey);                       // 14
}
//---------------------------------------------------------------------------------------------------

// 使用公钥加密
- (void)encryptWithPublicKey
{
    OSStatus status = noErr;
    
    size_t cipherBufferSize;    //公钥块长度，也是加密后的文本的长度
    
    // 1. 定义缓存，用于放入加密文本
    uint8_t *cipherBuffer;                     // 1
    
    // [cipherBufferSize]
    // 2. 指定要加密的文本
//    const uint8_t nonce[] = "the quick brown fox jumps over the lazy dog\0"; // 2
    const uint8_t nonce[] = "本文整理RSA\0";
    
    // 3. 定义SecKeyRef，用于公钥
    SecKeyRef publicKey = NULL;                                 // 3
    
    // 4. 定义NSData对象，存储公钥的identifier 该id在钥匙串中唯一
    NSData * publicTag = [NSData dataWithBytes:publicKeyIdentifier length:strlen((const char *)publicKeyIdentifier)]; // 4
    
    // 5. 定义dictionary，用于从钥匙串中查找公钥
    NSMutableDictionary *queryPublicKey = [[NSMutableDictionary alloc] init]; // 5
    
    
    // 6. 设置dictionary的键－值属性。属性中指定，钥匙串条目类型为“密钥”，条目identifier为第4步中指定的字符串，密钥类型为RSA，函数调用结束返回查找到的条目引用
    [queryPublicKey setObject:(id)kSecClassKey forKey:(id)kSecClass];
    [queryPublicKey setObject:publicTag forKey:(id)kSecAttrApplicationTag];
    [queryPublicKey setObject:(id)kSecAttrKeyTypeRSA forKey:(id)kSecAttrKeyType];
    [queryPublicKey setObject:@(YES) forKey:(id)kSecReturnRef]; // 6
    
    
    // 7. 调用SecItemCopyMatching函数进行查找
    status = SecItemCopyMatching ((CFDictionaryRef)queryPublicKey, (CFTypeRef *)&publicKey); // 7
    
    //  Allocate a buffer
    cipherBufferSize = SecKeyGetBlockSize(publicKey);
    cipherBuffer = malloc(cipherBufferSize);
    
    //  Error handling
    if (cipherBufferSize < sizeof(nonce)) {
        // Ordinarily, you would split the data up into blocks
        // equal to cipherBufferSize, with the last block being
        // shorter. For simplicity, this example assumes that
        // the data is short enough to fit.
        printf("Could not decrypt.  Packet too large.\n");
        return;
    }
    
    // Encrypt using the public.
    // 8. 加密数据， 返回结果用PKCS1格式对齐
    status = SecKeyEncrypt(publicKey,
                           kSecPaddingPKCS1,
                           nonce,
                           (size_t) sizeof(nonce)/sizeof(nonce[0]),
                           cipherBuffer,
                           &cipherBufferSize
                           );                               // 8
    
    //  Error handling
    if (noErr != status) {
        //有错误
    }
    
    //  Store or transmit the encrypted text
//    printf("--> %s <--\n", cipherBuffer);   //打印加密后的文本
    NSString *base64 = [[[NSData alloc] initWithBytes:cipherBuffer length:cipherBufferSize] base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    NSLog(@"\n\n%@\n\n", base64);
    
//    [self getPublicKeyBitsFromKey2:publicKey];
    
    if(publicKey) CFRelease(publicKey);
    free(cipherBuffer);
}

//data是非base64编码的
- (void)decryptWithPrivateKeyData:(NSData *)data
{
    OSStatus status = noErr;
    size_t cipherBufferSize = 0;
    size_t plainBufferSize = 0;
    uint8_t *plainBuffer;
    SecKeyRef privateKey = NULL;
    
    NSData * privateTag = [NSData dataWithBytes:privateKeyIdentifier length:strlen((const char *)privateKeyIdentifier)];
    
    NSMutableDictionary *queryPrivateKey = [[NSMutableDictionary alloc] init];
    
    // Set the private key query dictionary.
    [queryPrivateKey setObject:(id)kSecClassKey forKey:(id)kSecClass];
    [queryPrivateKey setObject:privateTag forKey:(id)kSecAttrApplicationTag];
    [queryPrivateKey setObject:(id)kSecAttrKeyTypeRSA forKey:(id)kSecAttrKeyType];
    [queryPrivateKey setObject:[NSNumber numberWithBool:YES] forKey:(id)kSecReturnRef];
    
    // 1
    status = SecItemCopyMatching((CFDictionaryRef)queryPrivateKey, (CFTypeRef *)&privateKey); // 2
    
    cipherBufferSize = [data length];
    plainBufferSize = SecKeyGetBlockSize(privateKey);
    
    if (plainBufferSize < cipherBufferSize) {
        
        // Ordinarily, you would split the data up into blocks
        // equal to plainBufferSize, with the last block being
        // shorter. For simplicity, this example assumes that
        // the data is short enough to fit.
        printf("Could not decrypt.  Packet too large.\n");
        return;
    }
    //  Allocate the buffer
    
    plainBuffer = malloc(plainBufferSize);
    
    //  Error handling
    status = SecKeyDecrypt(privateKey,
                           kSecPaddingNone,
                           (const uint8_t *) [data bytes],    //加密过的文本
                           cipherBufferSize,    //加密过的文本长度
                           plainBuffer,
                           &plainBufferSize
                           );                              // 3
    
    //  Error handling
    if (noErr != status) {
        //有错误
        printf("2. 有错误\n");
        return;
    }
    //  Store or display the decrypted text
//    printf("-- %s --", plainBuffer);   //打印解密后的文本
    NSLog(@"->%@<-", [[NSString alloc] initWithData:[NSData dataWithBytes:plainBuffer length:plainBufferSize] encoding:NSUTF8StringEncoding]);
    NSLog(@"->%@<-", [NSString stringWithCharacters:(const unichar *)plainBuffer length:plainBufferSize]);
    
    if(privateKey) CFRelease(privateKey);
}

- (NSData *)getPublicKeyBitsFromKey
{
    OSStatus sanityCheck = noErr;
    NSData * publicKeyBits = nil;
    NSData * publicTag = [NSData dataWithBytes:publicKeyIdentifier length:strlen((const char *)publicKeyIdentifier)];
    
    NSMutableDictionary * queryPublicKey = [[NSMutableDictionary alloc] init];
    
    // Set the public key query dictionary.
    [queryPublicKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
    [queryPublicKey setObject:publicTag forKey:(__bridge id)kSecAttrApplicationTag];
    [queryPublicKey setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
    [queryPublicKey setObject:@YES forKey:(__bridge id)kSecReturnData];
    
    // Get the key bits.
    sanityCheck = SecItemCopyMatching((__bridge CFDictionaryRef)queryPublicKey, (void *)&publicKeyBits);
    
    NSLog(@"\n0.\n%@\n\n", publicKeyBits);
    
    NSData *debase1 = [[NSData alloc] initWithBase64EncodedData:publicKeyBits options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSLog(@"\n1.\n%lu\n\n", (unsigned long)debase1.length);//失败
    
    //编码后以回车符结尾
    NSData *base64 = [publicKeyBits base64EncodedDataWithOptions:NSDataBase64EncodingEndLineWithCarriageReturn];
    NSLog(@"\n2.\n%@\n\n", base64);
    
    NSLog(@"\n3.\n%@\n\n", [publicKeyBits base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed]);//编码后以换行符结尾
    
    NSLog(@"\n4.\n%@\n\n", [[NSString alloc] initWithData:base64 encoding:NSUTF8StringEncoding]);//成功
    
    NSLog(@"\n5.\n%@\n\n", [[NSString alloc] initWithData:publicKeyBits encoding:NSUTF8StringEncoding]);
    if (sanityCheck != noErr) { //有错
        publicKeyBits = nil;
    }
    
    return publicKeyBits;
}

- (NSData *)getPublicKeyBitsFromKey2
{
    NSData *publicTag = [[NSData alloc] initWithBytes:publicKeyIdentifier length:sizeof(publicKeyIdentifier)];
    
    OSStatus sanityCheck = noErr;
    NSData * publicKeyBits = nil;
    
    NSMutableDictionary * queryPublicKey = [[NSMutableDictionary alloc] init];
    [queryPublicKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
    [queryPublicKey setObject:publicTag forKey:(__bridge id)kSecAttrApplicationTag];
    [queryPublicKey setObject:(__bridge id)kSecAttrKeyTypeRSA forKey:(__bridge id)kSecAttrKeyType];
    [queryPublicKey setObject:@YES forKey:(__bridge id)kSecReturnData];
    
    CFTypeRef result;
    sanityCheck = SecItemCopyMatching((__bridge CFDictionaryRef)queryPublicKey, &result);
    
    if (sanityCheck == errSecSuccess) { //没错
        publicKeyBits = CFBridgingRelease(result);
    }
    
    NSLog(@"data: \n%@ <--", publicKeyBits);
    
    [publicKeyBits writeToFile:@"/Users/fanshengli/Desktop/public.key" atomically:YES];
    
    NSLog(@"\n| %@ |", [[NSString alloc] initWithData:publicKeyBits encoding:NSUTF8StringEncoding]);
    
    return publicKeyBits;
}

@end
