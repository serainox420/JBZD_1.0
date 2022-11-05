package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzayd;
import java.util.Arrays;
/* loaded from: classes.dex */
public class Message extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final int MAX_CONTENT_SIZE_BYTES = 102400;
    public static final int MAX_TYPE_LENGTH = 32;
    public static final String MESSAGE_NAMESPACE_RESERVED = "__reserved_namespace";
    public static final String MESSAGE_TYPE_AUDIO_BYTES = "__audio_bytes";
    public static final String MESSAGE_TYPE_EDDYSTONE_UID = "__eddystone_uid";
    public static final String MESSAGE_TYPE_I_BEACON_ID = "__i_beacon_id";
    private final byte[] content;
    private final String type;
    final int versionCode;
    private final String zzaGP;
    private final long zzbzA;
    @Deprecated
    final zzayd[] zzbzz;
    public static final Parcelable.Creator<Message> CREATOR = new zza();
    private static final zzayd[] zzbzy = {zzayd.zzbAr};

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message(int i, byte[] bArr, String str, String str2, zzayd[] zzaydVarArr, long j) {
        this.versionCode = i;
        this.type = (String) zzac.zzw(str2);
        this.zzaGP = str == null ? "" : str;
        this.zzbzA = 0L;
        if (zzaf(this.zzaGP, this.type)) {
            zzac.zzb(bArr == null, "Content must be null for a device presence message.");
        } else {
            zzac.zzw(bArr);
            zzac.zzb(bArr.length <= 102400, "Content length(%d) must not exceed MAX_CONTENT_SIZE_BYTES(%d)", Integer.valueOf(bArr.length), Integer.valueOf((int) MAX_CONTENT_SIZE_BYTES));
        }
        this.content = bArr;
        this.zzbzz = (zzaydVarArr == null || zzaydVarArr.length == 0) ? zzbzy : zzaydVarArr;
        zzac.zzb(str2.length() <= 32, "Type length(%d) must not exceed MAX_TYPE_LENGTH(%d)", Integer.valueOf(str2.length()), 32);
    }

    public Message(byte[] bArr) {
        this(bArr, "", "");
    }

    public Message(byte[] bArr, String str) {
        this(bArr, "", str);
    }

    public Message(byte[] bArr, String str, String str2) {
        this(bArr, str, str2, zzbzy);
    }

    public Message(byte[] bArr, String str, String str2, zzayd[] zzaydVarArr) {
        this(bArr, str, str2, zzaydVarArr, 0L);
    }

    public Message(byte[] bArr, String str, String str2, zzayd[] zzaydVarArr, long j) {
        this(2, bArr, str, str2, zzaydVarArr, j);
    }

    @Deprecated
    public static boolean zzaf(String str, String str2) {
        return str.equals(MESSAGE_NAMESPACE_RESERVED) && str2.equals("__device_presence");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        return TextUtils.equals(this.zzaGP, message.zzaGP) && TextUtils.equals(this.type, message.type) && Arrays.equals(this.content, message.content) && 0 == 0;
    }

    public byte[] getContent() {
        return this.content;
    }

    public String getNamespace() {
        return this.zzaGP;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaGP, this.type, Integer.valueOf(Arrays.hashCode(this.content)), 0L);
    }

    public String toString() {
        String str = this.zzaGP;
        String str2 = this.type;
        return new StringBuilder(String.valueOf(str).length() + 59 + String.valueOf(str2).length()).append("Message{namespace='").append(str).append("', type='").append(str2).append("', content=[").append(this.content == null ? 0 : this.content.length).append(" bytes]}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public boolean zzOC() {
        return MESSAGE_NAMESPACE_RESERVED.equals(getNamespace());
    }

    public long zzOD() {
        return 0L;
    }

    public boolean zzgm(String str) {
        return zzOC() && str.equals(getType());
    }
}
