package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.zzqf;
/* loaded from: classes2.dex */
public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public final View getAdvertiserView() {
        return super.zzt("1004");
    }

    public final View getBodyView() {
        return super.zzt("1002");
    }

    public final View getCallToActionView() {
        return super.zzt("1003");
    }

    public final View getHeadlineView() {
        return super.zzt("1001");
    }

    public final View getImageView() {
        return super.zzt("1005");
    }

    public final View getLogoView() {
        return super.zzt("1006");
    }

    public final MediaView getMediaView() {
        View zzt = super.zzt("1009");
        if (zzt instanceof MediaView) {
            return (MediaView) zzt;
        }
        if (zzt != null) {
            zzqf.zzbf("View is not an instance of MediaView");
        }
        return null;
    }

    public final void setAdvertiserView(View view) {
        super.zza("1004", view);
    }

    public final void setBodyView(View view) {
        super.zza("1002", view);
    }

    public final void setCallToActionView(View view) {
        super.zza("1003", view);
    }

    public final void setHeadlineView(View view) {
        super.zza("1001", view);
    }

    public final void setImageView(View view) {
        super.zza("1005", view);
    }

    public final void setLogoView(View view) {
        super.zza("1006", view);
    }

    public final void setMediaView(MediaView mediaView) {
        super.zza("1009", mediaView);
    }
}
