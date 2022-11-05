package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzayb;
import com.google.android.gms.internal.zzayf;
import com.google.android.gms.nearby.messages.internal.zzt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes2.dex */
public class MessageFilter extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<MessageFilter> CREATOR = new zzb();
    public static final MessageFilter INCLUDE_ALL_MY_TYPES = new Builder().includeAllMyTypes().build();
    final int zzaiI;
    private final List<zzt> zzbzB;
    private final List<zzayf> zzbzC;
    private final boolean zzbzD;
    private final List<zzayb> zzbzE;
    private final int zzbzF;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private boolean zzbzD;
        private final Set<zzt> zzbzG = new HashSet();
        private final List<zzayf> zzbzC = new ArrayList();
        private final Set<zzayb> zzbzH = new HashSet();
        private int zzbzF = 0;

        private Builder zzag(String str, String str2) {
            this.zzbzG.add(new zzt(str, str2));
            return this;
        }

        public MessageFilter build() {
            zzac.zza(this.zzbzD || !this.zzbzG.isEmpty(), "At least one of the include methods must be called.");
            return new MessageFilter(new ArrayList(this.zzbzG), this.zzbzC, this.zzbzD, new ArrayList(this.zzbzH), this.zzbzF);
        }

        public Builder includeAllMyTypes() {
            this.zzbzD = true;
            return this;
        }

        public Builder includeAudioBytes(int i) {
            boolean z = true;
            zzac.zzb(this.zzbzF == 0, "includeAudioBytes() can only be called once per MessageFilter instance.");
            zzac.zzb(i > 0, new StringBuilder(44).append("Invalid value for numAudioBytes: ").append(i).toString());
            if (i > 10) {
                z = false;
            }
            zzac.zzb(z, "numAudioBytes is capped by AudioBytes.MAX_SIZE = 10");
            zzag(Message.MESSAGE_NAMESPACE_RESERVED, Message.MESSAGE_TYPE_AUDIO_BYTES);
            this.zzbzF = i;
            return this;
        }

        public Builder includeEddystoneUids(String str, String str2) {
            zzag(Message.MESSAGE_NAMESPACE_RESERVED, Message.MESSAGE_TYPE_EDDYSTONE_UID);
            this.zzbzC.add(zzayf.zzah(str, str2));
            return this;
        }

        public Builder includeFilter(MessageFilter messageFilter) {
            this.zzbzG.addAll(messageFilter.zzOE());
            this.zzbzC.addAll(messageFilter.zzOG());
            this.zzbzH.addAll(messageFilter.zzOH());
            this.zzbzD |= messageFilter.zzOF();
            return this;
        }

        public Builder includeIBeaconIds(UUID uuid, Short sh, Short sh2) {
            zzag(Message.MESSAGE_NAMESPACE_RESERVED, Message.MESSAGE_TYPE_I_BEACON_ID);
            this.zzbzC.add(zzayf.zza(uuid, sh, sh2));
            return this;
        }

        public Builder includeNamespacedType(String str, String str2) {
            zzac.zzb(str != null && !str.isEmpty() && !str.contains("*"), "namespace(%s) cannot be null, empty or contain (*).", str);
            zzac.zzb(str2 != null && !str2.contains("*"), "type(%s) cannot be null or contain (*).", str2);
            return zzag(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageFilter(int i, List<zzt> list, List<zzayf> list2, boolean z, List<zzayb> list3, int i2) {
        this.zzaiI = i;
        this.zzbzB = Collections.unmodifiableList((List) zzac.zzw(list));
        this.zzbzD = z;
        this.zzbzC = Collections.unmodifiableList(list2 == null ? Collections.emptyList() : list2);
        this.zzbzE = Collections.unmodifiableList(list3 == null ? Collections.emptyList() : list3);
        this.zzbzF = i2;
    }

    private MessageFilter(List<zzt> list, List<zzayf> list2, boolean z, List<zzayb> list3, int i) {
        this(2, list, list2, z, list3, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageFilter)) {
            return false;
        }
        MessageFilter messageFilter = (MessageFilter) obj;
        return this.zzbzD == messageFilter.zzbzD && zzaa.equal(this.zzbzB, messageFilter.zzbzB) && zzaa.equal(this.zzbzC, messageFilter.zzbzC) && zzaa.equal(this.zzbzE, messageFilter.zzbzE);
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbzB, this.zzbzC, Boolean.valueOf(this.zzbzD), this.zzbzE);
    }

    public String toString() {
        boolean z = this.zzbzD;
        String valueOf = String.valueOf(this.zzbzB);
        return new StringBuilder(String.valueOf(valueOf).length() + 53).append("MessageFilter{includeAllMyTypes=").append(z).append(", messageTypes=").append(valueOf).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public List<zzt> zzOE() {
        return this.zzbzB;
    }

    public boolean zzOF() {
        return this.zzbzD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<zzayf> zzOG() {
        return this.zzbzC;
    }

    public List<zzayb> zzOH() {
        return this.zzbzE;
    }

    public int zzOI() {
        return this.zzbzF;
    }
}
