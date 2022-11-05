.class Lcom/intentsoftware/addapptr/d;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/ad/c;


# static fields
.field private static final TIMEOUT_BANNER_FAST_CONNECTION:J = 0x1770L

.field private static final TIMEOUT_BANNER_SLOW_CONNECTION:J = 0x1f40L

.field private static final TIMEOUT_INTERSTITIAL_FAST_CONNECTION:J = 0x4268L

.field private static final TIMEOUT_INTERSTITIAL_SLOW_CONNECTION:J = 0x7530L

.field private static final TIMEOUT_NATIVE_FAST_CONNECTION:J = 0x2328L

.field private static final TIMEOUT_NATIVE_SLOW_CONNECTION:J = 0x2ee0L


# instance fields
.field private activity:Landroid/app/Activity;

.field private final builder:Lcom/intentsoftware/addapptr/a;

.field private config:Lcom/intentsoftware/addapptr/b;

.field private listener:Lcom/intentsoftware/addapptr/e;

.field private loadingAd:Lcom/intentsoftware/addapptr/ad/a;

.field private placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

.field private final size:Lcom/intentsoftware/addapptr/PlacementSize;

.field private timer:Lcom/intentsoftware/addapptr/c/l;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/PlacementSize;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/intentsoftware/addapptr/d;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 40
    new-instance v0, Lcom/intentsoftware/addapptr/a;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/a;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->builder:Lcom/intentsoftware/addapptr/a;

    .line 43
    invoke-static {}, Lcom/intentsoftware/addapptr/c/e;->isUsingFastConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p1, v0, :cond_0

    .line 45
    const-wide/16 v2, 0x4268

    .line 61
    :goto_0
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->createTimeoutCallback()Ljava/lang/Runnable;

    move-result-object v4

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZ)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    .line 62
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p1, v0, :cond_1

    .line 47
    const-wide/16 v2, 0x2328

    goto :goto_0

    .line 49
    :cond_1
    const-wide/16 v2, 0x1770

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p1, v0, :cond_3

    .line 53
    const-wide/16 v2, 0x7530

    goto :goto_0

    .line 54
    :cond_3
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne p1, v0, :cond_4

    .line 55
    const-wide/16 v2, 0x2ee0

    goto :goto_0

    .line 57
    :cond_4
    const-wide/16 v2, 0x1f40

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/d;)Lcom/intentsoftware/addapptr/ad/a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/d;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->stopLoadingAd()V

    return-void
.end method

.method private createTimeoutCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/intentsoftware/addapptr/d$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/d$1;-><init>(Lcom/intentsoftware/addapptr/d;)V

    return-object v0
.end method

.method private isAdLoadRequested()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLoadingAd()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAdRequestFinished()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    .line 96
    return-void
.end method

.method private startLoadingAd(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->builder:Lcom/intentsoftware/addapptr/a;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v0, v2}, Lcom/intentsoftware/addapptr/a;->build(Lcom/intentsoftware/addapptr/b;)Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v0, v2}, Lcom/intentsoftware/addapptr/ad/a;->setConfig(Lcom/intentsoftware/addapptr/b;)V

    .line 134
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getNetworkWhitelistForTargeting()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getNetworkWhitelistForTargeting()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/k;->hasInformation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

    .line 142
    :goto_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :cond_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 147
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 148
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v2, p0}, Lcom/intentsoftware/addapptr/ad/a;->setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V

    .line 150
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-interface {v2, v3}, Lcom/intentsoftware/addapptr/e;->onAdRequested(Lcom/intentsoftware/addapptr/b;)V

    .line 154
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/b;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v2

    .line 155
    if-nez v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/PlacementSize;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v2

    .line 159
    :cond_3
    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    iget-object v4, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/b;->getAdId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v2, v0}, Lcom/intentsoftware/addapptr/ad/a;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :cond_4
    :goto_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {v5}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when instantiating ad for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/intentsoftware/addapptr/d;->onFailedToLoadAd(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_6
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGlobalTargetingInfo()Lcom/intentsoftware/addapptr/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/k;->hasInformation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGlobalTargetingInfo()Lcom/intentsoftware/addapptr/c/k;

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    invoke-static {v5}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :cond_7
    iget-object v2, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v2, v1}, Lcom/intentsoftware/addapptr/ad/a;->setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V

    .line 165
    iget-object v1, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/intentsoftware/addapptr/d;->onFailedToLoadAd(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :cond_8
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "Ad loading failed, activity has disappeared or is finishing!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private stopLoadingAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 177
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ad/a;->setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V

    .line 178
    iput-object v1, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 179
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ad/a;->setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V

    .line 232
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->unload()V

    .line 233
    iput-object v1, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 236
    iput-object v1, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    .line 237
    iput-object v1, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    .line 238
    return-void
.end method

.method public onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 184
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 186
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    invoke-interface {v0, p1}, Lcom/intentsoftware/addapptr/e;->onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->onAdRequestFinished()V

    .line 190
    return-void
.end method

.method public onFailedToLoadAd(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->loadingAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 195
    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->unload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 206
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->onAdRequestFinished()V

    .line 208
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    invoke-interface {v0, p2}, Lcom/intentsoftware/addapptr/e;->onFailedToLoadAd(Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when unloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/d;->activity:Landroid/app/Activity;

    .line 113
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->isLoadingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->stopLoadingAd()V

    .line 116
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/intentsoftware/addapptr/d;->activity:Landroid/app/Activity;

    .line 101
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->isAdLoadRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->isLoadingAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/d;->startLoadingAd(Landroid/app/Activity;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "Ad loading request after activity resume failed. Activity is null!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method requestAdLoad(Lcom/intentsoftware/addapptr/b;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 65
    if-nez p1, :cond_1

    .line 66
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "Ad load request failed - config is missing."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/d;->isAdLoadRequested()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iput-object p1, p0, Lcom/intentsoftware/addapptr/d;->config:Lcom/intentsoftware/addapptr/b;

    .line 74
    iput-object p2, p0, Lcom/intentsoftware/addapptr/d;->placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/d;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/d;->startLoadingAd(Landroid/app/Activity;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "Ad loading request failed. Activity is null!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Ad loading request ignored. Ad is already loading."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/intentsoftware/addapptr/e;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/intentsoftware/addapptr/d;->listener:Lcom/intentsoftware/addapptr/e;

    .line 227
    return-void
.end method
