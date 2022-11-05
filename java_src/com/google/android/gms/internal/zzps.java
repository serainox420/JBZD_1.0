package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzps {
    private final Object zzrJ = new Object();
    private String zzXT = "";
    private String zzXU = "";
    private boolean zzXV = false;
    protected String zzXW = "";

    private Uri zzb(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzY(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private void zzm(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzw.zzcM().zza(context, zzb(context, zzgd.zzFn.get(), str, str2));
    }

    public void zzJ(boolean z) {
        synchronized (this.zzrJ) {
            this.zzXV = z;
        }
    }

    public String zzY(Context context) {
        String str;
        synchronized (this.zzrJ) {
            if (TextUtils.isEmpty(this.zzXT)) {
                this.zzXT = com.google.android.gms.ads.internal.zzw.zzcM().zzv(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzXT)) {
                    this.zzXT = com.google.android.gms.ads.internal.zzw.zzcM().zzkL();
                    com.google.android.gms.ads.internal.zzw.zzcM().zzg(context, "debug_signals_id.txt", this.zzXT);
                }
            }
            str = this.zzXT;
        }
        return str;
    }

    public void zza(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzb(context, zzgd.zzFq.get(), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzw.zzcM().zzf(context, str, buildUpon.build().toString());
    }

    protected void zza(final Context context, final String str, final boolean z, final boolean z2) {
        if (!(context instanceof Activity)) {
            zzpk.zzbg("Can not create dialog without Activity Context");
        } else {
            zzpo.zzXC.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzps.1
                @Override // java.lang.Runnable
                public void run() {
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setMessage(str);
                    if (z) {
                        builder.setTitle("Error");
                    } else {
                        builder.setTitle("Info");
                    }
                    if (z2) {
                        builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
                    } else {
                        builder.setPositiveButton(DrawableConstants.CtaButton.DEFAULT_CTA_TEXT, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzps.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                com.google.android.gms.ads.internal.zzw.zzcM().zza(context, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
                            }
                        });
                        builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
                    }
                    builder.create().show();
                }
            });
        }
    }

    public void zzbd(String str) {
        synchronized (this.zzrJ) {
            this.zzXU = str;
        }
    }

    public void zzh(Context context, String str, String str2) {
        if (!zzj(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(this.zzXW)) {
            zzpk.zzbf("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzXW)) {
            zzpk.zzbf("The app is not linked for creative preview.");
            zzm(context, str, str2);
        } else if (!AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(this.zzXW)) {
        } else {
            zzpk.zzbf("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public void zzi(Context context, String str, String str2) {
        if (!zzk(context, str, str2)) {
            zzm(context, str, str2);
            return;
        }
        zzpk.zzbf("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    boolean zzj(Context context, String str, String str2) {
        String zzl = zzl(context, zzb(context, zzgd.zzFo.get(), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzl)) {
            zzpk.zzbf("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzl.trim());
            String optString = jSONObject.optString("gct");
            this.zzXW = jSONObject.optString("status");
            zzbd(optString);
            return true;
        } catch (JSONException e) {
            zzpk.zzc("Fail to get in app preview response json.", e);
            return false;
        }
    }

    boolean zzk(Context context, String str, String str2) {
        String zzl = zzl(context, zzb(context, zzgd.zzFp.get(), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzl)) {
            zzpk.zzbf("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzl.trim()).optString("debug_mode"));
            zzJ(equals);
            return equals;
        } catch (JSONException e) {
            zzpk.zzc("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public String zzkY() {
        String str;
        synchronized (this.zzrJ) {
            str = this.zzXU;
        }
        return str;
    }

    public boolean zzkZ() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzXV;
        }
        return z;
    }

    protected String zzl(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzw.zzcM().zzu(context, str2));
        zzqm<String> zzc = new zzpv(context).zzc(str, hashMap);
        try {
            return zzc.get(zzgd.zzFr.get().intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            zzpk.zzb(valueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf) : new String("Interrupted while retriving a response from: "), e);
            zzc.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            zzpk.zzb(valueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf2) : new String("Timeout while retriving a response from: "), e2);
            zzc.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            zzpk.zzb(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }
}
