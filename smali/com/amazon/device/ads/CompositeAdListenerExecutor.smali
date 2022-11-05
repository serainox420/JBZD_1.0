.class Lcom/amazon/device/ads/CompositeAdListenerExecutor;
.super Lcom/amazon/device/ads/AdListenerExecutor;
.source "CompositeAdListenerExecutor.java"


# instance fields
.field private final adListenerExecutors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/AdListenerExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->adListenerExecutors:Ljava/util/List;

    .line 22
    return-void
.end method

.method private getAdListenerExecutors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/AdListenerExecutor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->adListenerExecutors:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addAdListenerExecutor(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->adListenerExecutors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 62
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdCollapsed(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 70
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdDismissed(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 110
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 54
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpanded(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 86
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/amazon/device/ads/CompositeAdListenerExecutor;->getAdListenerExecutors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdListenerExecutor;

    .line 93
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method
