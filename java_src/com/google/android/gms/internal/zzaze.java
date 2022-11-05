package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class zzaze implements People {

    /* loaded from: classes2.dex */
    private static abstract class zza extends Plus.zza<People.LoadPeopleResult> {
        private zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbB */
        public People.LoadPeopleResult zzc(final Status status) {
            return new People.LoadPeopleResult(this) { // from class: com.google.android.gms.internal.zzaze.zza.1
                @Override // com.google.android.gms.plus.People.LoadPeopleResult
                public String getNextPageToken() {
                    return null;
                }

                @Override // com.google.android.gms.plus.People.LoadPeopleResult
                public PersonBuffer getPersonBuffer() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    @Override // com.google.android.gms.plus.People
    public Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.zzd(googleApiClient, true).zzOY();
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, final Collection<String> collection) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaze.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zza(this, collection);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, final String... strArr) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaze.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzd(this, strArr);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaze.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzu(this);
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, final int i, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaze.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zza(zzeVar.zza(this, i, str));
            }
        });
    }

    @Override // com.google.android.gms.plus.People
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaze.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zza(zzeVar.zzu(this, str));
            }
        });
    }
}
