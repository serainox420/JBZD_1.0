.class public final Lcom/google/android/gms/internal/zzadj;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# direct methods
.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NOT_AUTHORIZED_TO_FETCH"

    goto :goto_0

    :sswitch_1
    const-string v0, "ANOTHER_FETCH_INFLIGHT"

    goto :goto_0

    :sswitch_2
    const-string v0, "FETCH_THROTTLED"

    goto :goto_0

    :sswitch_3
    const-string v0, "NOT_AVAILABLE"

    goto :goto_0

    :sswitch_4
    const-string v0, "FAILURE_CACHE"

    goto :goto_0

    :sswitch_5
    const-string v0, "SUCCESS_FRESH"

    goto :goto_0

    :sswitch_6
    const-string v0, "SUCCESS_CACHE"

    goto :goto_0

    :sswitch_7
    const-string v0, "FETCH_THROTTLED_STALE"

    goto :goto_0

    :sswitch_8
    const-string v0, "SUCCESS_CACHE_STALE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x196c -> :sswitch_8
        -0x196a -> :sswitch_6
        -0x1969 -> :sswitch_5
        0x1964 -> :sswitch_0
        0x1965 -> :sswitch_1
        0x1966 -> :sswitch_2
        0x1967 -> :sswitch_3
        0x1968 -> :sswitch_4
        0x196b -> :sswitch_7
    .end sparse-switch
.end method
