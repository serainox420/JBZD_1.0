package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import com.google.android.gms.games.internal.constants.MatchResult;
/* loaded from: classes2.dex */
public final class ParticipantResult extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<ParticipantResult> CREATOR = new ParticipantResultCreator();
    public static final int MATCH_RESULT_DISAGREED = 5;
    public static final int MATCH_RESULT_DISCONNECT = 4;
    public static final int MATCH_RESULT_LOSS = 1;
    public static final int MATCH_RESULT_NONE = 3;
    public static final int MATCH_RESULT_TIE = 2;
    public static final int MATCH_RESULT_UNINITIALIZED = -1;
    public static final int MATCH_RESULT_WIN = 0;
    public static final int PLACING_UNINITIALIZED = -1;
    private final String zzbaC;
    private final int zzbeo;
    private final int zzbep;

    public ParticipantResult(String str, int i, int i2) {
        this.zzbaC = (String) zzac.zzw(str);
        zzac.zzaw(MatchResult.isValid(i));
        this.zzbeo = i;
        this.zzbep = i2;
    }

    public String getParticipantId() {
        return this.zzbaC;
    }

    public int getPlacing() {
        return this.zzbep;
    }

    public int getResult() {
        return this.zzbeo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParticipantResultCreator.zza(this, parcel, i);
    }
}
