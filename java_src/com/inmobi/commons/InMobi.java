package com.inmobi.commons;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import com.inmobi.commons.analytics.androidsdk.IMAdTracker;
import com.inmobi.commons.analytics.androidsdk.IMAdTrackerReceiver;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.LocalCache;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.DemogInfo;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.internal.ActivityRecognitionManager;
import com.inmobi.commons.internal.ApplicationFocusManager;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.commons.uid.UID;
import java.util.Calendar;
/* loaded from: classes2.dex */
public final class InMobi {
    public static final int EXCLUDE_FB_ID = 4;
    public static final int EXCLUDE_ODIN1 = 2;
    public static final int EXCLUDE_UM5_ID = 8;
    public static final int ID_DEVICE_NONE = 0;
    public static final int INCLUDE_DEFAULT = 1;

    /* renamed from: a  reason: collision with root package name */
    private static String f3715a = null;

    private InMobi() {
    }

    public static String getAppId() {
        return f3715a;
    }

    public static void initialize(Context context, String str) {
        a(context, str);
    }

    private static void a(Context context, String str) {
        try {
            if (context == null) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Application Context NULL");
                Log.debug(InternalSDKUtil.LOGGING_TAG, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (!InternalSDKUtil.isInitializedSuccessfully()) {
                InternalSDKUtil.resetMediaCache(applicationContext);
            }
            InternalSDKUtil.setContext(applicationContext);
            if (str == null || "".equals(str.trim())) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, AdTrackerConstants.MSG_APP_ID_EMPTY);
            } else if (InternalSDKUtil.isInitializedSuccessfully()) {
                ThinICE.start(context);
            } else {
                f3715a = str.trim();
                InternalSDKUtil.getUserAgent();
                LocationInfo.collectLocationInfo();
                AppInfo.updateAppInfo();
                DeviceInfo.updateDeviceInfo();
                UID.getInstance().init();
                String preferences = FileOperations.getPreferences(context.getApplicationContext(), InternalSDKUtil.IM_PREF, "version");
                if (preferences == null || !preferences.equals(getVersion())) {
                    FileOperations.setPreferences(context.getApplicationContext(), InternalSDKUtil.IM_PREF, "version", getVersion());
                    LocalCache.reset();
                }
                ThinICE.start(context);
                Log.debug(InternalSDKUtil.LOGGING_TAG, "InMobi init successful");
                IMAdTracker.getInstance().init(applicationContext, str);
                IMAdTracker.getInstance().reportAppDownloadGoal();
                ApplicationFocusManager.init(context);
                ApplicationFocusManager.addFocusChangedListener(new ApplicationFocusManager.FocusChangedListener() { // from class: com.inmobi.commons.InMobi.1
                    @Override // com.inmobi.commons.internal.ApplicationFocusManager.FocusChangedListener
                    public void onFocusChanged(boolean z) {
                        if (z) {
                            UID.getInstance().refresh();
                            LocationInfo.collectLocationInfo();
                            AnalyticsEventsWrapper.getInstance().startSession(InMobi.f3715a, null);
                            return;
                        }
                        AnalyticsEventsWrapper.getInstance().endSession(null);
                    }
                });
                AnalyticsEventsWrapper.getInstance().startSession(f3715a, null);
                ActivityRecognitionManager.init(context.getApplicationContext());
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.addAction(InternalSDKUtil.ACTION_RECEIVER_REFERRER);
                intentFilter.addAction(InternalSDKUtil.ACTION_SHARE_INMID);
                context.getApplicationContext().registerReceiver(new IMAdTrackerReceiver(), intentFilter);
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception in initialize", e);
        }
    }

    public static void initialize(Activity activity, String str) {
        a(activity, str);
    }

    /* loaded from: classes2.dex */
    public enum LOG_LEVEL {
        NONE(0),
        DEBUG(1),
        VERBOSE(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3716a;

        LOG_LEVEL(int i) {
            this.f3716a = i;
        }

        public int getValue() {
            return this.f3716a;
        }
    }

    public static void setLogLevel(LOG_LEVEL log_level) {
        if (log_level == LOG_LEVEL.NONE) {
            Log.setInternalLogLevel(Log.INTERNAL_LOG_LEVEL.NONE);
        } else if (log_level == LOG_LEVEL.DEBUG) {
            Log.setInternalLogLevel(Log.INTERNAL_LOG_LEVEL.DEBUG);
        } else if (log_level == LOG_LEVEL.VERBOSE) {
            Log.setInternalLogLevel(Log.INTERNAL_LOG_LEVEL.VERBOSE);
        } else {
            Log.setInternalLogLevel(Log.INTERNAL_LOG_LEVEL.INTERNAL);
        }
    }

    public static String getVersion() {
        return InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION;
    }

    public static void setDeviceIDMask(int i) {
        DemogInfo.setDeviceIDMask(i);
        UID.getInstance().setPublisherDeviceIdMaskMap(i);
    }

    public static void setCurrentLocation(Location location) {
        if (location != null) {
            DemogInfo.setCurrentLocation(location);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Location cannot be null");
        }
    }

    public static void setLocationWithCityStateCountry(String str, String str2, String str3) {
        DemogInfo.setLocationWithCityStateCountry(str, str2, str3);
    }

    public static void setPostalCode(String str) {
        if (str != null && !"".equals(str.trim())) {
            DemogInfo.setPostalCode(str);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Postal Code cannot be null");
        }
    }

    public static void setAreaCode(String str) {
        if (str != null && !"".equals(str.trim())) {
            DemogInfo.setAreaCode(str);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Area code cannot be null");
        }
    }

    public static void setDateOfBirth(Calendar calendar) {
        if (calendar != null) {
            DemogInfo.setDateOfBirth(calendar);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Date Of Birth cannot be null");
        }
    }

    public static void setGender(GenderType genderType) {
        if (genderType != null) {
            DemogInfo.setGender(genderType);
        }
    }

    public static void setIncome(int i) {
        DemogInfo.setIncome(Integer.valueOf(i));
    }

    public static void setEducation(EducationType educationType) {
        if (educationType != null) {
            DemogInfo.setEducation(educationType);
        }
    }

    public static void setEthnicity(EthnicityType ethnicityType) {
        if (ethnicityType != null) {
            DemogInfo.setEthnicity(ethnicityType);
        }
    }

    public static void setAge(int i) {
        DemogInfo.setAge(Integer.valueOf(i));
    }

    public static void setInterests(String str) {
        if (str != null && !"".equals(str.trim())) {
            DemogInfo.setInterests(str);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Interests cannot be null");
        }
    }

    public static void addIDType(IMIDType iMIDType, String str) {
        DemogInfo.addIDType(iMIDType, str);
    }

    public static void removeIDType(IMIDType iMIDType) {
        DemogInfo.removeIDType(iMIDType);
    }

    public static void setMaritalStatus(MaritalStatus maritalStatus) {
        if (maritalStatus != null) {
            DemogInfo.setMaritalStatus(maritalStatus);
        }
    }

    public static void setLanguage(String str) {
        if (str != null && !"".equals(str.trim())) {
            DemogInfo.setLanguage(str);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Language cannot be null");
        }
    }

    public static void setSexualOrientation(SexualOrientation sexualOrientation) {
        if (sexualOrientation != null) {
            DemogInfo.setSexualOrientation(sexualOrientation);
        }
    }

    public static void setHasChildren(HasChildren hasChildren) {
        if (hasChildren != null) {
            DemogInfo.setHasChildren(hasChildren);
        }
    }
}
