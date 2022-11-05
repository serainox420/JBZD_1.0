package com.inmobi.commons.analytics.androidsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.ads.AudienceNetworkActivity;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class IMAdTrackerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Application Context NULL");
            Log.debug(InternalSDKUtil.LOGGING_TAG, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        } else if (intent.getAction().equals(InternalSDKUtil.ACTION_RECEIVER_REFERRER)) {
            try {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Received INSTALL REFERRER");
                String string = intent.getExtras().getString(AdTrackerConstants.REFERRER);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Referrer String: " + string);
                FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER_FROM_SDK, 1);
                AdTrackerUtils.setInternalReferrer(context.getApplicationContext(), URLEncoder.encode(string, AudienceNetworkActivity.WEBVIEW_ENCODING));
            } catch (Exception e) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error install receiver", e);
            }
        } else if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && InternalSDKUtil.checkNetworkAvailibility(context)) {
            try {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Received CONNECTIVITY BROADCAST");
                AdTrackerNetworkInterface.init();
                AdTrackerNetworkInterface.reportToServer(FileOperations.getPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, "mk-siteid"));
            } catch (Exception e2) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Connectivity receiver exception", e2);
            }
        } else if (intent.getAction().equals(InternalSDKUtil.ACTION_SHARE_INMID)) {
            String string2 = intent.getExtras().getString(UID.KEY_AID);
            String preferences = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_IMID);
            String string3 = intent.getExtras().getString(UID.KEY_IMID);
            String preferences2 = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_APPENDED_ID);
            String string4 = intent.getExtras().getString(UID.KEY_APPENDED_ID);
            long longPreferences = FileOperations.getLongPreferences(context, InternalSDKUtil.IM_PREF, "timestamp");
            long j = intent.getExtras().getLong("timestamp");
            if (preferences2 != null && string2 != null) {
                if (!preferences2.contains(string2)) {
                    if (j < longPreferences) {
                        FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_IMID, string3);
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction(InternalSDKUtil.ACTION_SHARE_INMID);
                    intent2.putExtra(UID.KEY_IMID, preferences);
                    intent2.putExtra(UID.KEY_APPENDED_ID, preferences2);
                    intent2.putExtra("timestamp", longPreferences);
                    intent2.putExtra(UID.KEY_AID, DeviceInfo.getAid());
                    context.sendBroadcast(intent2);
                }
                FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_APPENDED_ID, InternalSDKUtil.union(string4, preferences2));
            }
        }
    }
}
