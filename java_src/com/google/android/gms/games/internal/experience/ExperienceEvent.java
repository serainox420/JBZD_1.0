package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
/* loaded from: classes.dex */
public interface ExperienceEvent extends Parcelable, Freezable<ExperienceEvent> {
    Game getGame();

    Uri getIconImageUri();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    int getType();

    String zzFG();

    String zzFH();

    String zzFI();

    long zzFJ();

    long zzFK();

    long zzFL();

    int zzFM();
}
