package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.drive.DriveFile;
import com.google.firebase.a.a;
import com.openx.view.mraid.JSInterface;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzkq extends zzkw {
    private final Context mContext;
    private final Map<String, String> zzFP;
    private String zzLS;
    private long zzLT;
    private long zzLU;
    private String zzLV;
    private String zzLW;

    public zzkq(zzqw zzqwVar, Map<String, String> map) {
        super(zzqwVar, JSInterface.ACTION_CREATE_CALENDAR_EVENT);
        this.zzFP = map;
        this.mContext = zzqwVar.zzlr();
        zzhj();
    }

    private String zzaw(String str) {
        return TextUtils.isEmpty(this.zzFP.get(str)) ? "" : this.zzFP.get(str);
    }

    private long zzax(String str) {
        String str2 = this.zzFP.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    private void zzhj() {
        this.zzLS = zzaw("description");
        this.zzLV = zzaw("summary");
        this.zzLT = zzax("start_ticks");
        this.zzLU = zzax("end_ticks");
        this.zzLW = zzaw(a.b.LOCATION);
    }

    @TargetApi(14)
    Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzLS);
        data.putExtra("eventLocation", this.zzLW);
        data.putExtra("description", this.zzLV);
        if (this.zzLT > -1) {
            data.putExtra("beginTime", this.zzLT);
        }
        if (this.zzLU > -1) {
            data.putExtra("endTime", this.zzLU);
        }
        data.setFlags(DriveFile.MODE_READ_ONLY);
        return data;
    }

    public void execute() {
        if (this.mContext == null) {
            zzaz("Activity context is not available.");
        } else if (!com.google.android.gms.ads.internal.zzw.zzcM().zzN(this.mContext).zzfp()) {
            zzaz("This feature is not available on the device.");
        } else {
            AlertDialog.Builder zzM = com.google.android.gms.ads.internal.zzw.zzcM().zzM(this.mContext);
            Resources resources = com.google.android.gms.ads.internal.zzw.zzcQ().getResources();
            zzM.setTitle(resources != null ? resources.getString(R.string.create_calendar_title) : "Create calendar event");
            zzM.setMessage(resources != null ? resources.getString(R.string.create_calendar_message) : "Allow Ad to create a calendar event?");
            zzM.setPositiveButton(resources != null ? resources.getString(R.string.accept) : "Accept", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkq.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.google.android.gms.ads.internal.zzw.zzcM().zzb(zzkq.this.mContext, zzkq.this.createIntent());
                }
            });
            zzM.setNegativeButton(resources != null ? resources.getString(R.string.decline) : "Decline", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkq.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    zzkq.this.zzaz("Operation denied by user.");
                }
            });
            zzM.create().show();
        }
    }
}
