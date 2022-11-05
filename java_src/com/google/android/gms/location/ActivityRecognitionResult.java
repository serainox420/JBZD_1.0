package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.MetadataChangeSet;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ActivityRecognitionResult extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new zzc();
    Bundle extras;
    List<DetectedActivity> zzbjq;
    long zzbjr;
    long zzbjs;
    int zzbjt;

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(detectedActivity, j, j2, 0, (Bundle) null);
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2, int i, Bundle bundle) {
        this(Collections.singletonList(detectedActivity), j, j2, i, bundle);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this(list, j, j2, 0, (Bundle) null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        boolean z = true;
        zzac.zzb(list != null && list.size() > 0, "Must have at least 1 detected activity");
        zzac.zzb((j <= 0 || j2 <= 0) ? false : z, "Must set times");
        this.zzbjq = list;
        this.zzbjr = j;
        this.zzbjs = j2;
        this.zzbjt = i;
        this.extras = bundle;
    }

    public static ActivityRecognitionResult extractResult(Intent intent) {
        ActivityRecognitionResult zzu = zzu(intent);
        if (zzu != null) {
            return zzu;
        }
        List<ActivityRecognitionResult> zzw = zzw(intent);
        if (zzw != null && !zzw.isEmpty()) {
            return zzw.get(zzw.size() - 1);
        }
        return null;
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        if (zzt(intent)) {
            return true;
        }
        List<ActivityRecognitionResult> zzw = zzw(intent);
        return zzw != null && !zzw.isEmpty();
    }

    private static boolean zzc(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if ((bundle == null && bundle2 != null) || (bundle != null && bundle2 == null)) {
            return false;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!zzc(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzt(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    }

    private static ActivityRecognitionResult zzu(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        Object obj = intent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
        if (obj instanceof byte[]) {
            return (ActivityRecognitionResult) com.google.android.gms.common.internal.safeparcel.zzd.zza((byte[]) obj, CREATOR);
        }
        if (!(obj instanceof ActivityRecognitionResult)) {
            return null;
        }
        return (ActivityRecognitionResult) obj;
    }

    public static boolean zzv(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST");
    }

    public static List<ActivityRecognitionResult> zzw(Intent intent) {
        if (!zzv(intent)) {
            return null;
        }
        return com.google.android.gms.common.internal.safeparcel.zzd.zzb(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST", CREATOR);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.zzbjr == activityRecognitionResult.zzbjr && this.zzbjs == activityRecognitionResult.zzbjs && this.zzbjt == activityRecognitionResult.zzbjt && zzaa.equal(this.zzbjq, activityRecognitionResult.zzbjq) && zzc(this.extras, activityRecognitionResult.extras);
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity detectedActivity : this.zzbjq) {
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.zzbjs;
    }

    public DetectedActivity getMostProbableActivity() {
        return this.zzbjq.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.zzbjq;
    }

    public long getTime() {
        return this.zzbjr;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzbjr), Long.valueOf(this.zzbjs), Integer.valueOf(this.zzbjt), this.zzbjq, this.extras);
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbjq);
        long j = this.zzbjr;
        return new StringBuilder(String.valueOf(valueOf).length() + MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES).append("ActivityRecognitionResult [probableActivities=").append(valueOf).append(", timeMillis=").append(j).append(", elapsedRealtimeMillis=").append(this.zzbjs).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
