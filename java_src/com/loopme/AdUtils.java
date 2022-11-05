package com.loopme;

import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
/* loaded from: classes2.dex */
public class AdUtils {
    private static final String LOG_TAG = AdUtils.class.getSimpleName();

    public static void startAdActivity(BaseAd baseAd) {
        if (baseAd != null) {
            Logging.out(LOG_TAG, "Starting Ad Activity");
            LoopMeAdHolder.putAd(baseAd);
            Intent intent = new Intent(baseAd.getContext(), AdActivity.class);
            intent.putExtra(StaticParams.APPKEY_TAG, baseAd.getAppKey());
            intent.putExtra(StaticParams.FORMAT_TAG, baseAd.getAdFormat());
            intent.addFlags(DriveFile.MODE_WRITE_ONLY);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            baseAd.getContext().startActivity(intent);
        }
    }
}
