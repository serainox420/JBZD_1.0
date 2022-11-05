package com.google.firebase.remoteconfig;
/* loaded from: classes2.dex */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigFetchException {

    /* renamed from: a  reason: collision with root package name */
    private final long f3602a;

    public FirebaseRemoteConfigFetchThrottledException(long j) {
        this.f3602a = j;
    }

    public long getThrottleEndTimeMillis() {
        return this.f3602a;
    }
}
