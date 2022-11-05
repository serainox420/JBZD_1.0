package com.google.firebase.messaging;

import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3599a = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");
    private static a b;
    private final FirebaseInstanceId c;

    private a(FirebaseInstanceId firebaseInstanceId) {
        this.c = firebaseInstanceId;
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (b == null) {
                b = new a(FirebaseInstanceId.a());
            }
            aVar = b;
        }
        return aVar;
    }

    public void a(String str) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in subscribeToTopic.");
            str = str.substring("/topics/".length());
        }
        if (str == null || !f3599a.matcher(str).matches()) {
            String valueOf = String.valueOf("[a-zA-Z0-9-_.~%]{1,900}");
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 55 + String.valueOf(valueOf).length()).append("Invalid topic name: ").append(str).append(" does not match the allowed format ").append(valueOf).toString());
        }
        FirebaseInstanceId a2 = FirebaseInstanceId.a();
        String valueOf2 = String.valueOf("S!");
        String valueOf3 = String.valueOf(str);
        a2.a(valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
    }
}
