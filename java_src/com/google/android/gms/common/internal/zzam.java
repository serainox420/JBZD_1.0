package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.R;
/* loaded from: classes2.dex */
public class zzam {
    private final Resources zzaGK;
    private final String zzaGL;

    public zzam(Context context) {
        zzac.zzw(context);
        this.zzaGK = context.getResources();
        this.zzaGL = this.zzaGK.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        int identifier = this.zzaGK.getIdentifier(str, "string", this.zzaGL);
        if (identifier == 0) {
            return null;
        }
        return this.zzaGK.getString(identifier);
    }
}
