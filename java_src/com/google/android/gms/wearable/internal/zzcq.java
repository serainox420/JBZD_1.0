package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
/* loaded from: classes2.dex */
final class zzcq implements ChannelApi.ChannelListener {
    private final String zzaiJ;
    private final ChannelApi.ChannelListener zzbUQ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcq(String str, ChannelApi.ChannelListener channelListener) {
        this.zzaiJ = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzbUQ = (ChannelApi.ChannelListener) com.google.android.gms.common.internal.zzac.zzw(channelListener);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcq)) {
            return false;
        }
        zzcq zzcqVar = (zzcq) obj;
        return this.zzbUQ.equals(zzcqVar.zzbUQ) && this.zzaiJ.equals(zzcqVar.zzaiJ);
    }

    public int hashCode() {
        return (this.zzaiJ.hashCode() * 31) + this.zzbUQ.hashCode();
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onChannelClosed(Channel channel, int i, int i2) {
        this.zzbUQ.onChannelClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onChannelOpened(Channel channel) {
        this.zzbUQ.onChannelOpened(channel);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onInputClosed(Channel channel, int i, int i2) {
        this.zzbUQ.onInputClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onOutputClosed(Channel channel, int i, int i2) {
        this.zzbUQ.onOutputClosed(channel, i, i2);
    }
}
