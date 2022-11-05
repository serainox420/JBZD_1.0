package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class zzbjg {
    public static final Integer zzbNn = 0;
    public static final Integer zzbNo = 1;
    private final Context mContext;
    private final ExecutorService zzbtI;

    public zzbjg(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    zzbjg(Context context, ExecutorService executorService) {
        this.mContext = context;
        this.zzbtI = executorService;
    }
}
