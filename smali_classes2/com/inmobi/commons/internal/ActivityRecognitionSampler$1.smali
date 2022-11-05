.class final Lcom/inmobi/commons/internal/ActivityRecognitionSampler$1;
.super Landroid/os/Handler;
.source "ActivityRecognitionSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/ActivityRecognitionSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->getDetectedActivity()I

    move-result v0

    .line 52
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 54
    sget-object v1, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getActivityDetectionMaxSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 56
    sget-object v1, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->d:Ljava/util/List;

    new-instance v2, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;-><init>(IJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->a()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
