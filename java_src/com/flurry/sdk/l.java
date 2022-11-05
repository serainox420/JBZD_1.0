package com.flurry.sdk;

import com.flurry.sdk.ax;
import com.flurry.sdk.az;
import com.flurry.sdk.bf;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3007a = l.class.getSimpleName();

    public static List<bf> a(File file) {
        DataInputStream dataInputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null || !file.exists()) {
            return Collections.emptyList();
        }
        bf.b bVar = new bf.b();
        ArrayList arrayList = new ArrayList();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                dataInputStream = new DataInputStream(fileInputStream);
                while (1 == dataInputStream.readShort()) {
                    try {
                        arrayList.add(bVar.a(dataInputStream));
                    } catch (Exception e) {
                        e = e;
                        fileInputStream2 = fileInputStream;
                        try {
                            km.a(3, f3007a, "Error loading legacy FreqCap data.", e);
                            ly.a((Closeable) dataInputStream);
                            ly.a((Closeable) fileInputStream2);
                            return arrayList;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            ly.a((Closeable) dataInputStream);
                            ly.a((Closeable) fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ly.a((Closeable) dataInputStream);
                        ly.a((Closeable) fileInputStream);
                        throw th;
                    }
                }
                ly.a((Closeable) dataInputStream);
                ly.a((Closeable) fileInputStream);
                return arrayList;
            } catch (Exception e2) {
                e = e2;
                dataInputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream = null;
            }
        } catch (Exception e3) {
            e = e3;
            dataInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
            fileInputStream = null;
        }
    }

    public static List<az> b(File file) {
        DataInputStream dataInputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null || !file.exists()) {
            return Collections.emptyList();
        }
        az.a aVar = new az.a(new ax.a());
        ArrayList arrayList = new ArrayList();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                dataInputStream = new DataInputStream(fileInputStream);
                try {
                    if (46586 != dataInputStream.readUnsignedShort()) {
                        throw new IOException("Unexpected data format");
                    }
                    while (1 == dataInputStream.readShort()) {
                        arrayList.add(aVar.a(dataInputStream));
                    }
                    ly.a((Closeable) dataInputStream);
                    ly.a((Closeable) fileInputStream);
                    return arrayList;
                } catch (Exception e) {
                    e = e;
                    fileInputStream2 = fileInputStream;
                    try {
                        km.a(3, f3007a, "Error loading legacy AdLog data.", e);
                        ly.a((Closeable) dataInputStream);
                        ly.a((Closeable) fileInputStream2);
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        ly.a((Closeable) dataInputStream);
                        ly.a((Closeable) fileInputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    ly.a((Closeable) dataInputStream);
                    ly.a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                dataInputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream = null;
            }
        } catch (Exception e3) {
            e = e3;
            dataInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
            fileInputStream = null;
        }
    }
}
