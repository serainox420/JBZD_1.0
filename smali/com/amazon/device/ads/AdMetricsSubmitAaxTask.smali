.class Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;
.super Landroid/os/AsyncTask;
.source "AdMetricsTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdMetricsSubmitAaxTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/device/ads/WebRequest;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->doInBackground([Lcom/amazon/device/ads/WebRequest;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Lcom/amazon/device/ads/WebRequest;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 25
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 29
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    .line 36
    sget-object v4, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask$1;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 39
    :pswitch_0
    iget-object v4, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :pswitch_1
    iget-object v4, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to submit metrics for ad due to Network Failure, msg: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :pswitch_2
    iget-object v4, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :pswitch_3
    iget-object v4, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
