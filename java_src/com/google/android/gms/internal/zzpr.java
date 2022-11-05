package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzpr {
    private final Context mContext;
    private int mState;
    private final float zzMx;
    private String zzXK;
    private float zzXL;
    private float zzXM;
    private float zzXN;
    private String zzts;
    private String zzwd;

    public zzpr(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzMx = context.getResources().getDisplayMetrics().density;
    }

    public zzpr(Context context, String str) {
        this(context);
        this.zzXK = str;
    }

    private int zza(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    static String zzbc(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder sb = new StringBuilder();
        Map<String, String> zzg = com.google.android.gms.ads.internal.zzw.zzcM().zzg(build);
        for (String str2 : zzg.keySet()) {
            sb.append(str2).append(" = ").append(zzg.get(str2)).append("\n\n");
        }
        String trim = sb.toString().trim();
        return TextUtils.isEmpty(trim) ? "No debug information" : trim;
    }

    private void zzkU() {
        if (!(this.mContext instanceof Activity)) {
            zzpk.zzbg("Can not create dialog without Activity Context");
            return;
        }
        Resources resources = com.google.android.gms.ads.internal.zzw.zzcQ().getResources();
        String string = resources != null ? resources.getString(R.string.debug_menu_title) : "Select a Debug Mode";
        String string2 = resources != null ? resources.getString(R.string.debug_menu_ad_information) : "Ad Information";
        String string3 = resources != null ? resources.getString(R.string.debug_menu_creative_preview) : "Creative Preview";
        String string4 = resources != null ? resources.getString(R.string.debug_menu_troubleshooting) : "Troubleshooting";
        ArrayList arrayList = new ArrayList();
        final int zza = zza((List<String>) arrayList, string2, true);
        final int zza2 = zza(arrayList, string3, zzgd.zzFl.get().booleanValue());
        final int zza3 = zza(arrayList, string4, zzgd.zzFm.get().booleanValue());
        new AlertDialog.Builder(this.mContext).setTitle(string).setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzpr.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == zza) {
                    zzpr.this.zzkV();
                } else if (i == zza2 && zzgd.zzFl.get().booleanValue()) {
                    zzpr.this.zzkW();
                } else if (i != zza3 || !zzgd.zzFm.get().booleanValue()) {
                } else {
                    zzpr.this.zzkX();
                }
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkV() {
        if (!(this.mContext instanceof Activity)) {
            zzpk.zzbg("Can not create dialog without Activity Context");
            return;
        }
        final String zzbc = zzbc(this.zzXK);
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setMessage(zzbc);
        builder.setTitle("Ad Information");
        builder.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzpr.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                com.google.android.gms.ads.internal.zzw.zzcM().zzb(zzpr.this.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", zzbc), "Share via"));
            }
        });
        builder.setNegativeButton("Close", new DialogInterface.OnClickListener(this) { // from class: com.google.android.gms.internal.zzpr.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkW() {
        zzpk.zzbf("Debug mode [Creative Preview] selected.");
        zzpn.zza(new Runnable() { // from class: com.google.android.gms.internal.zzpr.4
            @Override // java.lang.Runnable
            public void run() {
                com.google.android.gms.ads.internal.zzw.zzcU().zzh(zzpr.this.mContext, zzpr.this.zzts, zzpr.this.zzwd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkX() {
        zzpk.zzbf("Debug mode [Troubleshooting] selected.");
        zzpn.zza(new Runnable() { // from class: com.google.android.gms.internal.zzpr.5
            @Override // java.lang.Runnable
            public void run() {
                com.google.android.gms.ads.internal.zzw.zzcU().zzi(zzpr.this.mContext, zzpr.this.zzts, zzpr.this.zzwd);
            }
        });
    }

    public void setAdUnitId(String str) {
        this.zzts = str;
    }

    public void showDialog() {
        if (zzgd.zzFm.get().booleanValue() || zzgd.zzFl.get().booleanValue()) {
            zzkU();
        } else {
            zzkV();
        }
    }

    void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzXL = f;
            this.zzXM = f2;
            this.zzXN = f2;
        } else if (this.mState == -1) {
        } else {
            if (i != 2) {
                if (i != 1 || this.mState != 4) {
                    return;
                }
                showDialog();
                return;
            }
            if (f2 > this.zzXM) {
                this.zzXM = f2;
            } else if (f2 < this.zzXN) {
                this.zzXN = f2;
            }
            if (this.zzXM - this.zzXN > 30.0f * this.zzMx) {
                this.mState = -1;
                return;
            }
            if (this.mState == 0 || this.mState == 2) {
                if (f - this.zzXL >= 50.0f * this.zzMx) {
                    this.zzXL = f;
                    this.mState++;
                }
            } else if ((this.mState == 1 || this.mState == 3) && f - this.zzXL <= (-50.0f) * this.zzMx) {
                this.zzXL = f;
                this.mState++;
            }
            if (this.mState == 1 || this.mState == 3) {
                if (f <= this.zzXL) {
                    return;
                }
                this.zzXL = f;
            } else if (this.mState != 2 || f >= this.zzXL) {
            } else {
                this.zzXL = f;
            }
        }
    }

    public void zzba(String str) {
        this.zzwd = str;
    }

    public void zzbb(String str) {
        this.zzXK = str;
    }

    public void zzg(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}
