.class public final Lcom/google/android/gms/cast/CastStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION_NOT_FOUND:I = 0x7d4

.field public static final APPLICATION_NOT_RUNNING:I = 0x7d5

.field public static final AUTHENTICATION_FAILED:I = 0x7d0

.field public static final CANCELED:I = 0x7d2

.field public static final ERROR_SERVICE_CREATION_FAILED:I = 0x898

.field public static final ERROR_SERVICE_DISCONNECTED:I = 0x899

.field public static final FAILED:I = 0x834

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_REQUEST:I = 0x7d1

.field public static final MESSAGE_SEND_BUFFER_TOO_FULL:I = 0x7d7

.field public static final MESSAGE_TOO_LARGE:I = 0x7d6

.field public static final NETWORK_ERROR:I = 0x7

.field public static final NOT_ALLOWED:I = 0x7d3

.field public static final REPLACED:I = 0x837

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xf

.field public static final UNKNOWN_ERROR:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    :sswitch_1
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :sswitch_2
    const-string v0, "TIMEOUT"

    goto :goto_0

    :sswitch_3
    const-string v0, "INTERRUPTED"

    goto :goto_0

    :sswitch_4
    const-string v0, "AUTHENTICATION_FAILED"

    goto :goto_0

    :sswitch_5
    const-string v0, "INVALID_REQUEST"

    goto :goto_0

    :sswitch_6
    const-string v0, "CANCELED"

    goto :goto_0

    :sswitch_7
    const-string v0, "NOT_ALLOWED"

    goto :goto_0

    :sswitch_8
    const-string v0, "APPLICATION_NOT_FOUND"

    goto :goto_0

    :sswitch_9
    const-string v0, "APPLICATION_NOT_RUNNING"

    goto :goto_0

    :sswitch_a
    const-string v0, "MESSAGE_TOO_LARGE"

    goto :goto_0

    :sswitch_b
    const-string v0, "MESSAGE_SEND_BUFFER_TOO_FULL"

    goto :goto_0

    :sswitch_c
    const-string v0, "FAILED"

    goto :goto_0

    :sswitch_d
    const-string v0, "REPLACED"

    goto :goto_0

    :sswitch_e
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :sswitch_f
    const-string v0, "UNKNOWN_ERROR"

    goto :goto_0

    :sswitch_10
    const-string v0, "ERROR_SERVICE_CREATION_FAILED"

    goto :goto_0

    :sswitch_11
    const-string v0, "ERROR_SERVICE_DISCONNECTED"

    goto :goto_0

    :sswitch_12
    const-string v0, "STATUS_TIMED_OUT"

    goto :goto_0

    :sswitch_13
    const-string v0, "STATUS_CANCELLED"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x7d0 -> :sswitch_4
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_7
        0x7d4 -> :sswitch_8
        0x7d5 -> :sswitch_9
        0x7d6 -> :sswitch_a
        0x7d7 -> :sswitch_b
        0x834 -> :sswitch_c
        0x835 -> :sswitch_13
        0x836 -> :sswitch_12
        0x837 -> :sswitch_d
        0x898 -> :sswitch_10
        0x899 -> :sswitch_11
    .end sparse-switch
.end method
