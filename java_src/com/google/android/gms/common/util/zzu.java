package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zzu {
    private static String zzaIn = null;
    private static final int zzaIo = Process.myPid();

    static String zzdq(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        String str = null;
        if (i > 0) {
            try {
                allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    bufferedReader = new BufferedReader(new FileReader(new StringBuilder(25).append("/proc/").append(i).append("/cmdline").toString()));
                } finally {
                }
            } catch (IOException e) {
                bufferedReader = null;
            } catch (Throwable th2) {
                bufferedReader = null;
                th = th2;
            }
            try {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                str = bufferedReader.readLine().trim();
                zzp.zzb(bufferedReader);
            } catch (IOException e2) {
                zzp.zzb(bufferedReader);
                return str;
            } catch (Throwable th3) {
                th = th3;
                zzp.zzb(bufferedReader);
                throw th;
            }
        }
        return str;
    }

    public static String zzzr() {
        if (zzaIn == null) {
            zzaIn = zzdq(zzaIo);
        }
        return zzaIn;
    }
}
