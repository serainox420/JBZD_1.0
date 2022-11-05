package com.google.ads.mediation;

import android.app.Activity;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.h;
@Deprecated
/* loaded from: classes.dex */
public interface f<ADDITIONAL_PARAMETERS extends h, SERVER_PARAMETERS extends MediationServerParameters> extends c<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS> {
    void a(g gVar, Activity activity, SERVER_PARAMETERS server_parameters, b bVar, ADDITIONAL_PARAMETERS additional_parameters);

    void e();
}
