package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.h;
@Deprecated
/* loaded from: classes.dex */
public interface d<ADDITIONAL_PARAMETERS extends h, SERVER_PARAMETERS extends MediationServerParameters> extends c<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void a(e eVar, Activity activity, SERVER_PARAMETERS server_parameters, com.google.ads.a aVar, b bVar, ADDITIONAL_PARAMETERS additional_parameters);

    View d();
}
