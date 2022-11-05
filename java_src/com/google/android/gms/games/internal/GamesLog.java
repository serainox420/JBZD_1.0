package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.internal.zzaca;
/* loaded from: classes2.dex */
public final class GamesLog {
    private static final zzq zzbbh = new zzq("Games");
    private static final zzaca<Boolean> zzbbi = zzaca.zzj("games.play_games_dogfood", false);

    private GamesLog() {
    }

    public static void zzF(String str, String str2) {
        zzbbh.zzF(str, str2);
    }

    public static void zzG(String str, String str2) {
        zzbbh.zzG(str, str2);
    }

    public static void zzb(String str, String str2, Throwable th) {
        zzbbh.zzb(str, str2, th);
    }

    public static void zzc(String str, String str2, Throwable th) {
        zzbbh.zzc(str, str2, th);
    }
}
