.class Lcom/intentsoftware/addapptr/h;
.super Ljava/lang/Object;
.source "AdProvider.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/e;


# instance fields
.field private configs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/intentsoftware/addapptr/e;

.field private loader:Lcom/intentsoftware/addapptr/d;

.field private pickedConfig:Lcom/intentsoftware/addapptr/b;

.field private final placementName:Ljava/lang/String;

.field private placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

.field private final size:Lcom/intentsoftware/addapptr/PlacementSize;

.field private final stats:Lcom/intentsoftware/addapptr/v;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/PlacementSize;Lcom/intentsoftware/addapptr/v;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/intentsoftware/addapptr/h;->stats:Lcom/intentsoftware/addapptr/v;

    .line 29
    iput-object p3, p0, Lcom/intentsoftware/addapptr/h;->placementName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/intentsoftware/addapptr/h;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 32
    new-instance v0, Lcom/intentsoftware/addapptr/d;

    invoke-direct {v0, p1}, Lcom/intentsoftware/addapptr/d;-><init>(Lcom/intentsoftware/addapptr/PlacementSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/d;->setListener(Lcom/intentsoftware/addapptr/e;)V

    .line 34
    return-void
.end method

.method private loadInternal(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->stats:Lcom/intentsoftware/addapptr/v;

    invoke-static {p1, v0}, Lcom/intentsoftware/addapptr/g;->pickAd(Ljava/util/ArrayList;Lcom/intentsoftware/addapptr/v;)Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/h;->placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/intentsoftware/addapptr/d;->requestAdLoad(Lcom/intentsoftware/addapptr/b;Lcom/intentsoftware/addapptr/c/k;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "Failed to load ad. Ad picker returned null."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/h;->onLoadingFinished()V

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    const-string v1, "ad picker returned null"

    invoke-interface {v0, v1}, Lcom/intentsoftware/addapptr/e;->onFailedToLoadAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized onLoadingFinished()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/d;->destroy()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    .line 131
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/util/ArrayList;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;",
            "Lcom/intentsoftware/addapptr/c/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/intentsoftware/addapptr/h;->placementTargetingInformation:Lcom/intentsoftware/addapptr/c/k;

    .line 38
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/h;->loadInternal(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    const/4 v0, 0x5

    :try_start_1
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "Ignoring reload request, ad is already loading."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v0, "LOGRESPONSE"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loaded successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/h;->onLoadingFinished()V

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    invoke-interface {v0, p1}, Lcom/intentsoftware/addapptr/e;->onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 108
    :cond_2
    return-void
.end method

.method public onAdRequested(Lcom/intentsoftware/addapptr/b;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "LOGREQUEST"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/intentsoftware/addapptr/b;->setLastTryTimestamp(J)V

    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    invoke-interface {v0, p1}, Lcom/intentsoftware/addapptr/e;->onAdRequested(Lcom/intentsoftware/addapptr/b;)V

    .line 92
    :cond_1
    return-void
.end method

.method public declared-synchronized onFailedToLoadAd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "LOGRESPONSE"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed to load"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/h;->pickedConfig:Lcom/intentsoftware/addapptr/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->configs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/h;->loadInternal(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/d;->onPause()V

    .line 79
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/h;->loader:Lcom/intentsoftware/addapptr/d;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/d;->onResume(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method public setListener(Lcom/intentsoftware/addapptr/e;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/intentsoftware/addapptr/h;->listener:Lcom/intentsoftware/addapptr/e;

    .line 126
    return-void
.end method
