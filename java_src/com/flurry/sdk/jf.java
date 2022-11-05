package com.flurry.sdk;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class jf {
    private static final String b = jf.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    byte[] f2897a;

    /* synthetic */ jf(byte b2) {
        this();
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<jf> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, jf jfVar) throws IOException {
            jf jfVar2 = jfVar;
            if (outputStream == null || jfVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.jf.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int i = 0;
            if (jfVar2.f2897a != null) {
                i = jfVar2.f2897a.length;
            }
            dataOutputStream.writeShort(i);
            if (i > 0) {
                dataOutputStream.write(jfVar2.f2897a);
            }
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ jf a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.jf.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            jf jfVar = new jf((byte) 0);
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort <= 0) {
                return jfVar;
            }
            byte[] bArr = new byte[readUnsignedShort];
            dataInputStream.readFully(bArr);
            jfVar.f2897a = bArr;
            return jfVar;
        }
    }

    private jf() {
    }

    public jf(byte[] bArr) {
        this.f2897a = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009d A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a5 A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ba A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb A[Catch: IOException -> 0x0102, all -> 0x010c, LOOP:1: B:39:0x00e9->B:40:0x00eb, LOOP_END, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01aa A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b9 A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01eb A[Catch: IOException -> 0x0102, all -> 0x010c, TryCatch #0 {IOException -> 0x0102, blocks: (B:5:0x0013, B:7:0x003a, B:8:0x0043, B:10:0x004b, B:11:0x0054, B:13:0x0058, B:14:0x005c, B:16:0x0060, B:17:0x0064, B:21:0x0084, B:23:0x009d, B:24:0x00a1, B:26:0x00a5, B:27:0x00a9, B:29:0x00ad, B:30:0x00b1, B:32:0x00ba, B:33:0x00c0, B:35:0x00c6, B:37:0x00d7, B:38:0x00e0, B:40:0x00eb, B:73:0x020f, B:72:0x020a, B:68:0x01eb, B:69:0x01f6, B:71:0x01fc, B:64:0x01b9, B:65:0x01c8, B:67:0x01ce, B:63:0x01aa, B:60:0x0179, B:56:0x0145, B:57:0x0154, B:59:0x015a, B:52:0x0117, B:53:0x0126, B:55:0x012c, B:51:0x0112, B:41:0x00fc), top: B:83:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public jf(jg jgVar) throws IOException {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        boolean z;
        DataOutputStream dataOutputStream3;
        Map<String, jb> map;
        List<jc> list;
        List<ja> list2;
        int i;
        int i2;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                try {
                    dataOutputStream.writeShort(8);
                    dataOutputStream.writeUTF(jgVar.f2900a);
                    dataOutputStream.writeLong(jgVar.b);
                    dataOutputStream.writeLong(jgVar.c);
                    dataOutputStream.writeLong(jgVar.d);
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeByte(-1);
                    if (!TextUtils.isEmpty(jgVar.f)) {
                        dataOutputStream.writeBoolean(true);
                        dataOutputStream.writeUTF(jgVar.f);
                    } else {
                        dataOutputStream.writeBoolean(false);
                    }
                    if (!TextUtils.isEmpty(jgVar.g)) {
                        dataOutputStream.writeBoolean(true);
                        dataOutputStream.writeUTF(jgVar.g);
                    } else {
                        dataOutputStream.writeBoolean(false);
                    }
                    Map<String, String> map2 = jgVar.h;
                    if (map2 == null) {
                        dataOutputStream.writeShort(0);
                    } else {
                        dataOutputStream.writeShort(map2.size());
                        for (Map.Entry<String, String> entry : map2.entrySet()) {
                            dataOutputStream.writeUTF(entry.getKey());
                            dataOutputStream.writeUTF(entry.getValue());
                        }
                    }
                    Map<String, String> map3 = jgVar.e;
                    if (map3 == null) {
                        dataOutputStream.writeShort(0);
                    } else {
                        dataOutputStream.writeShort(map3.size());
                        for (Map.Entry<String, String> entry2 : map3.entrySet()) {
                            dataOutputStream.writeUTF(entry2.getKey());
                            dataOutputStream.writeUTF(entry2.getValue());
                            dataOutputStream.writeByte(0);
                        }
                    }
                    dataOutputStream.writeUTF(jgVar.i);
                    dataOutputStream.writeUTF(jgVar.j);
                    dataOutputStream.writeByte(jgVar.k);
                    dataOutputStream.writeByte(jgVar.l);
                    dataOutputStream.writeUTF(jgVar.m);
                    if (jgVar.n == null) {
                        dataOutputStream2 = dataOutputStream;
                    } else {
                        int b2 = jp.b();
                        dataOutputStream.writeBoolean(true);
                        dataOutputStream.writeDouble(ly.a(jgVar.n.getLatitude(), b2));
                        dataOutputStream.writeDouble(ly.a(jgVar.n.getLongitude(), b2));
                        dataOutputStream.writeFloat(jgVar.n.getAccuracy());
                        if (b2 != -1) {
                            z = true;
                            dataOutputStream3 = dataOutputStream;
                            dataOutputStream3.writeBoolean(z);
                            dataOutputStream.writeInt(jgVar.o);
                            dataOutputStream.writeByte(-1);
                            dataOutputStream.writeByte(-1);
                            dataOutputStream.writeByte(jgVar.p);
                            if (jgVar.q != null) {
                                dataOutputStream.writeBoolean(false);
                            } else {
                                dataOutputStream.writeBoolean(true);
                                dataOutputStream.writeLong(jgVar.q.longValue());
                            }
                            map = jgVar.r;
                            if (map != null) {
                                dataOutputStream.writeShort(0);
                            } else {
                                dataOutputStream.writeShort(map.size());
                                for (Map.Entry<String, jb> entry3 : map.entrySet()) {
                                    dataOutputStream.writeUTF(entry3.getKey());
                                    dataOutputStream.writeInt(entry3.getValue().f2890a);
                                }
                            }
                            list = jgVar.s;
                            if (list != null) {
                                dataOutputStream.writeShort(0);
                            } else {
                                dataOutputStream.writeShort(list.size());
                                for (jc jcVar : list) {
                                    dataOutputStream.write(jcVar.b());
                                }
                            }
                            dataOutputStream.writeBoolean(jgVar.t);
                            list2 = jgVar.v;
                            if (list2 == null) {
                                Iterator<ja> it = list2.iterator();
                                int i3 = 0;
                                int i4 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i = i3;
                                        break;
                                    }
                                    int length = it.next().a().length + i4;
                                    if (length > 160000) {
                                        km.a(5, b, "Error Log size exceeded. No more event details logged.");
                                        i = i3;
                                        break;
                                    }
                                    i3++;
                                    i4 = length;
                                }
                            } else {
                                i = 0;
                            }
                            dataOutputStream.writeInt(jgVar.u);
                            dataOutputStream.writeShort(i);
                            for (i2 = 0; i2 < i; i2++) {
                                dataOutputStream.write(list2.get(i2).a());
                            }
                            dataOutputStream.writeInt(-1);
                            dataOutputStream.writeShort(0);
                            dataOutputStream.writeShort(0);
                            dataOutputStream.writeShort(0);
                            this.f2897a = byteArrayOutputStream.toByteArray();
                            ly.a(dataOutputStream);
                        }
                        dataOutputStream2 = dataOutputStream;
                    }
                    dataOutputStream3 = dataOutputStream2;
                    z = false;
                    dataOutputStream3.writeBoolean(z);
                    dataOutputStream.writeInt(jgVar.o);
                    dataOutputStream.writeByte(-1);
                    dataOutputStream.writeByte(-1);
                    dataOutputStream.writeByte(jgVar.p);
                    if (jgVar.q != null) {
                    }
                    map = jgVar.r;
                    if (map != null) {
                    }
                    list = jgVar.s;
                    if (list != null) {
                    }
                    dataOutputStream.writeBoolean(jgVar.t);
                    list2 = jgVar.v;
                    if (list2 == null) {
                    }
                    dataOutputStream.writeInt(jgVar.u);
                    dataOutputStream.writeShort(i);
                    while (i2 < i) {
                    }
                    dataOutputStream.writeInt(-1);
                    dataOutputStream.writeShort(0);
                    dataOutputStream.writeShort(0);
                    dataOutputStream.writeShort(0);
                    this.f2897a = byteArrayOutputStream.toByteArray();
                    ly.a(dataOutputStream);
                } catch (IOException e) {
                    e = e;
                    km.a(6, b, "", e);
                    throw e;
                }
            } catch (Throwable th) {
                th = th;
                ly.a(dataOutputStream);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            dataOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
            ly.a(dataOutputStream);
            throw th;
        }
    }
}
