package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.facebook.common.util.ByteConstants;
import com.facebook.imagepipeline.memory.DefaultFlexByteArrayPoolParams;
import com.facebook.internal.Utility;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.vision.barcode.Barcode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes2.dex */
public final class MediaCodecUtil {
    private static final SparseIntArray e;
    private static final Map<String, Integer> f;

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.exoplayer2.mediacodec.a f3304a = com.google.android.exoplayer2.mediacodec.a.a("OMX.google.raw.decoder");
    private static final Pattern b = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<a, List<com.google.android.exoplayer2.mediacodec.a>> c = new HashMap<>();
    private static int g = -1;
    private static final SparseIntArray d = new SparseIntArray();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface b {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();
    }

    /* loaded from: classes2.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    static {
        d.put(66, 1);
        d.put(77, 2);
        d.put(88, 4);
        d.put(100, 8);
        e = new SparseIntArray();
        e.put(10, 1);
        e.put(11, 4);
        e.put(12, 8);
        e.put(13, 16);
        e.put(20, 32);
        e.put(21, 64);
        e.put(22, 128);
        e.put(30, 256);
        e.put(31, 512);
        e.put(32, 1024);
        e.put(40, Barcode.PDF417);
        e.put(41, 4096);
        e.put(42, Utility.DEFAULT_STREAM_BUFFER_SIZE);
        e.put(50, 16384);
        e.put(51, 32768);
        e.put(52, 65536);
        f = new HashMap();
        f.put("L30", 1);
        f.put("L60", 4);
        f.put("L63", 16);
        f.put("L90", 64);
        f.put("L93", 256);
        f.put("L120", 1024);
        f.put("L123", 4096);
        f.put("L150", 16384);
        f.put("L153", 65536);
        f.put("L156", 262144);
        f.put("L180", Integer.valueOf((int) ByteConstants.MB));
        f.put("L183", Integer.valueOf((int) DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE));
        f.put("L186", 16777216);
        f.put("H30", 2);
        f.put("H60", 8);
        f.put("H63", 32);
        f.put("H90", 128);
        f.put("H93", 512);
        f.put("H120", Integer.valueOf((int) Barcode.PDF417));
        f.put("H123", Integer.valueOf((int) Utility.DEFAULT_STREAM_BUFFER_SIZE));
        f.put("H150", 32768);
        f.put("H153", Integer.valueOf((int) MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES));
        f.put("H156", 524288);
        f.put("H180", 2097152);
        f.put("H183", 8388608);
        f.put("H186", 33554432);
    }

    public static com.google.android.exoplayer2.mediacodec.a a() {
        return f3304a;
    }

    public static com.google.android.exoplayer2.mediacodec.a a(String str, boolean z) throws DecoderQueryException {
        List<com.google.android.exoplayer2.mediacodec.a> b2 = b(str, z);
        if (b2.isEmpty()) {
            return null;
        }
        return b2.get(0);
    }

    public static synchronized List<com.google.android.exoplayer2.mediacodec.a> b(String str, boolean z) throws DecoderQueryException {
        List<com.google.android.exoplayer2.mediacodec.a> list;
        synchronized (MediaCodecUtil.class) {
            a aVar = new a(str, z);
            list = c.get(aVar);
            if (list == null) {
                List<com.google.android.exoplayer2.mediacodec.a> a2 = a(aVar, v.f3519a >= 21 ? new d(z) : new c());
                if (z && a2.isEmpty() && 21 <= v.f3519a && v.f3519a <= 23) {
                    List<com.google.android.exoplayer2.mediacodec.a> a3 = a(aVar, new c());
                    if (!a3.isEmpty()) {
                        Log.w("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + a3.get(0).f3307a);
                    }
                    a2 = a3;
                }
                list = Collections.unmodifiableList(a2);
                c.put(aVar, list);
            }
        }
        return list;
    }

    private static List<com.google.android.exoplayer2.mediacodec.a> a(a aVar, b bVar) throws DecoderQueryException {
        String[] supportedTypes;
        try {
            ArrayList arrayList = new ArrayList();
            String str = aVar.f3305a;
            int a2 = bVar.a();
            boolean b2 = bVar.b();
            loop0: for (int i = 0; i < a2; i++) {
                MediaCodecInfo a3 = bVar.a(i);
                String name = a3.getName();
                if (a(a3, name, b2)) {
                    for (String str2 : a3.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = a3.getCapabilitiesForType(str2);
                                boolean a4 = bVar.a(str, capabilitiesForType);
                                if ((b2 && aVar.b == a4) || (!b2 && !aVar.b)) {
                                    arrayList.add(com.google.android.exoplayer2.mediacodec.a.a(name, str, capabilitiesForType));
                                } else if (!b2 && a4) {
                                    arrayList.add(com.google.android.exoplayer2.mediacodec.a.a(name + ".secure", str, capabilitiesForType));
                                    break loop0;
                                }
                            } catch (Exception e2) {
                                if (v.f3519a <= 23 && !arrayList.isEmpty()) {
                                    Log.e("MediaCodecUtil", "Skipping codec " + name + " (failed to query capabilities)");
                                } else {
                                    Log.e("MediaCodecUtil", "Failed to query codec " + name + " (" + str2 + ")");
                                    throw e2;
                                }
                            }
                        }
                    }
                    continue;
                }
            }
            return arrayList;
        } catch (Exception e3) {
            throw new DecoderQueryException(e3);
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z) {
        if (!mediaCodecInfo.isEncoder()) {
            if (!z && str.endsWith(".secure")) {
                return false;
            }
            if (v.f3519a < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
                return false;
            }
            if (v.f3519a < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
                return false;
            }
            if (v.f3519a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && "a70".equals(v.b)) {
                return false;
            }
            if (v.f3519a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(v.b) || "protou".equals(v.b) || "ville".equals(v.b) || "villeplus".equals(v.b) || "villec2".equals(v.b) || v.b.startsWith("gee") || "C6602".equals(v.b) || "C6603".equals(v.b) || "C6606".equals(v.b) || "C6616".equals(v.b) || "L36h".equals(v.b) || "SO-02E".equals(v.b))) {
                return false;
            }
            if (v.f3519a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(v.b) || "C1505".equals(v.b) || "C1604".equals(v.b) || "C1605".equals(v.b))) {
                return false;
            }
            if (v.f3519a <= 19 && ((v.b.startsWith("d2") || v.b.startsWith("serrano") || v.b.startsWith("jflte") || v.b.startsWith("santos")) && "samsung".equals(v.c) && "OMX.SEC.vp8.dec".equals(str))) {
                return false;
            }
            return v.f3519a > 19 || !v.b.startsWith("jflte") || !"OMX.qcom.video.decoder.vp8".equals(str);
        }
        return false;
    }

    public static int b() throws DecoderQueryException {
        int i = 0;
        if (g == -1) {
            com.google.android.exoplayer2.mediacodec.a a2 = a("video/avc", false);
            if (a2 != null) {
                MediaCodecInfo.CodecProfileLevel[] a3 = a2.a();
                int length = a3.length;
                int i2 = 0;
                while (i < length) {
                    i2 = Math.max(a(a3[i].level), i2);
                    i++;
                }
                i = Math.max(i2, v.f3519a >= 21 ? 345600 : 172800);
            }
            g = i;
        }
        return g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r4.equals("hev1") != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair<Integer, Integer> a(String str) {
        char c2 = 0;
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        String str2 = split[0];
        switch (str2.hashCode()) {
            case 3006243:
                if (str2.equals("avc1")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3006244:
                if (str2.equals("avc2")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3199032:
                break;
            case 3214780:
                if (str2.equals("hvc1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return a(str, split);
            case 2:
            case 3:
                return b(str, split);
            default:
                return null;
        }
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        int i;
        if (strArr.length < 4) {
            Log.w("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        Matcher matcher = b.matcher(strArr[1]);
        if (!matcher.matches()) {
            Log.w("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if ("1".equals(group)) {
            i = 1;
        } else if ("2".equals(group)) {
            i = 2;
        } else {
            Log.w("MediaCodecUtil", "Unknown HEVC profile string: " + group);
            return null;
        }
        Integer num = f.get(strArr[3]);
        if (num == null) {
            Log.w("MediaCodecUtil", "Unknown HEVC level string: " + matcher.group(1));
            return null;
        }
        return new Pair<>(Integer.valueOf(i), num);
    }

    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        Integer valueOf;
        Integer valueOf2;
        if (strArr.length < 2) {
            Log.w("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                valueOf = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                valueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
            } else if (strArr.length >= 3) {
                valueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                valueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            } else {
                Log.w("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            Integer valueOf3 = Integer.valueOf(d.get(valueOf.intValue()));
            if (valueOf3 == null) {
                Log.w("MediaCodecUtil", "Unknown AVC profile: " + valueOf);
                return null;
            }
            Integer valueOf4 = Integer.valueOf(e.get(valueOf2.intValue()));
            if (valueOf4 == null) {
                Log.w("MediaCodecUtil", "Unknown AVC level: " + valueOf2);
                return null;
            }
            return new Pair<>(valueOf3, valueOf4);
        } catch (NumberFormatException e2) {
            Log.w("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static int a(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25344;
            case 8:
                return 101376;
            case 16:
                return 101376;
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
                return 414720;
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case Barcode.PDF417 /* 2048 */:
                return 2097152;
            case 4096:
                return 2097152;
            case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
                return 9437184;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    /* loaded from: classes2.dex */
    public static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3306a;
        private MediaCodecInfo[] b;

        public d(boolean z) {
            this.f3306a = z ? 1 : 0;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public int a() {
            c();
            return this.b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public MediaCodecInfo a(int i) {
            c();
            return this.b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public boolean b() {
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        private void c() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.f3306a).getCodecInfos();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c implements b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public boolean b() {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "video/avc".equals(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3305a;
        public final boolean b;

        public a(String str, boolean z) {
            this.f3305a = str;
            this.b = z;
        }

        public int hashCode() {
            return (this.b ? 1231 : 1237) + (((this.f3305a == null ? 0 : this.f3305a.hashCode()) + 31) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f3305a, aVar.f3305a) && this.b == aVar.b;
        }
    }
}
