package com.google.ads;
@Deprecated
/* loaded from: classes.dex */
public final class AdRequest {

    /* loaded from: classes2.dex */
    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3129a;

        ErrorCode(String str) {
            this.f3129a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3129a;
        }
    }

    /* loaded from: classes2.dex */
    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE
    }
}
