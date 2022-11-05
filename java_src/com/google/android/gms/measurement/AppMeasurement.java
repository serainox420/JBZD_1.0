package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.facebook.AccessToken;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaba;
import com.google.android.gms.internal.zzaue;
import com.google.android.gms.internal.zzauq;
import com.google.android.gms.internal.zzaut;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {
    private final zzaue zzbqc;

    /* loaded from: classes2.dex */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @Keep
        public String mName;
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            zzac.zzw(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            if (conditionalUserProperty.mValue != null) {
                this.mValue = zzaut.zzH(conditionalUserProperty.mValue);
                if (this.mValue == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mValue = conditionalUserProperty.mValue;
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            if (conditionalUserProperty.mTimedOutEventParams != null) {
                this.mTimedOutEventParams = new Bundle(conditionalUserProperty.mTimedOutEventParams);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            if (conditionalUserProperty.mTriggeredEventParams != null) {
                this.mTriggeredEventParams = new Bundle(conditionalUserProperty.mTriggeredEventParams);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            if (conditionalUserProperty.mExpiredEventParams != null) {
                this.mExpiredEventParams = new Bundle(conditionalUserProperty.mExpiredEventParams);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zza extends a.C0497a {
        public static final Map<String, String> zzbqd = com.google.android.gms.common.util.zzf.zzb(new String[]{"app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "firebase_ad_exposure", "firebase_adunit_exposure"}, new String[]{"_cd", "_ae", "_ui", "_in", "_ug", "_au", "_cmp", "_err", "_f", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu"});
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        void zzb(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        void zzc(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes2.dex */
    public interface zzd {
        boolean zza(zzf zzfVar, zzf zzfVar2);
    }

    /* loaded from: classes2.dex */
    public static final class zze extends a.b {
        public static final Map<String, String> zzbqe = com.google.android.gms.common.util.zzf.zzb(new String[]{"firebase_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "debug", "realtime", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count"}, new String[]{"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_dbg", "_r", "_o", "_sn", "_sc", "_si", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin"});
    }

    /* loaded from: classes2.dex */
    public static class zzf {
        public String zzbqf;
        public String zzbqg;
        public long zzbqh;

        public zzf() {
        }

        public zzf(zzf zzfVar) {
            this.zzbqf = zzfVar.zzbqf;
            this.zzbqg = zzfVar.zzbqg;
            this.zzbqh = zzfVar.zzbqh;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzg extends a.c {
        public static final Map<String, String> zzbqi = com.google.android.gms.common.util.zzf.zzb(new String[]{"firebase_last_notification", "first_open_time", "last_deep_link_referrer", AccessToken.USER_ID_KEY}, new String[]{"_ln", "_fot", "_ldl", AnalyticsSQLiteHelper.GENERAL_ID});
    }

    public AppMeasurement(zzaue zzaueVar) {
        zzac.zzw(zzaueVar);
        this.zzbqc = zzaueVar;
    }

    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return zzaue.zzbM(context).zzMw();
    }

    private void zzc(String str, String str2, Object obj) {
        this.zzbqc.zzKa().zzd(str, str2, obj);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.zzbqc.zzJY().beginAdUnitExposure(str);
    }

    @Keep
    protected void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzbqc.zzKa().clearConditionalUserProperty(str, str2, bundle);
    }

    @Keep
    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        this.zzbqc.zzKa().clearConditionalUserPropertyAs(str, str2, str3, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.zzbqc.zzJY().endAdUnitExposure(str);
    }

    @Keep
    public long generateEventId() {
        return this.zzbqc.zzKh().zzNi();
    }

    @Keep
    public String getAppInstanceId() {
        return this.zzbqc.zzKa().zzfQ(null);
    }

    @Keep
    protected List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        return this.zzbqc.zzKa().getConditionalUserProperties(str, str2);
    }

    @Keep
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        return this.zzbqc.zzKa().getConditionalUserPropertiesAs(str, str2, str3);
    }

    @Keep
    public String getCurrentScreenName() {
        zzf zzMV = this.zzbqc.zzKe().zzMV();
        if (zzMV != null) {
            return zzMV.zzbqf;
        }
        return null;
    }

    @Keep
    public String getGmpAppId() {
        try {
            return zzaba.zzwQ();
        } catch (IllegalStateException e) {
            this.zzbqc.zzKl().zzLY().zzj("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Keep
    protected int getMaxUserProperties(String str) {
        return this.zzbqc.zzKa().getMaxUserProperties(str);
    }

    @Keep
    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zzbqc.zzKa().getUserProperties(str, str2, z);
    }

    @Keep
    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        return this.zzbqc.zzKa().getUserPropertiesAs(str, str2, str3, z);
    }

    public void logEvent(String str, Bundle bundle) {
        int zzfU;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzbqc.zzKn().zzLg();
        if ("_iap".equals(str) || (zzfU = this.zzbqc.zzKh().zzfU(str)) == 0) {
            this.zzbqc.zzKa().zza("app", str, bundle, true);
        } else {
            this.zzbqc.zzKh().zza(zzfU, "_ev", this.zzbqc.zzKh().zza(str, this.zzbqc.zzKn().zzKM(), true), str != null ? str.length() : 0);
        }
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzbqc.zzKa().zze(str, str2, bundle);
    }

    @Keep
    public void registerOnScreenChangeCallback(zzd zzdVar) {
        this.zzbqc.zzKe().registerOnScreenChangeCallback(zzdVar);
    }

    @Keep
    protected void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        this.zzbqc.zzKa().setConditionalUserProperty(conditionalUserProperty);
    }

    @Keep
    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        this.zzbqc.zzKa().setConditionalUserPropertyAs(conditionalUserProperty);
    }

    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        this.zzbqc.zzKa().setMeasurementEnabled(z);
    }

    public void setMinimumSessionDuration(long j) {
        this.zzbqc.zzKa().setMinimumSessionDuration(j);
    }

    public void setSessionTimeoutDuration(long j) {
        this.zzbqc.zzKa().setSessionTimeoutDuration(j);
    }

    public void setUserId(String str) {
        zzb("app", AnalyticsSQLiteHelper.GENERAL_ID, str);
    }

    public void setUserProperty(String str, String str2) {
        int zzfW = this.zzbqc.zzKh().zzfW(str);
        if (zzfW != 0) {
            this.zzbqc.zzKh().zza(zzfW, "_ev", this.zzbqc.zzKh().zza(str, this.zzbqc.zzKn().zzKN(), true), str != null ? str.length() : 0);
        } else {
            zzb("app", str, str2);
        }
    }

    @Keep
    public void unregisterOnScreenChangeCallback(zzd zzdVar) {
        this.zzbqc.zzKe().unregisterOnScreenChangeCallback(zzdVar);
    }

    public void zza(zzb zzbVar) {
        this.zzbqc.zzKa().zza(zzbVar);
    }

    public void zza(zzc zzcVar) {
        this.zzbqc.zzKa().zza(zzcVar);
    }

    public void zza(String str, String str2, Bundle bundle, long j) {
        this.zzbqc.zzKa().zzd(str, str2, bundle == null ? new Bundle() : bundle, j);
    }

    public Map<String, Object> zzaJ(boolean z) {
        List<zzauq> zzaN = this.zzbqc.zzKa().zzaN(z);
        android.support.v4.f.a aVar = new android.support.v4.f.a(zzaN.size());
        for (zzauq zzauqVar : zzaN) {
            aVar.put(zzauqVar.name, zzauqVar.getValue());
        }
        return aVar;
    }

    public void zzb(String str, String str2, Object obj) {
        zzc(str, str2, obj);
    }
}
