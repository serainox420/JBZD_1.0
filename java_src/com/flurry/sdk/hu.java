package com.flurry.sdk;

import com.flurry.sdk.ji;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes2.dex */
public final class hu {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2815a = hu.class.getSimpleName();

    public static ji a(File file) {
        Closeable closeable;
        FileInputStream fileInputStream;
        DataInputStream dataInputStream;
        ji jiVar;
        if (file == null || !file.exists()) {
            return null;
        }
        ji.a aVar = new ji.a();
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            dataInputStream = null;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            closeable = null;
            fileInputStream = null;
        }
        try {
            dataInputStream = new DataInputStream(fileInputStream);
            try {
            } catch (Exception e2) {
                e = e2;
                km.a(3, f2815a, "Error loading legacy agent data.", e);
                ly.a((Closeable) dataInputStream);
                ly.a((Closeable) fileInputStream);
                jiVar = null;
                return jiVar;
            }
        } catch (Exception e3) {
            e = e3;
            dataInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            ly.a(closeable);
            ly.a((Closeable) fileInputStream);
            throw th;
        }
        if (dataInputStream.readUnsignedShort() != 46586) {
            km.a(3, f2815a, "Unexpected file type");
            ly.a((Closeable) dataInputStream);
            ly.a((Closeable) fileInputStream);
            return null;
        }
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        if (readUnsignedShort != 2) {
            km.a(6, f2815a, "Unknown agent file version: " + readUnsignedShort);
            ly.a((Closeable) dataInputStream);
            ly.a((Closeable) fileInputStream);
            return null;
        }
        jiVar = (ji) aVar.a(dataInputStream);
        ly.a((Closeable) dataInputStream);
        ly.a((Closeable) fileInputStream);
        return jiVar;
    }
}
