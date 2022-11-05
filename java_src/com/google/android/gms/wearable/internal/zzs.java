package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.wearable.ChannelApi;
/* loaded from: classes2.dex */
public final class zzs extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    final int type;
    final int zzbTU;
    final int zzbTV;
    final zzu zzbTW;

    public zzs(zzu zzuVar, int i, int i2, int i3) {
        this.zzbTW = zzuVar;
        this.type = i;
        this.zzbTU = i2;
        this.zzbTV = i3;
    }

    private static String zzpr(int i) {
        switch (i) {
            case 1:
                return "CHANNEL_OPENED";
            case 2:
                return "CHANNEL_CLOSED";
            case 3:
                return "INPUT_CLOSED";
            case 4:
                return "OUTPUT_CLOSED";
            default:
                return Integer.toString(i);
        }
    }

    private static String zzps(int i) {
        switch (i) {
            case 0:
                return "CLOSE_REASON_NORMAL";
            case 1:
                return "CLOSE_REASON_DISCONNECTED";
            case 2:
                return "CLOSE_REASON_REMOTE_CLOSE";
            case 3:
                return "CLOSE_REASON_LOCAL_CLOSE";
            default:
                return Integer.toString(i);
        }
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbTW);
        String valueOf2 = String.valueOf(zzpr(this.type));
        String valueOf3 = String.valueOf(zzps(this.zzbTU));
        return new StringBuilder(String.valueOf(valueOf).length() + 81 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("ChannelEventParcelable[, channel=").append(valueOf).append(", type=").append(valueOf2).append(", closeReason=").append(valueOf3).append(", appErrorCode=").append(this.zzbTV).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzt.zza(this, parcel, i);
    }

    public void zza(ChannelApi.ChannelListener channelListener) {
        switch (this.type) {
            case 1:
                channelListener.onChannelOpened(this.zzbTW);
                return;
            case 2:
                channelListener.onChannelClosed(this.zzbTW, this.zzbTU, this.zzbTV);
                return;
            case 3:
                channelListener.onInputClosed(this.zzbTW, this.zzbTU, this.zzbTV);
                return;
            case 4:
                channelListener.onOutputClosed(this.zzbTW, this.zzbTU, this.zzbTV);
                return;
            default:
                Log.w("ChannelEventParcelable", new StringBuilder(25).append("Unknown type: ").append(this.type).toString());
                return;
        }
    }
}
