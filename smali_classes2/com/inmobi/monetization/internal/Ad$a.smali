.class Lcom/inmobi/monetization/internal/Ad$a;
.super Landroid/os/Handler;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/monetization/internal/Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/internal/Ad;)V
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 562
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad$a;->a:Ljava/lang/ref/WeakReference;

    .line 563
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 567
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/Ad;

    .line 570
    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    sub-long/2addr v2, v4

    .line 578
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 580
    :try_start_0
    const-string v4, "t"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 581
    const-string v2, "m"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-static {v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->a(Lcom/inmobi/monetization/internal/Ad;Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 589
    iget-object v1, v0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v1, :cond_0

    .line 590
    iget-object v0, v0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    const-string v1, "[InMobi]-[Monetization]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating metric logs for error at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
