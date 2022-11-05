package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class GcmPubSub {
    private static GcmPubSub zzbgo;
    private static final Pattern zzbgq = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    private InstanceID zzbgp;

    private GcmPubSub(Context context) {
        this.zzbgp = InstanceID.getInstance(context);
    }

    public static synchronized GcmPubSub getInstance(Context context) {
        GcmPubSub gcmPubSub;
        synchronized (GcmPubSub.class) {
            if (zzbgo == null) {
                zzbgo = new GcmPubSub(context);
            }
            gcmPubSub = zzbgo;
        }
        return gcmPubSub;
    }

    public void subscribe(String str, String str2, Bundle bundle) throws IOException {
        if (str == null || str.isEmpty()) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid appInstanceToken: ".concat(valueOf) : new String("Invalid appInstanceToken: "));
        } else if (str2 == null || !zzbgq.matcher(str2).matches()) {
            String valueOf2 = String.valueOf(str2);
            throw new IllegalArgumentException(valueOf2.length() != 0 ? "Invalid topic name: ".concat(valueOf2) : new String("Invalid topic name: "));
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("gcm.topic", str2);
            this.zzbgp.getToken(str, str2, bundle);
        }
    }

    public void unsubscribe(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", str2);
        this.zzbgp.zzb(str, str2, bundle);
    }
}
