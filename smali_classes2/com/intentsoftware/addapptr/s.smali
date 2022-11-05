.class abstract Lcom/intentsoftware/addapptr/s;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field static final EMPTY_CONFIG_TIMEOUT:J = 0x2710L


# instance fields
.field acceptsGeneralRules:Z

.field private final configs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/u;",
            ">;"
        }
    .end annotation
.end field

.field private loadedAd:Lcom/intentsoftware/addapptr/ad/a;

.field loader:Lcom/intentsoftware/addapptr/h;

.field maxImpressionsPerDay:I

.field maxImpressionsPerHour:I

.field maxImpressionsPerSession:I

.field minTimeBetweenImpressions:I

.field private final name:Ljava/lang/String;

.field private final newDownloadedConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/intentsoftware/addapptr/PlacementSize;

.field private final stats:Lcom/intentsoftware/addapptr/v;

.field protected final targetingInformation:Lcom/intentsoftware/addapptr/c/k;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intentsoftware/addapptr/s;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;Z)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/intentsoftware/addapptr/c/k;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/c/k;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/s;->acceptsGeneralRules:Z

    .line 55
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 58
    new-instance v0, Lcom/intentsoftware/addapptr/v;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/v;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->stats:Lcom/intentsoftware/addapptr/v;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    .line 63
    if-eqz p4, :cond_0

    .line 64
    new-instance v0, Lcom/intentsoftware/addapptr/h;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->stats:Lcom/intentsoftware/addapptr/v;

    invoke-direct {v0, p2, v1, p1}, Lcom/intentsoftware/addapptr/h;-><init>(Lcom/intentsoftware/addapptr/PlacementSize;Lcom/intentsoftware/addapptr/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    .line 65
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->createAdLoaderListener()Lcom/intentsoftware/addapptr/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/h;->setListener(Lcom/intentsoftware/addapptr/e;)V

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/intentsoftware/addapptr/s;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    .line 71
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    const-wide/16 v2, 0x2710

    new-instance v4, Lcom/intentsoftware/addapptr/s$1;

    invoke-direct {v4, p0}, Lcom/intentsoftware/addapptr/s$1;-><init>(Lcom/intentsoftware/addapptr/s;)V

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZ)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->handleEmptyAdShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->handleIncentiveEarned()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->fallbackHandleDismiss()V

    return-void
.end method

.method private createAdInteractionListener()Lcom/intentsoftware/addapptr/ad/b;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/intentsoftware/addapptr/s$3;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/s$3;-><init>(Lcom/intentsoftware/addapptr/s;)V

    return-object v0
.end method

.method private createAdLoaderListener()Lcom/intentsoftware/addapptr/e;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/intentsoftware/addapptr/s$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/s$2;-><init>(Lcom/intentsoftware/addapptr/s;)V

    return-object v0
.end method

.method private createFallbackDismissListener()Lcom/intentsoftware/addapptr/n;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/intentsoftware/addapptr/s$4;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/s$4;-><init>(Lcom/intentsoftware/addapptr/s;)V

    return-object v0
.end method

.method private fallbackHandleDismiss()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 229
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->fallbackOnResumeFromAd(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method private handleEmptyAdShow()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 223
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->onEmptyAdShown(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private handleIncentiveEarned()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 235
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->onUserEarnedIncentive(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method addConfig(Lcom/intentsoftware/addapptr/b;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/PlacementSize;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addListener(Lcom/intentsoftware/addapptr/u;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method clearLoadedAd()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->unload()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 178
    return-void
.end method

.method public configsFinishedDownloading()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 361
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 367
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->isAutoreloaderActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->reloadInternal()Z

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->reset()V

    .line 372
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->stopPlacementAutoReload()V

    .line 416
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->destroy()V

    .line 419
    iput-object v1, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->unload()V

    .line 423
    iput-object v1, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->newDownloadedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 430
    iput-object v1, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 431
    return-void
.end method

.method public abstract getAdType()Lcom/intentsoftware/addapptr/AdType;
.end method

.method getConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLastShownAdName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastShownAdName() method is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    return-object v0
.end method

.method getLoadedAdNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "None"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAd()Lcom/intentsoftware/addapptr/ad/d;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "getNativeAd method can only be called for Native placement type!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlacementView()Landroid/view/View;
    .locals 2

    .prologue
    .line 395
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlacementView() method is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()Lcom/intentsoftware/addapptr/PlacementSize;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    return-object v0
.end method

.method getStats()Lcom/intentsoftware/addapptr/v;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->stats:Lcom/intentsoftware/addapptr/v;

    return-object v0
.end method

.method handleAdClick(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting click for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/v;->reportClick(Lcom/intentsoftware/addapptr/b;)V

    .line 210
    return-void
.end method

.method handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 182
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->createAdInteractionListener()Lcom/intentsoftware/addapptr/ad/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ad/a;->setInteractionListener(Lcom/intentsoftware/addapptr/ad/b;)V

    .line 183
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/s;->createFallbackDismissListener()Lcom/intentsoftware/addapptr/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ad/a;->setFallbackDismissListener(Lcom/intentsoftware/addapptr/n;)V

    .line 184
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 185
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->onPlacementAdLoad(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method handleAdLoadFail()V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load Ad for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 194
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->onPlacementAdLoadFail(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method handleImpression(Lcom/intentsoftware/addapptr/b;)V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting impression for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/v;->reportImpression(Lcom/intentsoftware/addapptr/b;)V

    .line 203
    return-void
.end method

.method handlePauseForAd()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 217
    invoke-interface {v0, p0}, Lcom/intentsoftware/addapptr/u;->onPauseForAd(Lcom/intentsoftware/addapptr/s;)V

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public isAutoreloaderActive()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigDownloaded(Lcom/intentsoftware/addapptr/t;)V
    .locals 1

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->getMaxImpressionsPerSession()I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/s;->maxImpressionsPerSession:I

    .line 351
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->getMaxImpressionsPerDay()I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/s;->maxImpressionsPerDay:I

    .line 352
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->getMaxImpressionsPerHour()I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/s;->maxImpressionsPerHour:I

    .line 353
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->getMinTimeBetweenImpressions()I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/s;->minTimeBetweenImpressions:I

    .line 354
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->acceptsGeneralRules()Z

    move-result v0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/s;->acceptsGeneralRules:Z

    .line 357
    :cond_0
    return-void
.end method

.method onNoConfigTimeoutAction()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load ad, config for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is empty!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :cond_0
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rules Not Valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 137
    :cond_1
    const-string v0, "TRIGNOTHINGTOSHOW"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "nothingToShow"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->handleAdLoadFail()V

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->pause()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->onPause()V

    .line 388
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/ad/a;->resume(Landroid/app/Activity;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/h;->onResume(Landroid/app/Activity;)V

    .line 380
    return-void
.end method

.method public reload(Z)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->isAutoreloaderActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->reloadInternal()Z

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "Can\'t reload placement while autoreloading is enabled."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reloadInternal()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading ad for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    :cond_0
    const-string v0, "LOGLOAD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadAd called for placement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->loader:Lcom/intentsoftware/addapptr/h;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->configs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/s;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/intentsoftware/addapptr/h;->load(Ljava/util/ArrayList;Lcom/intentsoftware/addapptr/c/k;)V

    .line 127
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_2
    const-string v0, "LOGLOAD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadAd called for placement without rules available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->emptyConfigAdFailReportTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    goto :goto_0
.end method

.method reportAdSpace()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting adspace for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/v;->reportAdspace()V

    .line 109
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default image is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public setDefaultImageResource(I)V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default image is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "setGravity() method can only be called for banner placements."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public setPlacementAutoreloadInterval(I)V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlacementAutoreloadInterval() method is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setTargetingInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/c/k;->setMap(Ljava/util/Map;)V

    .line 436
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show() method is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startPlacementAutoReload()V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autoreloading is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method

.method public stopPlacementAutoReload()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autoreloading is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s;->size:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method
