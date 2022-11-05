package com.google.android.gms.iid;

import com.google.android.gms.vision.barcode.Barcode;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class zza {
    public static KeyPair zzHg() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(Barcode.PDF417);
            return keyPairGenerator.generateKeyPair();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }
}
