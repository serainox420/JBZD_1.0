package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.a.d;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes.dex */
public class DeviceTokenLoader implements d<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // io.fabric.sdk.android.services.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String load(Context context) throws Exception {
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2;
        IOException iOException;
        ZipInputStream zipInputStream3;
        FileNotFoundException fileNotFoundException;
        ZipInputStream zipInputStreamOfApkFrom;
        long nanoTime = System.nanoTime();
        String str = "";
        ZipInputStream zipInputStream4 = null;
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                try {
                    zipInputStreamOfApkFrom = getZipInputStreamOfApkFrom(context, "io.crash.air");
                } catch (PackageManager.NameNotFoundException e) {
                    c.h().a(Beta.TAG, "Beta by Crashlytics app is not installed");
                    if (0 != 0) {
                        try {
                            zipInputStream4.close();
                        } catch (IOException e2) {
                            c.h().e(Beta.TAG, "Failed to close the APK file", e2);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                zipInputStream = null;
                if (zipInputStream != null) {
                    try {
                        zipInputStream.close();
                    } catch (IOException e3) {
                        c.h().e(Beta.TAG, "Failed to close the APK file", e3);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e4) {
            zipInputStream3 = null;
            fileNotFoundException = e4;
        } catch (IOException e5) {
            zipInputStream2 = null;
            iOException = e5;
        } catch (Throwable th3) {
            th = th3;
            zipInputStream = null;
            if (zipInputStream != null) {
            }
            throw th;
        }
        try {
            str = determineDeviceToken(zipInputStreamOfApkFrom);
            if (zipInputStreamOfApkFrom != null) {
                try {
                    zipInputStreamOfApkFrom.close();
                } catch (IOException e6) {
                    c.h().e(Beta.TAG, "Failed to close the APK file", e6);
                }
            }
        } catch (FileNotFoundException e7) {
            zipInputStream3 = zipInputStreamOfApkFrom;
            fileNotFoundException = e7;
            c.h().e(Beta.TAG, "Failed to find the APK file", fileNotFoundException);
            zipInputStream = zipInputStream3;
            if (zipInputStream3 != null) {
                try {
                    zipInputStream3.close();
                    zipInputStream = zipInputStream3;
                } catch (IOException e8) {
                    k h = c.h();
                    h.e(Beta.TAG, "Failed to close the APK file", e8);
                    zipInputStream = h;
                }
            }
            c.h().a(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
            return str;
        } catch (IOException e9) {
            zipInputStream2 = zipInputStreamOfApkFrom;
            iOException = e9;
            c.h().e(Beta.TAG, "Failed to read the APK file", iOException);
            zipInputStream = zipInputStream2;
            if (zipInputStream2 != null) {
                try {
                    zipInputStream2.close();
                    zipInputStream = zipInputStream2;
                } catch (IOException e10) {
                    k h2 = c.h();
                    h2.e(Beta.TAG, "Failed to close the APK file", e10);
                    zipInputStream = h2;
                }
            }
            c.h().a(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
            return str;
        }
        c.h().a(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
        return str;
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String str) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(str, 0).sourceDir));
    }

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX)) {
                return name.substring(DIRFACTOR_DEVICE_TOKEN_PREFIX.length(), name.length() - 1);
            }
        }
        return "";
    }
}
