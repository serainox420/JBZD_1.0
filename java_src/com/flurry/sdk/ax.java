package com.flurry.sdk;

import android.text.TextUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ax {
    public String b;
    public boolean c;
    public long d;
    public Map<String, String> e;
    private static final String f = ax.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    static final List<String> f2463a = Arrays.asList("requested", "filled", "unfilled", "rendered", "clicked", "prepared", "adunitMerged", "sendUrlStatusResult", "videoStart", "videoFirstQuartile", "videoMidpoint", "videoThirdQuartile", "videoCompleted", "videoProgressed", "videoView", "videoView3P", "videoClosed", "sentToUrl", "adClosed", "adWillClose", "renderFailed", "requestAdComponents", "urlVerified", "capExhausted", "pageLoadFinished", "capNotExhausted", "adExpanded", "adCollapsed");

    /* synthetic */ ax(byte b) {
        this();
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<ax> {
        @Override // com.flurry.sdk.lg
        public final void a(OutputStream outputStream, ax axVar) throws IOException {
            if (outputStream != null && axVar != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.ax.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeUTF(axVar.b);
                dataOutputStream.writeBoolean(axVar.c);
                dataOutputStream.writeLong(axVar.d);
                dataOutputStream.writeShort(axVar.e.size());
                for (Map.Entry entry : axVar.e.entrySet()) {
                    dataOutputStream.writeUTF((String) entry.getKey());
                    dataOutputStream.writeUTF((String) entry.getValue());
                }
                dataOutputStream.flush();
            }
        }

        @Override // com.flurry.sdk.lg
        /* renamed from: b */
        public final ax a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.ax.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            ax axVar = new ax((byte) 0);
            axVar.b = dataInputStream.readUTF();
            axVar.c = dataInputStream.readBoolean();
            axVar.d = dataInputStream.readLong();
            axVar.e = new HashMap();
            short readShort = dataInputStream.readShort();
            for (short s = 0; s < readShort; s = (short) (s + 1)) {
                axVar.e.put(dataInputStream.readUTF(), dataInputStream.readUTF());
            }
            return axVar;
        }
    }

    private ax() {
    }

    public ax(String str, boolean z, long j, Map<String, String> map) {
        if (!f2463a.contains(str)) {
            km.a(f, "AdEvent initialized with unrecognized type: " + str);
        }
        this.b = str;
        this.c = z;
        this.d = j;
        if (map == null) {
            this.e = new HashMap();
        } else {
            this.e = map;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ax)) {
            return false;
        }
        ax axVar = (ax) obj;
        if (TextUtils.equals(this.b, axVar.b) && this.c == axVar.c && this.d == axVar.d) {
            if (this.e == axVar.e) {
                return true;
            }
            if (this.e != null && this.e.equals(axVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        if (this.b != null) {
            i = this.b.hashCode() ^ 17;
        }
        if (this.c) {
            i ^= 1;
        }
        int i2 = (int) (i ^ this.d);
        if (this.e != null) {
            return i2 ^ this.e.hashCode();
        }
        return i2;
    }
}
