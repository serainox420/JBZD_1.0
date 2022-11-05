package com.mopub.volley;

import android.content.Intent;
/* loaded from: classes3.dex */
public class AuthFailureError extends VolleyError {

    /* renamed from: a  reason: collision with root package name */
    private Intent f4669a;

    public AuthFailureError() {
    }

    public AuthFailureError(Intent intent) {
        this.f4669a = intent;
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public AuthFailureError(String str) {
        super(str);
    }

    public AuthFailureError(String str, Exception exc) {
        super(str, exc);
    }

    public Intent getResolutionIntent() {
        return this.f4669a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f4669a != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
