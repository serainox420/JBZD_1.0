package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public interface zzha {

    /* loaded from: classes2.dex */
    public interface zza {
        String getCustomTemplateId();

        void zzb(zzha zzhaVar);

        String zzfS();

        zzgs zzfT();

        View zzfU();
    }

    /* loaded from: classes2.dex */
    public interface zzb extends zza {
        List getImages();
    }

    Context getContext();

    View zza(View.OnClickListener onClickListener, boolean z);

    void zza(View view, zzgy zzgyVar);

    void zza(View view, String str, JSONObject jSONObject, Map<String, WeakReference<View>> map, View view2);

    void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2);

    void zzb(View view, Map<String, WeakReference<View>> map);

    void zzc(View view, Map<String, WeakReference<View>> map);

    void zzd(MotionEvent motionEvent);

    void zzd(View view, Map<String, WeakReference<View>> map);

    boolean zzfY();

    View zzgc();

    void zzj(View view);
}
