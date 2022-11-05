package com.inmobi.commons.analytics.androidsdk;

import android.content.Context;
import android.os.Build;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
/* loaded from: classes2.dex */
public final class IMAdTracker {

    /* renamed from: a  reason: collision with root package name */
    private static IMAdTracker f3721a;

    private IMAdTracker() {
    }

    public static synchronized IMAdTracker getInstance() {
        IMAdTracker iMAdTracker;
        synchronized (IMAdTracker.class) {
            if (f3721a == null) {
                f3721a = new IMAdTracker();
            }
            iMAdTracker = f3721a;
        }
        return iMAdTracker;
    }

    public void init(Context context, String str) {
        try {
            if (context == null) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Application Context NULL");
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
            } else if (str == null) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "APP ID Cannot be NULL");
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_APP_ID_NULL);
            } else if (str.trim().equals("")) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_APP_ID_EMPTY);
            } else {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "IMAdtracker init successfull");
                FileOperations.setPreferences(context, AdTrackerConstants.IMPREF_FILE, "mk-siteid", str);
                if (!AdTrackerUtils.isPermissionGranted("android.permission.INTERNET") || !AdTrackerUtils.isPermissionGranted("android.permission.ACCESS_NETWORK_STATE")) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_PERMISSION_MISSING);
                    return;
                }
                if (Build.VERSION.SDK_INT < 17 && !AdTrackerUtils.isPermissionGranted("android.permission.READ_LOGS")) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_OPTIONAL_PERM_MISSING);
                }
                if (0 == FileOperations.getLongPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T1)) {
                    FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T1, System.currentTimeMillis());
                }
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to init", e);
        }
    }

    public void reportAppDownloadGoal() {
        a(AdTrackerConstants.GOAL_DOWNLOAD);
    }

    public void reportCustomGoal(String str) {
        if (AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INVALID_CUSTOM_GOAL);
        } else {
            a(str);
        }
    }

    private boolean a(String str) {
        try {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, "mk-siteid");
            if (InternalSDKUtil.getContext() == null || preferences == null || preferences.trim().equals("")) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INITIALIZATION_INCOMPLETE);
                return false;
            } else if (str == null || "".equals(str.trim())) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INVALID_GOAL);
                return false;
            } else {
                boolean checkDownloadGoalUploaded = AdTrackerUtils.checkDownloadGoalUploaded();
                if (AdTrackerConstants.GOAL_DOWNLOAD.equals(str) && true == checkDownloadGoalUploaded) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Download goal already uploaded");
                    return false;
                }
                AdTrackerNetworkInterface.init();
                if (AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
                    if (!AdTrackerUtils.checkDownloadGoalAdded()) {
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_INSERT_STATUS, true);
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal Queued " + str);
                        AdTrackerNetworkInterface.getGoalList().addGoal(str, 1, 0L, 0, false);
                    }
                } else {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal Queued " + str);
                    AdTrackerNetworkInterface.getGoalList().addGoal(str, 1, 0L, 0, false);
                }
                AdTrackerNetworkInterface.reportToServer(preferences);
                return true;
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot report goal", e);
            return false;
        }
    }
}
