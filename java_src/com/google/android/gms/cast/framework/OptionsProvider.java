package com.google.android.gms.cast.framework;

import android.content.Context;
import java.util.List;
/* loaded from: classes2.dex */
public interface OptionsProvider {
    List<SessionProvider> getAdditionalSessionProviders(Context context);

    CastOptions getCastOptions(Context context);
}
