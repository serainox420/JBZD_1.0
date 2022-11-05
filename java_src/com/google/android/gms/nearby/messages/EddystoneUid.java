package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.nearby.messages.internal.zzg;
/* loaded from: classes2.dex */
public class EddystoneUid {
    public static final int INSTANCE_LENGTH = 6;
    public static final int LENGTH = 16;
    public static final int NAMESPACE_LENGTH = 10;
    private final zzg zzbzw;

    public EddystoneUid(String str) {
        this(com.google.android.gms.nearby.messages.internal.zzc.zzgn(str));
    }

    public EddystoneUid(String str, String str2) {
        this.zzbzw = new zzg(str, str2);
    }

    public EddystoneUid(byte[] bArr) {
        this.zzbzw = new zzg(zzC(bArr));
    }

    public static EddystoneUid from(Message message) {
        boolean zzgm = message.zzgm(Message.MESSAGE_TYPE_EDDYSTONE_UID);
        String valueOf = String.valueOf(message.getType());
        zzac.zzb(zzgm, new StringBuilder(String.valueOf(valueOf).length() + 58).append("Message type '").append(valueOf).append("' is not Message.MESSAGE_TYPE_EDDYSTONE_UID.").toString());
        return new EddystoneUid(message.getContent());
    }

    private static byte[] zzC(byte[] bArr) {
        zzac.zzb(bArr.length == 16, "Bytes must be a namespace plus instance (16 bytes).");
        return bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EddystoneUid) {
            return zzaa.equal(this.zzbzw, ((EddystoneUid) obj).zzbzw);
        }
        return false;
    }

    public String getHex() {
        return this.zzbzw.getHex();
    }

    public String getInstance() {
        return this.zzbzw.getInstance();
    }

    public String getNamespace() {
        return this.zzbzw.getNamespace();
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbzw);
    }

    public String toString() {
        String valueOf = String.valueOf(getHex());
        return new StringBuilder(String.valueOf(valueOf).length() + 17).append("EddystoneUid{id=").append(valueOf).append("}").toString();
    }
}
