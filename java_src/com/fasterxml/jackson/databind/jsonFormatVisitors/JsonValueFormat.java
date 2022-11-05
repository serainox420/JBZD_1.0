package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.facebook.share.internal.ShareConstants;
import com.fasterxml.jackson.annotation.JsonValue;
import com.google.android.gms.common.Scopes;
/* loaded from: classes.dex */
public enum JsonValueFormat {
    COLOR("color"),
    DATE("date"),
    DATE_TIME("date-time"),
    EMAIL(Scopes.EMAIL),
    HOST_NAME("host-name"),
    IP_ADDRESS("ip-address"),
    IPV6("ipv6"),
    PHONE("phone"),
    REGEX("regex"),
    STYLE("style"),
    TIME("time"),
    URI(ShareConstants.MEDIA_URI),
    UTC_MILLISEC("utc-millisec");
    
    private final String _desc;

    JsonValueFormat(String str) {
        this._desc = str;
    }

    @Override // java.lang.Enum
    @JsonValue
    public String toString() {
        return this._desc;
    }
}
