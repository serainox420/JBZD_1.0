package com.google.firebase.iid;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f3584a = new Object();
    private final g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(g gVar) {
        this.b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        String str = null;
        synchronized (f3584a) {
            String string = this.b.a().getString("topic_operaion_queue", null);
            if (string != null) {
                String[] split = string.split(",");
                if (split.length > 1 && !TextUtils.isEmpty(split[1])) {
                    str = split[1];
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        synchronized (f3584a) {
            String string = this.b.a().getString("topic_operaion_queue", "");
            String valueOf = String.valueOf(",");
            this.b.a().edit().putString("topic_operaion_queue", new StringBuilder(String.valueOf(string).length() + String.valueOf(valueOf).length() + String.valueOf(str).length()).append(string).append(valueOf).append(str).toString()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        boolean z;
        synchronized (f3584a) {
            String string = this.b.a().getString("topic_operaion_queue", "");
            String valueOf = String.valueOf(",");
            String valueOf2 = String.valueOf(str);
            if (string.startsWith(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf))) {
                String valueOf3 = String.valueOf(",");
                String valueOf4 = String.valueOf(str);
                this.b.a().edit().putString("topic_operaion_queue", string.substring((valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3)).length())).apply();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
