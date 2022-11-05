package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public class zzaw {
    private static final String[] zzqc = {"/aclk", "/pcs/click"};
    private String zzpY = "googleads.g.doubleclick.net";
    private String zzpZ = "/pagead/ads";
    private String zzqa = "ad.doubleclick.net";
    private String[] zzqb = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzar zzqd;

    public zzaw(zzar zzarVar) {
        this.zzqd = zzarVar;
    }

    private Uri zza(Uri uri, Context context, String str, boolean z, View view) throws zzax {
        try {
            boolean zzb = zzb(uri);
            if (zzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzax("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzax("Query parameter already exists: ms");
            }
            String zza = z ? this.zzqd.zza(context, str, view) : this.zzqd.zzb(context);
            return zzb ? zzb(uri, "dc_ms", zza) : zza(uri, "ms", zza);
        } catch (UnsupportedOperationException e) {
            throw new zzax("Provided Uri is not in a valid state");
        }
    }

    private Uri zza(Uri uri, String str, String str2) throws UnsupportedOperationException {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl");
        }
        return indexOf != -1 ? Uri.parse(uri2.substring(0, indexOf + 1) + str + "=" + str2 + "&" + uri2.substring(indexOf + 1)) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private Uri zzb(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf(";adurl");
        if (indexOf != -1) {
            return Uri.parse(uri2.substring(0, indexOf + 1) + str + "=" + str2 + ";" + uri2.substring(indexOf + 1));
        }
        String encodedPath = uri.getEncodedPath();
        int indexOf2 = uri2.indexOf(encodedPath);
        return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";" + str + "=" + str2 + ";" + uri2.substring(encodedPath.length() + indexOf2));
    }

    public zzar zzT() {
        return this.zzqd;
    }

    public Uri zza(Uri uri, Context context) throws zzax {
        return zza(uri, context, null, false, null);
    }

    public Uri zza(Uri uri, Context context, View view) throws zzax {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true, view);
        } catch (UnsupportedOperationException e) {
            throw new zzax("Provided Uri is not in a valid state");
        }
    }

    public void zza(MotionEvent motionEvent) {
        this.zzqd.zza(motionEvent);
    }

    public boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            if (!uri.getHost().equals(this.zzpY)) {
                return false;
            }
            return uri.getPath().equals(this.zzpZ);
        } catch (NullPointerException e) {
            return false;
        }
    }

    @Deprecated
    public Uri zzb(Uri uri, Context context) throws zzax {
        return zza(uri, context, (View) null);
    }

    public void zzb(String str, String str2) {
        this.zzpY = str;
        this.zzpZ = str2;
    }

    public boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzqa);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.zzqb) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzd(Uri uri) {
        if (zzc(uri)) {
            for (String str : zzqc) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void zzm(String str) {
        this.zzqb = str.split(",");
    }
}
