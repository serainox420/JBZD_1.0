.class public Lcom/intentsoftware/addapptr/w;
.super Ljava/lang/Object;
.source "PromoController.java"


# static fields
.field public static final PROMO_NAME:Ljava/lang/String; = "promo"

.field private static final PROMO_RELOAD_TIME:J = 0xea60L

.field private static final PROMO_SHOW_INTERVAL:I = 0x36ee80

.field private static final PROMO_TICK_TIME:J = 0x3e8L


# instance fields
.field private adJustShown:Z

.field private controller:Lcom/intentsoftware/addapptr/c;

.field private hasConfig:Z

.field private lastPromoShownTime:J

.field private needsReload:Z

.field private promoPlacementId:I

.field private promoTimer:Lcom/intentsoftware/addapptr/c/l;

.field private showPromo:Z


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    .line 19
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    .line 20
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/w;->hasConfig:Z

    .line 21
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/w;->needsReload:Z

    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/w;Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/w;->tickPromo(Z)V

    return-void
.end method

.method private loadPromo()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->promoPlacementExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    iget v1, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c;->hasAdForPlacement(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c;->getPlacements()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/s;->reload(Z)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "Failed to load promo, promo placement ID not valid!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private promoPlacementExists()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPromoInternal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    .line 106
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "Showing promo."

    invoke-static {p0, v2}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    iget v3, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    invoke-virtual {v2, v3}, Lcom/intentsoftware/addapptr/c;->showPlacement(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    .line 112
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/intentsoftware/addapptr/w;->lastPromoShownTime:J

    .line 116
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private tickPromo(Z)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    iget v1, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c;->hasAdForPlacement(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 81
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->loadPromo()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-nez p1, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->updateShowPromo()V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->promoPlacementExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->showPromoInternal()Z

    goto :goto_0
.end method

.method private updateShowPromo()V
    .locals 4

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 144
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/w;->lastPromoShownTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/w;->disablePromo()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/w;->lastPromoShownTime:J

    .line 167
    return-void
.end method

.method disablePromo()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "Promo disabled."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 76
    :cond_1
    return-void
.end method

.method enablePromo(Z)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 47
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "Promo enabled."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->promoPlacementExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/w;->preparePromo()I

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-nez v0, :cond_2

    .line 55
    new-instance v4, Lcom/intentsoftware/addapptr/w$1;

    invoke-direct {v4, p0, p1}, Lcom/intentsoftware/addapptr/w$1;-><init>(Lcom/intentsoftware/addapptr/w;Z)V

    .line 61
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    const-wide/16 v2, 0x3e8

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZ)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 64
    :cond_2
    iget v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    return v0
.end method

.method onActivityPause()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 158
    :cond_0
    return-void
.end method

.method onActivityResume()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->updateShowPromo()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    .line 139
    return-void
.end method

.method onAdLoaded()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 184
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 186
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 189
    :cond_0
    return-void
.end method

.method onAdShown()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->adJustShown:Z

    .line 179
    return-void
.end method

.method onConfigDownloaded()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->hasConfig:Z

    .line 171
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->promoTimer:Lcom/intentsoftware/addapptr/c/l;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->needsReload:Z

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->loadPromo()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->needsReload:Z

    .line 175
    :cond_1
    return-void
.end method

.method preparePromo()I
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Preparing promo."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->promoPlacementExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/w;->controller:Lcom/intentsoftware/addapptr/c;

    const-string v1, "promo"

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1, v2}, Lcom/intentsoftware/addapptr/c;->createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->hasConfig:Z

    if-eqz v0, :cond_2

    .line 38
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->loadPromo()V

    .line 42
    :goto_0
    iget v0, p0, Lcom/intentsoftware/addapptr/w;->promoPlacementId:I

    return v0

    .line 40
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->needsReload:Z

    goto :goto_0
.end method

.method showPromo(Z)Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->updateShowPromo()V

    .line 96
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/w;->showPromo:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/w;->showPromoInternal()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
