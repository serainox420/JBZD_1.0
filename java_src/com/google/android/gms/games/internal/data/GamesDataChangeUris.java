package com.google.android.gms.games.internal.data;

import android.net.Uri;
import com.google.android.gms.games.Games;
/* loaded from: classes2.dex */
public final class GamesDataChangeUris {
    private static final Uri zzbck = Uri.parse("content://com.google.android.gms.games/").buildUpon().appendPath("data_change").build();
    public static final Uri zzbcl = zzbck.buildUpon().appendPath("invitations").build();
    public static final Uri zzbcm = zzbck.buildUpon().appendEncodedPath(Games.EXTRA_PLAYER_IDS).build();
}
