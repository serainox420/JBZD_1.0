package com.google.firebase.iid;
@Deprecated
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final FirebaseInstanceId f3582a;

    private b(FirebaseInstanceId firebaseInstanceId) {
        this.f3582a = firebaseInstanceId;
    }

    public static b a() {
        return new b(FirebaseInstanceId.a());
    }

    public String b() {
        return this.f3582a.c();
    }

    public String c() {
        return this.f3582a.d();
    }
}
