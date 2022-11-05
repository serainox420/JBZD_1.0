package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.nearby.messages.internal.zzl;
import java.util.UUID;
/* loaded from: classes2.dex */
public class IBeaconId {
    public static final int LENGTH = 20;
    private final zzl zzbzx;

    public IBeaconId(UUID uuid, short s, short s2) {
        this.zzbzx = new zzl(uuid, Short.valueOf(s), Short.valueOf(s2));
    }

    public IBeaconId(byte[] bArr) {
        this.zzbzx = new zzl(zzC(bArr));
    }

    public static IBeaconId from(Message message) {
        boolean zzgm = message.zzgm(Message.MESSAGE_TYPE_I_BEACON_ID);
        String valueOf = String.valueOf(message.getType());
        zzac.zzb(zzgm, new StringBuilder(String.valueOf(valueOf).length() + 55).append("Message type '").append(valueOf).append("' is not Message.MESSAGE_TYPE_I_BEACON_ID").toString());
        return new IBeaconId(message.getContent());
    }

    private static byte[] zzC(byte[] bArr) {
        zzac.zzb(bArr.length == 20, "iBeacon ID must be a UUID, a major, and a minor (20 total bytes).");
        return bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IBeaconId) {
            return zzaa.equal(this.zzbzx, ((IBeaconId) obj).zzbzx);
        }
        return false;
    }

    public short getMajor() {
        return this.zzbzx.zzON().shortValue();
    }

    public short getMinor() {
        return this.zzbzx.zzOO().shortValue();
    }

    public UUID getProximityUuid() {
        return this.zzbzx.getProximityUuid();
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbzx);
    }

    public String toString() {
        String valueOf = String.valueOf(getProximityUuid());
        short major = getMajor();
        return new StringBuilder(String.valueOf(valueOf).length() + 53).append("IBeaconId{proximityUuid=").append(valueOf).append(", major=").append((int) major).append(", minor=").append((int) getMinor()).append("}").toString();
    }
}
