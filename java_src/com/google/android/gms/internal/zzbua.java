package com.google.android.gms.internal;

import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.a;
import com.google.firebase.auth.e;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class zzbua {
    public static boolean equals(Object obj, Object obj2) {
        return com.google.android.gms.common.internal.zzaa.equal(obj, obj2);
    }

    public static Uri zzg(a aVar, String str) throws UnsupportedEncodingException {
        String substring;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.toLowerCase().startsWith("gs://")) {
            String valueOf = String.valueOf(zzbtw.zzjI(zzbtw.zzjK(str.substring(5))));
            return Uri.parse(valueOf.length() != 0 ? "gs://".concat(valueOf) : new String("gs://"));
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (scheme == null || (!equals(scheme.toLowerCase(), "http") && !equals(scheme.toLowerCase(), "https"))) {
            String valueOf2 = String.valueOf(scheme);
            Log.w("StorageUtil", valueOf2.length() != 0 ? "FirebaseStorage is unable to support the scheme:".concat(valueOf2) : new String("FirebaseStorage is unable to support the scheme:"));
            throw new IllegalArgumentException("Uri scheme");
        }
        try {
            int indexOf = parse.getAuthority().toLowerCase().indexOf(zzh(aVar));
            String zzjJ = zzbtw.zzjJ(parse.getEncodedPath());
            if (indexOf == 0 && zzjJ.startsWith("/")) {
                int indexOf2 = zzjJ.indexOf("/b/", 0);
                int indexOf3 = zzjJ.indexOf("/", indexOf2 + 3);
                int indexOf4 = zzjJ.indexOf("/o/", 0);
                if (indexOf2 == -1 || indexOf3 == -1) {
                    Log.w("StorageUtil", "Only URLs to firebasestorage.googleapis.com are supported.");
                    throw new IllegalArgumentException("Only URLs to firebasestorage.googleapis.com are supported.");
                }
                substring = zzjJ.substring(indexOf2 + 3, indexOf3);
                zzjJ = indexOf4 != -1 ? zzjJ.substring(indexOf4 + 3) : "";
            } else if (indexOf <= 1) {
                Log.w("StorageUtil", "Only URLs to firebasestorage.googleapis.com are supported.");
                throw new IllegalArgumentException("Only URLs to firebasestorage.googleapis.com are supported.");
            } else {
                substring = parse.getAuthority().substring(0, indexOf - 1);
            }
            com.google.android.gms.common.internal.zzac.zzh(substring, "No bucket specified");
            return new Uri.Builder().scheme("gs").authority(substring).encodedPath(zzjJ).build();
        } catch (RemoteException e) {
            throw new UnsupportedEncodingException("Could not parse Url because the Storage network layer did not load");
        }
    }

    private static String zzh(a aVar) throws RemoteException {
        return zzbud.zzj(aVar).zzade();
    }

    public static String zzi(a aVar) {
        String a2;
        try {
            a2 = ((e) Tasks.await(aVar.b(false), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS)).a();
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            Log.e("StorageUtil", new StringBuilder(String.valueOf(valueOf).length() + 20).append("error getting token ").append(valueOf).toString());
        }
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        Log.w("StorageUtil", "no auth token for request");
        return null;
    }

    public static long zzjL(String str) {
        if (str == null) {
            return 0L;
        }
        String replaceAll = str.replaceAll("Z$", "-0000");
        try {
            return new SimpleDateFormat(StdDateFormat.DATE_FORMAT_STR_ISO8601, Locale.getDefault()).parse(replaceAll).getTime();
        } catch (ParseException e) {
            String valueOf = String.valueOf(replaceAll);
            Log.w("StorageUtil", valueOf.length() != 0 ? "unable to parse datetime:".concat(valueOf) : new String("unable to parse datetime:"), e);
            return 0L;
        }
    }
}
