package io.fabric.sdk.android.services.common;
/* loaded from: classes3.dex */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    
    public static final String BETA_APP_PACKAGE_NAME = "io.crash.air";

    /* renamed from: a  reason: collision with root package name */
    private final int f5659a;

    DeliveryMechanism(int i) {
        this.f5659a = i;
    }

    public int getId() {
        return this.f5659a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f5659a);
    }

    public static DeliveryMechanism determineFrom(String str) {
        if (BETA_APP_PACKAGE_NAME.equals(str)) {
            return TEST_DISTRIBUTION;
        }
        if (str != null) {
            return APP_STORE;
        }
        return DEVELOPER;
    }
}
