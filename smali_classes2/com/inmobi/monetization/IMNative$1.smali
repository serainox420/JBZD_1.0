.class Lcom/inmobi/monetization/IMNative$1;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Lcom/inmobi/monetization/internal/IMAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/IMNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInteraction(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/NativeAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/monetization/IMNative$1$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/IMNative$1$1;-><init>(Lcom/inmobi/monetization/IMNative$1;Lcom/inmobi/monetization/internal/AdErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdRequestSucceeded()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/NativeAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAd;->getNativeAdObject()Lcom/inmobi/monetization/internal/NativeAdObject;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdObject;->getPubContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdObject;->getContextCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/monetization/IMNative;->b(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdObject;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/monetization/IMNative;->c(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/NativeAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/monetization/IMNative$1$2;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMNative$1$2;-><init>(Lcom/inmobi/monetization/IMNative$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDismissAdScreen()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onIncentCompleted(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onShowAdScreen()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
