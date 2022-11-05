package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.util.i;
import com.google.android.exoplayer2.util.v;
import com.openx.view.mraid.JSInterface;
/* compiled from: MediaCodecInfo.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f3307a;
    public final boolean b;
    public final boolean c;
    private final String d;
    private final MediaCodecInfo.CodecCapabilities e;

    public static a a(String str) {
        return new a(str, null, null);
    }

    public static a a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return new a(str, str2, codecCapabilities);
    }

    private a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        boolean z = true;
        this.f3307a = (String) com.google.android.exoplayer2.util.a.a(str);
        this.d = str2;
        this.e = codecCapabilities;
        this.b = codecCapabilities != null && a(codecCapabilities);
        this.c = (codecCapabilities == null || !c(codecCapabilities)) ? false : z;
    }

    public MediaCodecInfo.CodecProfileLevel[] a() {
        return (this.e == null || this.e.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.e.profileLevels;
    }

    public boolean b(String str) {
        MediaCodecInfo.CodecProfileLevel[] a2;
        if (str == null || this.d == null) {
            return true;
        }
        String f = i.f(str);
        if (f == null) {
            return true;
        }
        if (!this.d.equals(f)) {
            c("codec.mime " + str + ", " + f);
            return false;
        }
        Pair<Integer, Integer> a3 = MediaCodecUtil.a(str);
        if (a3 == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a()) {
            if (codecProfileLevel.profile == ((Integer) a3.first).intValue() && codecProfileLevel.level >= ((Integer) a3.second).intValue()) {
                return true;
            }
        }
        c("codec.profileLevel, " + str + ", " + f);
        return false;
    }

    @TargetApi(21)
    public boolean a(int i, int i2, double d) {
        if (this.e == null) {
            c("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.e.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("sizeAndRate.vCaps");
            return false;
        }
        if (!a(videoCapabilities, i, i2, d)) {
            if (i >= i2 || !a(videoCapabilities, i2, i, d)) {
                c("sizeAndRate.support, " + i + JSInterface.JSON_X + i2 + JSInterface.JSON_X + d);
                return false;
            }
            d("sizeAndRate.rotated, " + i + JSInterface.JSON_X + i2 + JSInterface.JSON_X + d);
        }
        return true;
    }

    @TargetApi(21)
    public Point a(int i, int i2) {
        if (this.e == null) {
            c("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.e.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(widthAlignment * v.a(i, widthAlignment), heightAlignment * v.a(i2, heightAlignment));
    }

    @TargetApi(21)
    public boolean a(int i) {
        if (this.e == null) {
            c("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.e.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("sampleRate.aCaps");
            return false;
        } else if (!audioCapabilities.isSampleRateSupported(i)) {
            c("sampleRate.support, " + i);
            return false;
        } else {
            return true;
        }
    }

    @TargetApi(21)
    public boolean b(int i) {
        if (this.e == null) {
            c("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.e.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() < i) {
            c("channelCount.support, " + i);
            return false;
        } else {
            return true;
        }
    }

    private void c(String str) {
        Log.d("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f3307a + ", " + this.d + "] [" + v.e + "]");
    }

    private void d(String str) {
        Log.d("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f3307a + ", " + this.d + "] [" + v.e + "]");
    }

    private static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return v.f3519a >= 19 && b(codecCapabilities);
    }

    @TargetApi(19)
    private static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    @TargetApi(21)
    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return v.f3519a >= 21 && d(codecCapabilities);
    }

    @TargetApi(21)
    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }
}
