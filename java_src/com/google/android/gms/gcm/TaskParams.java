package com.google.android.gms.gcm;

import android.net.Uri;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes2.dex */
public class TaskParams {
    private final Bundle extras;
    private final String tag;
    private final List<Uri> zzbhf;

    public TaskParams(String str) {
        this(str, null, null);
    }

    public TaskParams(String str, Bundle bundle) {
        this(str, bundle, null);
    }

    public TaskParams(String str, Bundle bundle, List<Uri> list) {
        this.tag = str;
        this.extras = bundle;
        this.zzbhf = list;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public String getTag() {
        return this.tag;
    }
}
