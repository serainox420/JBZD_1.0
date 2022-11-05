.class public final Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final STATUS_ALREADY_ADVERTISING:I = 0x1f41

.field public static final STATUS_ALREADY_CONNECTED_TO_ENDPOINT:I = 0x1f43

.field public static final STATUS_ALREADY_DISCOVERING:I = 0x1f42

.field public static final STATUS_CONNECTION_REJECTED:I = 0x1f44

.field public static final STATUS_ERROR:I = 0xd

.field public static final STATUS_NETWORK_NOT_CONNECTED:I = 0x1f40

.field public static final STATUS_NOT_CONNECTED_TO_ENDPOINT:I = 0x1f45

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OUT_OF_ORDER_API_CALL:I = 0x1f49


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "STATUS_NETWORK_NOT_CONNECTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATUS_ALREADY_ADVERTISING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATUS_ALREADY_DISCOVERING"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATUS_ALREADY_CONNECTED_TO_ENDPOINT"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATUS_CONNECTION_REJECTED"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATUS_NOT_CONNECTED_TO_ENDPOINT"

    goto :goto_0

    :pswitch_7
    const-string v0, "STATUS_BLUETOOTH_ERROR"

    goto :goto_0

    :pswitch_8
    const-string v0, "STATUS_ALREADY_HAVE_ACTIVE_STRATEGY"

    goto :goto_0

    :pswitch_9
    const-string v0, "STATUS_OUT_OF_ORDER_API_CALL"

    goto :goto_0

    :pswitch_a
    const-string v0, "STATUS_UNSUPPORTED_PAYLOAD_TYPE_FOR_STRATEGY"

    goto :goto_0

    :pswitch_b
    const-string v0, "STATUS_ENDPOINT_UNKNOWN"

    goto :goto_0

    :pswitch_c
    const-string v0, "STATUS_ENDPOINT_IO_ERROR"

    goto :goto_0

    :pswitch_d
    const-string v0, "STATUS_PAYLOAD_IO_ERROR"

    goto :goto_0

    :pswitch_e
    const-string v0, "MISSING_SETTING_LOCATION_MUST_BE_ON"

    goto :goto_0

    :pswitch_f
    const-string v0, "MISSING_PERMISSION_BLUETOOTH"

    goto :goto_0

    :pswitch_10
    const-string v0, "MISSING_PERMISSION_BLUETOOTH_ADMIN"

    goto :goto_0

    :pswitch_11
    const-string v0, "MISSING_PERMISSION_ACCESS_WIFI_STATE"

    goto :goto_0

    :pswitch_12
    const-string v0, "MISSING_PERMISSION_CHANGE_WIFI_STATE"

    goto :goto_0

    :pswitch_13
    const-string v0, "MISSING_PERMISSION_ACCESS_COARSE_LOCATION"

    goto :goto_0

    :pswitch_14
    const-string v0, "STOPPED_OPERATION_REASON_CLIENT_REQUEST"

    goto :goto_0

    :pswitch_15
    const-string v0, "STOPPED_OPERATION_REASON_TIMED_OUT"

    goto :goto_0

    :pswitch_16
    const-string v0, "STOPPED_OPERATION_REASON_ERROR"

    goto :goto_0

    :pswitch_17
    const-string v0, "API_CONNECTION_FAILED_ALREADY_IN_USE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
    .end packed-switch
.end method
