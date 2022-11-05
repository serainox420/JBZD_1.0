package com.google.android.gms.nearby.connection;

import com.google.android.gms.common.api.CommonStatusCodes;
/* loaded from: classes2.dex */
public final class ConnectionsStatusCodes extends CommonStatusCodes {
    public static final int STATUS_ALREADY_ADVERTISING = 8001;
    public static final int STATUS_ALREADY_CONNECTED_TO_ENDPOINT = 8003;
    public static final int STATUS_ALREADY_DISCOVERING = 8002;
    public static final int STATUS_CONNECTION_REJECTED = 8004;
    public static final int STATUS_ERROR = 13;
    public static final int STATUS_NETWORK_NOT_CONNECTED = 8000;
    public static final int STATUS_NOT_CONNECTED_TO_ENDPOINT = 8005;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OUT_OF_ORDER_API_CALL = 8009;

    private ConnectionsStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        switch (i) {
            case 8000:
                return "STATUS_NETWORK_NOT_CONNECTED";
            case 8001:
                return "STATUS_ALREADY_ADVERTISING";
            case 8002:
                return "STATUS_ALREADY_DISCOVERING";
            case 8003:
                return "STATUS_ALREADY_CONNECTED_TO_ENDPOINT";
            case STATUS_CONNECTION_REJECTED /* 8004 */:
                return "STATUS_CONNECTION_REJECTED";
            case STATUS_NOT_CONNECTED_TO_ENDPOINT /* 8005 */:
                return "STATUS_NOT_CONNECTED_TO_ENDPOINT";
            case 8006:
            case 8014:
            case 8015:
            case 8016:
            case 8017:
            case 8018:
            case 8019:
            case 8020:
            case 8021:
            case 8022:
            case 8023:
            case 8024:
            case 8026:
            case 8027:
            case 8028:
            case 8029:
            case 8035:
            case 8036:
            case 8037:
            case 8038:
            case 8039:
            case 8043:
            case 8044:
            case 8045:
            case 8046:
            case 8047:
            case 8048:
            case 8049:
            default:
                return CommonStatusCodes.getStatusCodeString(i);
            case 8007:
                return "STATUS_BLUETOOTH_ERROR";
            case 8008:
                return "STATUS_ALREADY_HAVE_ACTIVE_STRATEGY";
            case STATUS_OUT_OF_ORDER_API_CALL /* 8009 */:
                return "STATUS_OUT_OF_ORDER_API_CALL";
            case 8010:
                return "STATUS_UNSUPPORTED_PAYLOAD_TYPE_FOR_STRATEGY";
            case 8011:
                return "STATUS_ENDPOINT_UNKNOWN";
            case 8012:
                return "STATUS_ENDPOINT_IO_ERROR";
            case 8013:
                return "STATUS_PAYLOAD_IO_ERROR";
            case 8025:
                return "MISSING_SETTING_LOCATION_MUST_BE_ON";
            case 8030:
                return "MISSING_PERMISSION_BLUETOOTH";
            case 8031:
                return "MISSING_PERMISSION_BLUETOOTH_ADMIN";
            case 8032:
                return "MISSING_PERMISSION_ACCESS_WIFI_STATE";
            case 8033:
                return "MISSING_PERMISSION_CHANGE_WIFI_STATE";
            case 8034:
                return "MISSING_PERMISSION_ACCESS_COARSE_LOCATION";
            case 8040:
                return "STOPPED_OPERATION_REASON_CLIENT_REQUEST";
            case 8041:
                return "STOPPED_OPERATION_REASON_TIMED_OUT";
            case 8042:
                return "STOPPED_OPERATION_REASON_ERROR";
            case 8050:
                return "API_CONNECTION_FAILED_ALREADY_IN_USE";
        }
    }
}
