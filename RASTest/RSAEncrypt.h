//
//  RSAEncrypt.h
//  RASTest
//
//  Created by fanshengli on 16/3/4.
//  Copyright © 2016年 mao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAEncrypt : NSObject {
    SecKeyRef publicKey;
    SecCertificateRef certificate;
    SecPolicyRef policy;
    SecTrustRef trust;
    size_t maxPlainLen;
}
- (NSData *) encryptWithData:(NSData *)content;
- (NSData *) encryptWithString:(NSString *)content;
- (NSString *) encryptToString:(NSString *)content;

@end
