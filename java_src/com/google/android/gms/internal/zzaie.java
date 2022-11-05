package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzahv;
import com.google.android.gms.internal.zzahw;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzaie implements DriveResource {
    protected final DriveId zzaKG;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzagu {
        private final zzaad.zzb<DriveApi.MetadataBufferResult> zzaGN;

        public zza(zzaad.zzb<DriveApi.MetadataBufferResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzahv.zzg(status, null, false));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajv zzajvVar) throws RemoteException {
            this.zzaGN.setResult(new zzahv.zzg(Status.zzazx, new MetadataBuffer(zzajvVar.zzBl()), false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzagu {
        private final zzaad.zzb<DriveResource.MetadataResult> zzaGN;

        public zzb(zzaad.zzb<DriveResource.MetadataResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzc(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajy zzajyVar) throws RemoteException {
            this.zzaGN.setResult(new zzc(Status.zzazx, new zzahq(zzajyVar.zzBm())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzc implements DriveResource.MetadataResult {
        private final Metadata zzaND;
        private final Status zzair;

        public zzc(Status status, Metadata metadata) {
            this.zzair = status;
            this.zzaND = metadata;
        }

        @Override // com.google.android.gms.drive.DriveResource.MetadataResult
        public Metadata getMetadata() {
            return this.zzaND;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private abstract class zzd extends zzahw<DriveResource.MetadataResult> {
        private zzd(zzaie zzaieVar, GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzT */
        public DriveResource.MetadataResult zzc(Status status) {
            return new zzc(status, null);
        }
    }

    public zzaie(DriveId driveId) {
        this.zzaKG = driveId;
    }

    private PendingResult<DriveResource.MetadataResult> zza(GoogleApiClient googleApiClient, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new zzd(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzair(zzaie.this.zzaKG, z), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> addChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((zzahx) googleApiClient.zza(Drive.zzaid)).zza(googleApiClient, this.zzaKG, changeListener);
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> addChangeSubscription(GoogleApiClient googleApiClient) {
        return ((zzahx) googleApiClient.zza(Drive.zzaid)).zza(googleApiClient, this.zzaKG);
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> delete(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzahr(zzaie.this.zzaKG), new zzalc(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public DriveId getDriveId() {
        return this.zzaKG;
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<DriveResource.MetadataResult> getMetadata(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, false);
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzahv.zzh(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzajb(zzaie.this.zzaKG), new zza(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> removeChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((zzahx) googleApiClient.zza(Drive.zzaid)).zzb(googleApiClient, this.zzaKG, changeListener);
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> removeChangeSubscription(GoogleApiClient googleApiClient) {
        return ((zzahx) googleApiClient.zza(Drive.zzaid)).zzb(googleApiClient, this.zzaKG);
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> setParents(GoogleApiClient googleApiClient, Set<DriveId> set) {
        if (set == null) {
            throw new IllegalArgumentException("ParentIds must be provided.");
        }
        final ArrayList arrayList = new ArrayList(set);
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzala(zzaie.this.zzaKG, arrayList), new zzalc(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> trash(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzalh(zzaie.this.zzaKG), new zzalc(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> untrash(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzall(zzaie.this.zzaKG), new zzalc(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("ChangeSet must be provided.");
        }
        return googleApiClient.zzb((GoogleApiClient) new zzd(googleApiClient) { // from class: com.google.android.gms.internal.zzaie.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                metadataChangeSet.zzAE().setContext(zzahxVar.getContext());
                zzahxVar.zzAX().zza(new zzaln(zzaie.this.zzaKG, metadataChangeSet.zzAE()), new zzb(this));
            }
        });
    }
}
