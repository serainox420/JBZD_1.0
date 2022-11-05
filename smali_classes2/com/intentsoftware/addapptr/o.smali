.class Lcom/intentsoftware/addapptr/o;
.super Lcom/intentsoftware/addapptr/s;
.source "FullscreenPlacement.java"


# static fields
.field private static final MIN_TIME_BETWEEN_UNFILLED_ADSPACES:I = 0x2710

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final RELOAD_DELAY_EXTRA_MARGIN:I = 0x1f4

.field private static final RELOAD_INTERVAL_ON_LOAD_FAIL:I = 0xfa0

.field private static final SHARED_PREFERENCES_PREFIX:Ljava/lang/String; = "aatkit_placement_"


# instance fields
.field private autoreloaderActive:Z

.field private final displays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private exceededImpressionCap:Z

.field private final handler:Landroid/os/Handler;

.field private impressionsDuringSession:I

.field private lastShownAdName:Ljava/lang/String;

.field private lastUnfilledAdspaceTime:J

.field private reloadAfterCapDelay:J

.field private final reloadRunnable:Ljava/lang/Runnable;

.field private shouldClearAd:Z

.field private shouldCountNextAdspace:Z

.field private timeWhenPaused:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/intentsoftware/addapptr/s;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/o;->displays:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->shouldCountNextAdspace:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/intentsoftware/addapptr/o$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/o$1;-><init>(Lcom/intentsoftware/addapptr/o;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    .line 56
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/o;->initDisplaysList()V

    .line 57
    return-void
.end method

.method private countImpressions(I)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    iput-wide v10, p0, Lcom/intentsoftware/addapptr/o;->reloadAfterCapDelay:J

    .line 286
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 287
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 289
    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->displays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 290
    cmp-long v0, v6, v2

    if-ltz v0, :cond_2

    .line 291
    add-int/lit8 v0, v1, 0x1

    .line 292
    iget-wide v8, p0, Lcom/intentsoftware/addapptr/o;->reloadAfterCapDelay:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    .line 293
    sub-long/2addr v6, v2

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/intentsoftware/addapptr/o;->reloadAfterCapDelay:J

    :cond_0
    :goto_1
    move v1, v0

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private exceededImpressionCap(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap:Z

    .line 267
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->clearLoadedAd()V

    .line 268
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load ad. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :cond_0
    if-eqz p2, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/o;->reloadAfterExceedingImpressionCap()V

    .line 274
    :cond_1
    return-void
.end method

.method private initDisplaysList()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aatkit_placement_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/j;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_0

    .line 306
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 313
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 314
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 315
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    .line 316
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 317
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    .line 319
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/intentsoftware/addapptr/o;->displays:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading JSON array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    return-void
.end method

.method private reloadAfterExceedingImpressionCap()V
    .locals 4

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/o;->reloadAfterCapDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/o;->reloadAfterCapDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method clearLoadedAd()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->clearLoadedAd()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->shouldClearAd:Z

    .line 162
    return-void
.end method

.method public configsFinishedDownloading()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->configsFinishedDownloading()V

    .line 227
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->reloadInternal()Z

    .line 230
    :cond_0
    return-void
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method

.method public getLastShownAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->lastShownAdName:Ljava/lang/String;

    return-object v0
.end method

.method protected handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->unload()V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 214
    return-void
.end method

.method protected handleAdLoadFail()V
    .locals 4

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->handleAdLoadFail()V

    .line 222
    return-void
.end method

.method protected handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 201
    iget v0, p0, Lcom/intentsoftware/addapptr/o;->impressionsDuringSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/o;->impressionsDuringSession:I

    .line 203
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/o;->lastShownAdName:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->handlePauseForAd()V

    .line 205
    return-void
.end method

.method public isAutoreloaderActive()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->onPause()V

    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/o;->timeWhenPaused:Ljava/util/Date;

    .line 192
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->displays:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aatkit_placement_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/c/j;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->shouldClearAd:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/ad/a;->resume(Landroid/app/Activity;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->clearLoadedAd()V

    .line 174
    :cond_1
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->onResume(Landroid/app/Activity;)V

    .line 175
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->timeWhenPaused:Ljava/util/Date;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/o;->timeWhenPaused:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/intentsoftware/addapptr/o;->impressionsDuringSession:I

    .line 182
    :cond_2
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->reloadInternal()Z

    .line 186
    :cond_3
    return-void
.end method

.method reloadInternal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 234
    iget v1, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerSession:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/intentsoftware/addapptr/o;->impressionsDuringSession:I

    iget v2, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerSession:I

    if-lt v1, v2, :cond_1

    .line 235
    const-string v1, "LOGNTS"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTS: nothingToShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Session Cap Reached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 238
    :cond_0
    const-string v1, "Reached session cap"

    invoke-direct {p0, v1, v0}, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap(Ljava/lang/String;Z)V

    .line 260
    :goto_0
    return v0

    .line 240
    :cond_1
    iget v1, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerHour:I

    if-eqz v1, :cond_3

    const v1, 0x36ee80

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/o;->countImpressions(I)I

    move-result v1

    iget v2, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerHour:I

    if-lt v1, v2, :cond_3

    .line 241
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hourly Cap Reached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 244
    :cond_2
    const-string v0, "Reached hourly cap"

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    invoke-direct {p0, v0, v1}, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap(Ljava/lang/String;Z)V

    .line 245
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    goto :goto_0

    .line 246
    :cond_3
    iget v1, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerDay:I

    if-eqz v1, :cond_5

    const v1, 0x5265c00

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/o;->countImpressions(I)I

    move-result v1

    iget v2, p0, Lcom/intentsoftware/addapptr/o;->maxImpressionsPerDay:I

    if-lt v1, v2, :cond_5

    .line 247
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Daily Cap Reached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 250
    :cond_4
    const-string v0, "Reached daily cap"

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    invoke-direct {p0, v0, v1}, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap(Ljava/lang/String;Z)V

    .line 251
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    goto/16 :goto_0

    .line 252
    :cond_5
    iget v1, p0, Lcom/intentsoftware/addapptr/o;->minTimeBetweenImpressions:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/intentsoftware/addapptr/o;->minTimeBetweenImpressions:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/o;->countImpressions(I)I

    move-result v1

    if-lez v1, :cond_7

    .line 253
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Minimum Seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 256
    :cond_6
    const-string v0, "Minimum time between impressions not reached"

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    invoke-direct {p0, v0, v1}, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap(Ljava/lang/String;Z)V

    .line 257
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    goto/16 :goto_0

    .line 259
    :cond_7
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap:Z

    .line 260
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->reloadInternal()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public show()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 99
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "Show called on placement without valid config!"

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 107
    iget-boolean v2, p0, Lcom/intentsoftware/addapptr/o;->exceededImpressionCap:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v2

    if-nez v2, :cond_2

    .line 108
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "Show called on placement that exceeded impression cap!"

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-boolean v2, p0, Lcom/intentsoftware/addapptr/o;->shouldCountNextAdspace:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/intentsoftware/addapptr/o;->lastUnfilledAdspaceTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 121
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/o;->handleImpression(Lcom/intentsoftware/addapptr/b;)V

    .line 122
    iput-boolean v7, p0, Lcom/intentsoftware/addapptr/o;->shouldCountNextAdspace:Z

    .line 123
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/ad/FullscreenAd;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->show()Z

    move-result v0

    .line 125
    iput-boolean v7, p0, Lcom/intentsoftware/addapptr/o;->shouldClearAd:Z

    .line 127
    if-eqz v0, :cond_4

    .line 128
    iget-object v2, p0, Lcom/intentsoftware/addapptr/o;->displays:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->reportAdSpace()V

    goto :goto_1

    .line 130
    :cond_4
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to show ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->clearLoadedAd()V

    .line 136
    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->reloadInternal()Z

    goto/16 :goto_0

    .line 143
    :cond_6
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->shouldCountNextAdspace:Z

    .line 144
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/intentsoftware/addapptr/o;->lastUnfilledAdspaceTime:J

    .line 145
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "Show called on placement without ad loaded!"

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startPlacementAutoReload()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-nez v0, :cond_1

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    .line 68
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/o;->reloadInternal()Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Can\'t start autoreloading - it is already started."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlacementAutoReload()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/o;->autoreloaderActive:Z

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/o;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Can\'t stop autoreloading - it is already stopped."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
