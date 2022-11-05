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
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;
/* loaded from: classes2.dex */
public interface SessionsApi {

    /* loaded from: classes2.dex */
    public static class ViewIntentBuilder {
        private final Context mContext;
        private Session zzaSj;
        private String zzaSk;
        private boolean zzaSl = false;

        public ViewIntentBuilder(Context context) {
            this.mContext = context;
        }

        private Intent zzk(Intent intent) {
            Intent intent2;
            ResolveInfo resolveActivity;
            if (this.zzaSk == null || (resolveActivity = this.mContext.getPackageManager().resolveActivity((intent2 = new Intent(intent).setPackage(this.zzaSk)), 0)) == null) {
                return intent;
            }
            intent2.setComponent(new ComponentName(this.zzaSk, resolveActivity.activityInfo.name));
            return intent2;
        }

        public Intent build() {
            zzac.zza(this.zzaSj != null, "Session must be set");
            Intent intent = new Intent(Fitness.ACTION_VIEW);
            intent.setType(Session.getMimeType(this.zzaSj.getActivity()));
            zzd.zza(this.zzaSj, intent, Session.EXTRA_SESSION);
            if (!this.zzaSl) {
                this.zzaSk = this.zzaSj.getAppPackageName();
            }
            return zzk(intent);
        }

        public ViewIntentBuilder setPreferredApplication(String str) {
            this.zzaSk = str;
            this.zzaSl = true;
            return this;
        }

        public ViewIntentBuilder setSession(Session session) {
            this.zzaSj = session;
            return this;
        }
    }

    PendingResult<Status> insertSession(GoogleApiClient googleApiClient, SessionInsertRequest sessionInsertRequest);

    PendingResult<SessionReadResult> readSession(GoogleApiClient googleApiClient, SessionReadRequest sessionReadRequest);

    PendingResult<Status> registerForSessions(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> startSession(GoogleApiClient googleApiClient, Session session);

    PendingResult<SessionStopResult> stopSession(GoogleApiClient googleApiClient, String str);

    PendingResult<Status> unregisterForSessions(GoogleApiClient googleApiClient, PendingIntent pendingIntent);
}
