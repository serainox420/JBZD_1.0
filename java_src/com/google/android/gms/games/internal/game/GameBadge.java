package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
/* loaded from: classes2.dex */
public interface GameBadge extends Parcelable, Freezable<GameBadge> {
    String getDescription();

    Uri getIconImageUri();

    String getTitle();

    int getType();
}
