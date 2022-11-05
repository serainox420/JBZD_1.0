package com.google.android.gms.nearby.messages.internal;

import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes2.dex */
public class zzl extends zzc {
    public zzl(UUID uuid, Short sh, Short sh2) {
        this(zzb(uuid, sh, sh2));
    }

    public zzl(byte[] bArr) {
        super(zzC(bArr));
    }

    private static byte[] zzC(byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzb(bArr.length == 16 || bArr.length == 18 || bArr.length == 20, "Prefix must be a UUID, a UUID and a major, or a UUID, a major, and a minor.");
        return bArr;
    }

    private static byte[] zzb(UUID uuid, Short sh, Short sh2) {
        int i = 0;
        int i2 = (sh == null ? 0 : 2) + 16;
        if (sh2 != null) {
            i = 2;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + i2);
        allocate.putLong(uuid.getMostSignificantBits()).putLong(uuid.getLeastSignificantBits());
        if (sh != null) {
            allocate.putShort(sh.shortValue());
        }
        if (sh2 != null) {
            allocate.putShort(sh2.shortValue());
        }
        return allocate.array();
    }

    public UUID getProximityUuid() {
        ByteBuffer wrap = ByteBuffer.wrap(getBytes());
        return new UUID(wrap.getLong(), wrap.getLong());
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzc
    public String toString() {
        String valueOf = String.valueOf(getProximityUuid());
        String valueOf2 = String.valueOf(zzON());
        String valueOf3 = String.valueOf(zzOO());
        return new StringBuilder(String.valueOf(valueOf).length() + 47 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("IBeaconIdPrefix{proximityUuid=").append(valueOf).append(", major=").append(valueOf2).append(", minor=").append(valueOf3).append("}").toString();
    }

    public Short zzON() {
        byte[] bytes = getBytes();
        if (bytes.length >= 18) {
            return Short.valueOf(ByteBuffer.wrap(bytes).getShort(16));
        }
        return null;
    }

    public Short zzOO() {
        byte[] bytes = getBytes();
        if (bytes.length == 20) {
            return Short.valueOf(ByteBuffer.wrap(bytes).getShort(18));
        }
        return null;
    }
}
