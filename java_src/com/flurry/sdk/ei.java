package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum ei {
    kUnknown(0),
    kNoNetworkConnectivity(1),
    kNoContext(2),
    kInvalidOAuth(3),
    kInvalidImageUrl(4),
    kInvalidBundle(5),
    kRequestTokenFailed(6),
    kUserInfoFailed(7),
    kOAuthLoginFailed(8),
    kAccessTokenFailed(9),
    kPostFailed(10),
    kInvalidPostId(11),
    kPostCancelled(12),
    kTimeOut(13),
    kFlurryShareActivityMissing(14),
    kChromeTabError(15);
    
    private int q;

    ei(int i) {
        this.q = i;
    }
}
