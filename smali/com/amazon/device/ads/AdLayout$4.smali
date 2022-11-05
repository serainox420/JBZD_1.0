.class synthetic Lcom/amazon/device/ads/AdLayout$4;
.super Ljava/lang/Object;
.source "AdLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

.field static final synthetic $SwitchMap$com$amazon$device$ads$AdState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1490
    invoke-static {}, Lcom/amazon/device/ads/AdEvent$AdEventType;->values()[Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->EXPANDED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLOSED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 735
    :goto_2
    invoke-static {}, Lcom/amazon/device/ads/AdState;->values()[Lcom/amazon/device/ads/AdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    :try_start_3
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    sget-object v1, Lcom/amazon/device/ads/AdState;->INVALID:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    sget-object v1, Lcom/amazon/device/ads/AdState;->DESTROYED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 1490
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
