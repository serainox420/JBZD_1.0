package com.inmobi.commons.network;
/* loaded from: classes2.dex */
public enum ErrorCode {
    INVALID_REQUEST("Invalid request"),
    INTERNAL_ERROR("An internal error occurred while fetching"),
    CONNECTION_ERROR("Socket timeout exception"),
    NETWORK_ERROR("Network failure. Check your connection");
    

    /* renamed from: a  reason: collision with root package name */
    private String f3810a;

    ErrorCode(String str) {
        this.f3810a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f3810a;
    }

    public void setMessage(String str) {
        this.f3810a = str;
    }
}
