package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class zzxo extends UIController {
    private final View mView;
    private final View.OnClickListener zzatA;
    private final ComponentName zzatJ;
    private final WeakReference<Activity> zzatx;

    public zzxo(View view, Activity activity) {
        this.mView = view;
        this.zzatx = new WeakReference<>(activity);
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(activity).getCastOptions().getCastMediaOptions();
        if (castMediaOptions == null || TextUtils.isEmpty(castMediaOptions.getExpandedControllerActivityClassName())) {
            this.zzatJ = null;
            this.zzatA = null;
            return;
        }
        this.zzatJ = new ComponentName(activity.getApplicationContext(), castMediaOptions.getExpandedControllerActivityClassName());
        this.zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxo.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Activity activity2 = (Activity) zzxo.this.zzatx.get();
                if (activity2 != null) {
                    Intent intent = new Intent();
                    intent.setComponent(zzxo.this.zzatJ);
                    activity2.startActivity(intent);
                }
            }
        };
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzatA);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
