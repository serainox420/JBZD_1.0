package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.ax;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class az {
    private static int e = 1;

    /* renamed from: a  reason: collision with root package name */
    public int f2467a;
    public long b;
    public String c;
    public List<ax> d;

    /* loaded from: classes2.dex */
    public static class a implements lg<az> {

        /* renamed from: a  reason: collision with root package name */
        private final ax.a f2468a;

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, az azVar) throws IOException {
            az azVar2 = azVar;
            if (outputStream == null || azVar2 == null || this.f2468a == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.az.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeInt(azVar2.f2467a);
            dataOutputStream.writeLong(azVar2.b);
            dataOutputStream.writeUTF(azVar2.c == null ? "" : azVar2.c);
            dataOutputStream.writeShort(azVar2.d.size());
            for (ax axVar : azVar2.d) {
                this.f2468a.a((OutputStream) dataOutputStream, axVar);
            }
            dataOutputStream.flush();
        }

        public a(ax.a aVar) {
            this.f2468a = aVar;
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ az a(InputStream inputStream) throws IOException {
            String str = null;
            if (inputStream == null || this.f2468a == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.az.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            az azVar = new az((byte) 0);
            azVar.f2467a = dataInputStream.readInt();
            azVar.b = dataInputStream.readLong();
            String readUTF = dataInputStream.readUTF();
            if (!readUTF.equals("")) {
                str = readUTF;
            }
            azVar.c = str;
            azVar.d = new ArrayList();
            short readShort = dataInputStream.readShort();
            for (short s = 0; s < readShort; s = (short) (s + 1)) {
                azVar.d.add(this.f2468a.a(dataInputStream));
            }
            return azVar;
        }
    }

    /* synthetic */ az(byte b) {
        this();
    }

    private az() {
    }

    public az(String str) {
        int i = e;
        e = i + 1;
        this.f2467a = i;
        jk.a();
        this.b = jk.c();
        this.c = str;
        this.d = new ArrayList();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        if (this.f2467a == azVar.f2467a && this.b == azVar.b && TextUtils.equals(this.c, azVar.c)) {
            if (this.d == azVar.d) {
                return true;
            }
            if (this.d != null && this.d.equals(azVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (int) ((this.f2467a ^ 17) ^ this.b);
        if (this.c != null) {
            i ^= this.c.hashCode();
        }
        if (this.d != null) {
            return i ^ this.d.hashCode();
        }
        return i;
    }
}
