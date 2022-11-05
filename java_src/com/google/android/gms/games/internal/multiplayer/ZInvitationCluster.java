package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class ZInvitationCluster extends GamesAbstractSafeParcelable implements Invitation {
    public static final Parcelable.Creator<ZInvitationCluster> CREATOR = new InvitationClusterCreator();
    private final int zzaiI;
    private final ArrayList<InvitationEntity> zzbcD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZInvitationCluster(int i, ArrayList<InvitationEntity> arrayList) {
        this.zzaiI = i;
        this.zzbcD = arrayList;
        zzFU();
    }

    private void zzFU() {
        zzc.zzaw(!this.zzbcD.isEmpty());
        InvitationEntity invitationEntity = this.zzbcD.get(0);
        int size = this.zzbcD.size();
        for (int i = 1; i < size; i++) {
            zzc.zza(invitationEntity.getInviter().equals(this.zzbcD.get(i).getInviter()), "All the invitations must be from the same inviter");
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ZInvitationCluster)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ZInvitationCluster zInvitationCluster = (ZInvitationCluster) obj;
        if (zInvitationCluster.zzbcD.size() != this.zzbcD.size()) {
            return false;
        }
        int size = this.zzbcD.size();
        for (int i = 0; i < size; i++) {
            if (!this.zzbcD.get(i).equals(zInvitationCluster.zzbcD.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Invitation mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getAvailableAutoMatchSlots() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public String getInvitationId() {
        return this.zzbcD.get(0).getInvitationId();
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getInvitationType() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Participant getInviter() {
        return this.zzbcD.get(0).getInviter();
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getVariant() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbcD.toArray());
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        InvitationClusterCreator.zza(this, parcel, i);
    }

    public ArrayList<Invitation> zzFV() {
        return new ArrayList<>(this.zzbcD);
    }
}
