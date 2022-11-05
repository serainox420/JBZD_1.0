package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.f.a;
import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.zzauk;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class zzauj extends zzauh {
    protected zza zzbuV;
    private AppMeasurement.zzb zzbuW;
    private final Set<AppMeasurement.zzc> zzbuX;
    private boolean zzbuY;
    private String zzbuZ;
    private String zzbva;

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(14)
    /* loaded from: classes2.dex */
    public class zza implements Application.ActivityLifecycleCallbacks {
        private zza() {
        }

        private boolean zzfR(String str) {
            if (!TextUtils.isEmpty(str)) {
                zzauj.this.zzd("auto", "_ldl", str);
                return true;
            }
            return false;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Uri data;
            try {
                zzauj.this.zzKl().zzMe().log("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent != null && (data = intent.getData()) != null && data.isHierarchical()) {
                    if (bundle == null) {
                        Bundle zzu = zzauj.this.zzKh().zzu(data);
                        String str = zzauj.this.zzKh().zzA(intent) ? "gs" : "auto";
                        if (zzu != null) {
                            zzauj.this.zze(str, "_cmp", zzu);
                        }
                    }
                    String queryParameter = data.getQueryParameter(AdTrackerConstants.REFERRER);
                    if (TextUtils.isEmpty(queryParameter)) {
                        return;
                    }
                    if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                        zzauj.this.zzKl().zzMd().log("Activity created with data 'referrer' param without gclid and at least one utm field");
                        return;
                    } else {
                        zzauj.this.zzKl().zzMd().zzj("Activity created with referrer", queryParameter);
                        zzfR(queryParameter);
                    }
                }
            } catch (Throwable th) {
                zzauj.this.zzKl().zzLY().zzj("Throwable caught in onActivityCreated", th);
            }
            zzauj.this.zzKe().onActivityCreated(activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            zzauj.this.zzKe().onActivityDestroyed(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            zzauj.this.zzKe().onActivityPaused(activity);
            zzauj.this.zzKj().zzNe();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            zzauj.this.zzKe().onActivityResumed(activity);
            zzauj.this.zzKj().zzNc();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzauj.this.zzKe().onActivitySaveInstanceState(activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzauj(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbuX = new CopyOnWriteArraySet();
        this.zzbuZ = null;
        this.zzbva = null;
    }

    private void zzMS() {
        try {
            zzf(Class.forName(zzMT()));
        } catch (ClassNotFoundException e) {
            zzKl().zzMc().log("Tag Manager is not found and thus will not be used");
        }
    }

    private String zzMT() {
        return "com.google.android.gms.tagmanager.TagManagerService";
    }

    private void zza(final AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long currentTimeMillis = zznR().currentTimeMillis();
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mName);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mOrigin);
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (zzKh().zzfX(str) != 0) {
            zzKl().zzLY().zzj("Invalid conditional user property name", str);
        } else if (zzKh().zzm(str, obj) != 0) {
            zzKl().zzLY().zze("Invalid conditional user property value", str, obj);
        } else {
            Object zzn = zzKh().zzn(str, obj);
            if (zzn == null) {
                zzKl().zzLY().zze("Unable to normalize conditional user property value", str, obj);
                return;
            }
            conditionalUserProperty.mValue = zzn;
            long j = conditionalUserProperty.mTriggerTimeout;
            if (j > zzKn().zzLa() || j < 1) {
                zzKl().zzLY().zze("Invalid conditional user property timeout", str, Long.valueOf(j));
                return;
            }
            long j2 = conditionalUserProperty.mTimeToLive;
            if (j2 > zzKn().zzLb() || j2 < 1) {
                zzKl().zzLY().zze("Invalid conditional user property time to live", str, Long.valueOf(j2));
            } else {
                zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.2
                    @Override // java.lang.Runnable
                    public void run() {
                        zzauj.this.zzb(conditionalUserProperty);
                    }
                });
            }
        }
    }

    private void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zza(str, str2, zznR().currentTimeMillis(), bundle, z, z2, z3, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, String str2, Object obj, long j) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        zzmR();
        zzJW();
        zzob();
        if (!this.zzbqc.isEnabled()) {
            zzKl().zzMd().log("User property not set since app measurement is disabled");
        } else if (!this.zzbqc.zzMt()) {
        } else {
            zzKl().zzMd().zze("Setting user property (FE)", str2, obj);
            zzKd().zzb(new zzauq(str2, j, obj, str));
        }
    }

    private void zza(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = zznR().currentTimeMillis();
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        final AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.3
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zzc(conditionalUserProperty);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaM(boolean z) {
        zzmR();
        zzJW();
        zzob();
        zzKl().zzMd().zzj("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzKm().setMeasurementEnabled(z);
        zzKd().zzMW();
    }

    private Map<String, Object> zzb(final String str, final String str2, final String str3, final boolean z) {
        final AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.5
                @Override // java.lang.Runnable
                public void run() {
                    zzauj.this.zzbqc.zzKd().zza(atomicReference, str, str2, str3, z);
                }
            });
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzKl().zzMa().zzj("Interrupted waiting for get user properties", e);
            }
        }
        List<zzauq> list = (List) atomicReference.get();
        if (list == null) {
            zzKl().zzMa().log("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        a aVar = new a(list.size());
        for (zzauq zzauqVar : list) {
            aVar.put(zzauqVar.name, zzauqVar.getValue());
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mName);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mOrigin);
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty.mValue);
        if (!this.zzbqc.isEnabled()) {
            zzKl().zzMd().log("Conditional property not sent since Firebase Analytics is disabled");
            return;
        }
        zzauq zzauqVar = new zzauq(conditionalUserProperty.mName, conditionalUserProperty.mTriggeredTimestamp, conditionalUserProperty.mValue, conditionalUserProperty.mOrigin);
        try {
            zzatq zza2 = zzKh().zza(conditionalUserProperty.mTriggeredEventName, conditionalUserProperty.mTriggeredEventParams, conditionalUserProperty.mOrigin, 0L, true, false);
            zzKd().zzf(new zzatg(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, zzauqVar, conditionalUserProperty.mCreationTimestamp, false, conditionalUserProperty.mTriggerEventName, zzKh().zza(conditionalUserProperty.mTimedOutEventName, conditionalUserProperty.mTimedOutEventParams, conditionalUserProperty.mOrigin, 0L, true, false), conditionalUserProperty.mTriggerTimeout, zza2, conditionalUserProperty.mTimeToLive, zzKh().zza(conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        com.google.android.gms.common.internal.zzac.zzw(bundle);
        zzmR();
        zzob();
        if (!this.zzbqc.isEnabled()) {
            zzKl().zzMd().log("Event not sent since app measurement is disabled");
            return;
        }
        if (!this.zzbuY) {
            this.zzbuY = true;
            zzMS();
        }
        boolean equals = AnalyticsSQLiteHelper.EVENT_LIST_AM.equals(str);
        boolean zzgd = zzaut.zzgd(str2);
        if (z && this.zzbuW != null && !zzgd && !equals) {
            zzKl().zzMd().zze("Passing event to registered event handler (FE)", str2, bundle);
            this.zzbuW.zzb(str, str2, bundle, j);
        } else if (this.zzbqc.zzMt()) {
            int zzfV = zzKh().zzfV(str2);
            if (zzfV != 0) {
                this.zzbqc.zzKh().zza(zzfV, "_ev", zzKh().zza(str2, zzKn().zzKM(), true), str2 != null ? str2.length() : 0);
                return;
            }
            bundle.putString("_o", str);
            Bundle zza2 = zzKh().zza(str2, bundle, com.google.android.gms.common.util.zzf.zzx("_o"), z3);
            if (!bundle.containsKey("_sc")) {
                zzKn().zzLg();
                zzauk.zza zzMU = zzKe().zzMU();
                if (zzMU != null) {
                    zzMU.zzbvz = true;
                }
                zzauk.zza(zzMU, zza2);
            }
            Bundle zzM = z2 ? zzKh().zzM(zza2) : zza2;
            zzKl().zzMd().zze("Logging event (FE)", str2, zzM);
            zzKd().zzc(new zzatq(str2, new zzato(zzM), str, j), str3);
            if (equals) {
                return;
            }
            for (AppMeasurement.zzc zzcVar : this.zzbuX) {
                zzcVar.zzc(str, str2, new Bundle(zzM), j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzc(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mName);
        if (!this.zzbqc.isEnabled()) {
            zzKl().zzMd().log("Conditional property not cleared since Firebase Analytics is disabled");
            return;
        }
        try {
            zzKd().zzf(new zzatg(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, new zzauq(conditionalUserProperty.mName, 0L, null, null), conditionalUserProperty.mCreationTimestamp, conditionalUserProperty.mActive, conditionalUserProperty.mTriggerEventName, null, conditionalUserProperty.mTriggerTimeout, null, conditionalUserProperty.mTimeToLive, zzKh().zza(conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, conditionalUserProperty.mCreationTimestamp, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    private List<AppMeasurement.ConditionalUserProperty> zzo(final String str, final String str2, final String str3) {
        final AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.4
                @Override // java.lang.Runnable
                public void run() {
                    zzauj.this.zzbqc.zzKd().zza(atomicReference, str, str2, str3);
                }
            });
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzKl().zzMa().zze("Interrupted waiting for get conditional user properties", str, e);
            }
        }
        List<zzatg> list = (List) atomicReference.get();
        if (list == null) {
            zzKl().zzMa().zzj("Timed out waiting for get conditional user properties", str);
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (zzatg zzatgVar : list) {
            AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
            conditionalUserProperty.mAppId = str;
            conditionalUserProperty.mOrigin = str2;
            conditionalUserProperty.mCreationTimestamp = zzatgVar.zzbqX;
            conditionalUserProperty.mName = zzatgVar.zzbqW.name;
            conditionalUserProperty.mValue = zzatgVar.zzbqW.getValue();
            conditionalUserProperty.mActive = zzatgVar.zzbqY;
            conditionalUserProperty.mTriggerEventName = zzatgVar.zzbqZ;
            if (zzatgVar.zzbra != null) {
                conditionalUserProperty.mTimedOutEventName = zzatgVar.zzbra.name;
                if (zzatgVar.zzbra.zzbrG != null) {
                    conditionalUserProperty.mTimedOutEventParams = zzatgVar.zzbra.zzbrG.zzLW();
                }
            }
            conditionalUserProperty.mTriggerTimeout = zzatgVar.zzbrb;
            if (zzatgVar.zzbrc != null) {
                conditionalUserProperty.mTriggeredEventName = zzatgVar.zzbrc.name;
                if (zzatgVar.zzbrc.zzbrG != null) {
                    conditionalUserProperty.mTriggeredEventParams = zzatgVar.zzbrc.zzbrG.zzLW();
                }
            }
            conditionalUserProperty.mTriggeredTimestamp = zzatgVar.zzbqW.zzbwc;
            conditionalUserProperty.mTimeToLive = zzatgVar.zzbrd;
            if (zzatgVar.zzbre != null) {
                conditionalUserProperty.mExpiredEventName = zzatgVar.zzbre.name;
                if (zzatgVar.zzbre.zzbrG != null) {
                    conditionalUserProperty.mExpiredEventParams = zzatgVar.zzbre.zzbrG.zzLW();
                }
            }
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzJW();
        zza((String) null, str, str2, bundle);
    }

    public void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzJV();
        zza(str, str2, str3, bundle);
    }

    public Task<String> getAppInstanceId() {
        try {
            String zzMl = zzKm().zzMl();
            return zzMl != null ? Tasks.forResult(zzMl) : Tasks.call(zzKk().zzMr(), new Callable<String>() { // from class: com.google.android.gms.internal.zzauj.11
                @Override // java.util.concurrent.Callable
                /* renamed from: zzbY */
                public String call() throws Exception {
                    String zzMl2 = zzauj.this.zzKm().zzMl();
                    if (zzMl2 == null) {
                        zzMl2 = zzauj.this.zzKa().zzar(120000L);
                        if (zzMl2 == null) {
                            throw new TimeoutException();
                        }
                        zzauj.this.zzKm().zzfJ(zzMl2);
                    }
                    return zzMl2;
                }
            });
        } catch (Exception e) {
            zzKl().zzMa().log("Failed to schedule task for getAppInstanceId");
            return Tasks.forException(e);
        }
    }

    public List<AppMeasurement.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        zzJW();
        return zzo(null, str, str2);
    }

    public List<AppMeasurement.ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzJV();
        return zzo(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public int getMaxUserProperties(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        return zzKn().zzKY();
    }

    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzJW();
        return zzb(null, str, str2, z);
    }

    public Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzJV();
        return zzb(str, str2, str3, z);
    }

    public void setConditionalUserProperty(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty);
        zzJW();
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            zzKl().zzMa().log("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        zza(conditionalUserProperty2);
    }

    public void setConditionalUserPropertyAs(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        com.google.android.gms.common.internal.zzac.zzw(conditionalUserProperty);
        com.google.android.gms.common.internal.zzac.zzdr(conditionalUserProperty.mAppId);
        zzJV();
        zza(new AppMeasurement.ConditionalUserProperty(conditionalUserProperty));
    }

    public void setMeasurementEnabled(final boolean z) {
        zzob();
        zzJW();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.1
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zzaM(z);
            }
        });
    }

    public void setMinimumSessionDuration(final long j) {
        zzJW();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.6
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zzKm().zzbtl.set(j);
                zzauj.this.zzKl().zzMd().zzj("Minimum session duration set", Long.valueOf(j));
            }
        });
    }

    public void setSessionTimeoutDuration(final long j) {
        zzJW();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.7
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zzKm().zzbtm.set(j);
                zzauj.this.zzKl().zzMd().zzj("Session timeout duration set", Long.valueOf(j));
            }
        });
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    @TargetApi(14)
    public void zzMQ() {
        if (getContext().getApplicationContext() instanceof Application) {
            Application application = (Application) getContext().getApplicationContext();
            if (this.zzbuV == null) {
                this.zzbuV = new zza();
            }
            application.unregisterActivityLifecycleCallbacks(this.zzbuV);
            application.registerActivityLifecycleCallbacks(this.zzbuV);
            zzKl().zzMe().log("Registered activity lifecycle callback");
        }
    }

    public void zzMR() {
        zzmR();
        zzJW();
        zzob();
        if (!this.zzbqc.zzMt()) {
            return;
        }
        zzKd().zzMR();
        String zzMo = zzKm().zzMo();
        if (TextUtils.isEmpty(zzMo) || zzMo.equals(zzKc().zzLS())) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_po", zzMo);
        zze("auto", "_ou", bundle);
    }

    public void zza(AppMeasurement.zzb zzbVar) {
        zzmR();
        zzJW();
        zzob();
        if (zzbVar != null && zzbVar != this.zzbuW) {
            com.google.android.gms.common.internal.zzac.zza(this.zzbuW == null, "EventInterceptor already set.");
        }
        this.zzbuW = zzbVar;
    }

    public void zza(AppMeasurement.zzc zzcVar) {
        zzJW();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzcVar);
        if (!this.zzbuX.add(zzcVar)) {
            zzKl().zzMa().log("OnEventListener already registered");
        }
    }

    protected void zza(final String str, final String str2, final long j, Bundle bundle, final boolean z, final boolean z2, final boolean z3, final String str3) {
        final Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.8
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zzb(str, str2, j, bundle2, z, z2, z3, str3);
            }
        });
    }

    void zza(final String str, final String str2, final long j, final Object obj) {
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.9
            @Override // java.lang.Runnable
            public void run() {
                zzauj.this.zza(str, str2, obj, j);
            }
        });
    }

    public void zza(String str, String str2, Bundle bundle, boolean z) {
        zzJW();
        zza(str, str2, bundle, true, this.zzbuW == null || zzaut.zzgd(str2), z, null);
    }

    public List<zzauq> zzaN(final boolean z) {
        zzJW();
        zzob();
        zzKl().zzMd().log("Fetching user attributes (FE)");
        final AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.10
                @Override // java.lang.Runnable
                public void run() {
                    zzauj.this.zzKd().zza(atomicReference, z);
                }
            });
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzKl().zzMa().zzj("Interrupted waiting for get user properties", e);
            }
        }
        List<zzauq> list = (List) atomicReference.get();
        if (list == null) {
            zzKl().zzMa().log("Timed out waiting for get user properties");
            return Collections.emptyList();
        }
        return list;
    }

    public String zzar(long j) {
        String str = null;
        if (zzKk().zzMq()) {
            zzKl().zzLY().log("Cannot retrieve app instance id from analytics worker thread");
        } else if (zzKk().zzbc()) {
            zzKl().zzLY().log("Cannot retrieve app instance id from main thread");
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzauj.12
                    @Override // java.lang.Runnable
                    public void run() {
                        zzauj.this.zzKd().zza(atomicReference);
                    }
                });
                try {
                    atomicReference.wait(j);
                } catch (InterruptedException e) {
                    zzKl().zzMa().log("Interrupted waiting for app instance id");
                }
            }
            str = (String) atomicReference.get();
        }
        return str;
    }

    public void zzd(String str, String str2, Bundle bundle, long j) {
        zzJW();
        zza(str, str2, j, bundle, false, true, true, null);
    }

    public void zzd(String str, String str2, Object obj) {
        int i = 0;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        long currentTimeMillis = zznR().currentTimeMillis();
        int zzfX = zzKh().zzfX(str2);
        if (zzfX != 0) {
            String zza2 = zzKh().zza(str2, zzKn().zzKN(), true);
            if (str2 != null) {
                i = str2.length();
            }
            this.zzbqc.zzKh().zza(zzfX, "_ev", zza2, i);
        } else if (obj == null) {
            zza(str, str2, currentTimeMillis, (Object) null);
        } else {
            int zzm = zzKh().zzm(str2, obj);
            if (zzm == 0) {
                Object zzn = zzKh().zzn(str2, obj);
                if (zzn == null) {
                    return;
                }
                zza(str, str2, currentTimeMillis, zzn);
                return;
            }
            String zza3 = zzKh().zza(str2, zzKn().zzKN(), true);
            if ((obj instanceof String) || (obj instanceof CharSequence)) {
                i = String.valueOf(obj).length();
            }
            this.zzbqc.zzKh().zza(zzm, "_ev", zza3, i);
        }
    }

    public void zze(String str, String str2, Bundle bundle) {
        zzJW();
        zza(str, str2, bundle, true, this.zzbuW == null || zzaut.zzgd(str2), false, null);
    }

    public void zzf(Class<?> cls) {
        try {
            cls.getDeclaredMethod("initialize", Context.class).invoke(null, getContext());
        } catch (Exception e) {
            zzKl().zzMa().zzj("Failed to invoke Tag Manager's initialize() method", e);
        }
    }

    public synchronized String zzfQ(String str) {
        String str2;
        zzob();
        zzJW();
        if (str == null || !str.equals(this.zzbva)) {
            String zzar = zzar(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            if (zzar == null) {
                str2 = null;
            } else {
                this.zzbva = str;
                this.zzbuZ = zzar;
                str2 = this.zzbuZ;
            }
        } else {
            str2 = this.zzbuZ;
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }
}
