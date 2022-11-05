package com.google.android.gms.fitness;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;
import com.google.android.gms.fitness.request.DataUpdateRequest;
import com.google.android.gms.fitness.result.DailyTotalResult;
import com.google.android.gms.fitness.result.DataReadResult;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public interface HistoryApi {

    /* loaded from: classes2.dex */
    public static class ViewIntentBuilder {
        private long zzaKx;
        private long zzaKy;
        private final DataType zzaSg;
        private DataSource zzaSh;
        private String zzaSi;
        private final Context zzqn;

        public ViewIntentBuilder(Context context, DataType dataType) {
            this.zzqn = context;
            this.zzaSg = dataType;
        }

        private Intent zzk(Intent intent) {
            Intent intent2;
            ResolveInfo resolveActivity;
            if (this.zzaSi == null || (resolveActivity = this.zzqn.getPackageManager().resolveActivity((intent2 = new Intent(intent).setPackage(this.zzaSi)), 0)) == null) {
                return intent;
            }
            intent2.setComponent(new ComponentName(this.zzaSi, resolveActivity.activityInfo.name));
            return intent2;
        }

        public Intent build() {
            boolean z = true;
            zzac.zza(this.zzaKx > 0, "Start time must be set");
            if (this.zzaKy <= this.zzaKx) {
                z = false;
            }
            zzac.zza(z, "End time must be set and after start time");
            Intent intent = new Intent(Fitness.ACTION_VIEW);
            intent.setType(DataType.getMimeType(this.zzaSh.getDataType()));
            intent.putExtra(Fitness.EXTRA_START_TIME, this.zzaKx);
            intent.putExtra(Fitness.EXTRA_END_TIME, this.zzaKy);
            zzd.zza(this.zzaSh, intent, DataSource.EXTRA_DATA_SOURCE);
            return zzk(intent);
        }

        public ViewIntentBuilder setDataSource(DataSource dataSource) {
            zzac.zzb(dataSource.getDataType().equals(this.zzaSg), "Data source %s is not for the data type %s", dataSource, this.zzaSg);
            this.zzaSh = dataSource;
            return this;
        }

        public ViewIntentBuilder setPreferredApplication(String str) {
            this.zzaSi = str;
            return this;
        }

        public ViewIntentBuilder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            this.zzaKx = timeUnit.toMillis(j);
            this.zzaKy = timeUnit.toMillis(j2);
            return this;
        }
    }

    PendingResult<Status> deleteData(GoogleApiClient googleApiClient, DataDeleteRequest dataDeleteRequest);

    PendingResult<Status> insertData(GoogleApiClient googleApiClient, DataSet dataSet);

    PendingResult<DailyTotalResult> readDailyTotal(GoogleApiClient googleApiClient, DataType dataType);

    PendingResult<DailyTotalResult> readDailyTotalFromLocalDevice(GoogleApiClient googleApiClient, DataType dataType);

    PendingResult<DataReadResult> readData(GoogleApiClient googleApiClient, DataReadRequest dataReadRequest);

    PendingResult<Status> registerDataUpdateListener(GoogleApiClient googleApiClient, DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest);

    PendingResult<Status> unregisterDataUpdateListener(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> updateData(GoogleApiClient googleApiClient, DataUpdateRequest dataUpdateRequest);
}
