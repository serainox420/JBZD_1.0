package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzkt extends zzkw {
    private final Context mContext;
    private final Map<String, String> zzFP;

    public zzkt(zzqw zzqwVar, Map<String, String> map) {
        super(zzqwVar, "storePicture");
        this.zzFP = map;
        this.mContext = zzqwVar.zzlr();
    }

    public void execute() {
        if (this.mContext == null) {
            zzaz("Activity context is not available");
        } else if (!com.google.android.gms.ads.internal.zzw.zzcM().zzN(this.mContext).zzfn()) {
            zzaz("Feature is not supported by the device.");
        } else {
            final String str = this.zzFP.get("iurl");
            if (TextUtils.isEmpty(str)) {
                zzaz("Image url cannot be empty.");
            } else if (!URLUtil.isValidUrl(str)) {
                String valueOf = String.valueOf(str);
                zzaz(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
            } else {
                final String zzay = zzay(str);
                if (!com.google.android.gms.ads.internal.zzw.zzcM().zzaZ(zzay)) {
                    String valueOf2 = String.valueOf(zzay);
                    zzaz(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                    return;
                }
                Resources resources = com.google.android.gms.ads.internal.zzw.zzcQ().getResources();
                AlertDialog.Builder zzM = com.google.android.gms.ads.internal.zzw.zzcM().zzM(this.mContext);
                zzM.setTitle(resources != null ? resources.getString(R.string.store_picture_title) : "Save image");
                zzM.setMessage(resources != null ? resources.getString(R.string.store_picture_message) : "Allow Ad to store image in Picture gallery?");
                zzM.setPositiveButton(resources != null ? resources.getString(R.string.accept) : "Accept", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkt.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        try {
                            ((DownloadManager) zzkt.this.mContext.getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(zzkt.this.zzk(str, zzay));
                        } catch (IllegalStateException e) {
                            zzkt.this.zzaz("Could not store picture.");
                        }
                    }
                });
                zzM.setNegativeButton(resources != null ? resources.getString(R.string.decline) : "Decline", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkt.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        zzkt.this.zzaz("User canceled the download.");
                    }
                });
                zzM.create().show();
            }
        }
    }

    String zzay(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    DownloadManager.Request zzk(String str, String str2) {
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        com.google.android.gms.ads.internal.zzw.zzcO().zza(request);
        return request;
    }
}
