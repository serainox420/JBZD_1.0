package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;
/* compiled from: AudioCapabilities.java */
@TargetApi(21)
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3158a = new b(new int[]{2}, 2);
    private final int[] b;
    private final int c;

    public static b a(Context context) {
        return a(context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"InlinedApi"})
    public static b a(Intent intent) {
        if (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) {
            return f3158a;
        }
        return new b(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 0));
    }

    b(int[] iArr, int i) {
        if (iArr != null) {
            this.b = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.b);
        } else {
            this.b = new int[0];
        }
        this.c = i;
    }

    public boolean a(int i) {
        return Arrays.binarySearch(this.b, i) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Arrays.equals(this.b, bVar.b) && this.c == bVar.c;
    }

    public int hashCode() {
        return this.c + (Arrays.hashCode(this.b) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.c + ", supportedEncodings=" + Arrays.toString(this.b) + "]";
    }
}
