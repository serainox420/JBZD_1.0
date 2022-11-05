package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@zzme
/* loaded from: classes.dex */
public abstract class zzdg {
    private static MessageDigest zzym = null;
    protected Object zzrJ = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] zzF(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageDigest zzet() {
        MessageDigest messageDigest;
        synchronized (this.zzrJ) {
            if (zzym != null) {
                messageDigest = zzym;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        zzym = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = zzym;
            }
        }
        return messageDigest;
    }
}
