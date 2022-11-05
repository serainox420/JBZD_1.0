.class Lcom/intentsoftware/addapptr/q;
.super Lcom/intentsoftware/addapptr/s;
.source "NativePlacement.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/q$a;
    }
.end annotation


# static fields
.field private static final MAX_PARALLEL_DOWNLOADS:I = 0xa

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final SHARED_PREFERENCES_PREFIX:Ljava/lang/String; = "aatkit_native_placement_"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final adLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/h;",
            ">;"
        }
    .end annotation
.end field

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

.field private final emptyConfigAdFailRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private impressionsDuringSession:I

.field private lastShownAdName:Ljava/lang/String;

.field private final nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/intentsoftware/addapptr/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private timeWhenPaused:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intentsoftware/addapptr/s;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;Z)V

    .line 32
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->displays:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/q;->initDisplaysList()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->handler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/q;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    return-object v0
.end method

.method private countImpressions(I)I
    .locals 8

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 100
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 101
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->displays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 102
    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    .line 103
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getAdLoader()Lcom/intentsoftware/addapptr/h;
    .locals 4

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/h;

    .line 244
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 250
    new-instance v0, Lcom/intentsoftware/addapptr/h;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v2

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/h;-><init>(Lcom/intentsoftware/addapptr/PlacementSize;Lcom/intentsoftware/addapptr/v;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/h;->onResume(Landroid/app/Activity;)V

    .line 252
    invoke-virtual {v0, p0}, Lcom/intentsoftware/addapptr/h;->setListener(Lcom/intentsoftware/addapptr/e;)V

    .line 253
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private initDisplaysList()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aatkit_native_placement_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/j;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_0

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 126
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 127
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 128
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    .line 129
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 130
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    .line 132
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/intentsoftware/addapptr/q;->displays:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
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

    .line 138
    :cond_2
    return-void
.end method

.method private postOnNoConfigFailTimeoutAction()V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/intentsoftware/addapptr/q$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/q$1;-><init>(Lcom/intentsoftware/addapptr/q;)V

    .line 267
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method


# virtual methods
.method public configsFinishedDownloading()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->configsFinishedDownloading()V

    .line 277
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 278
    iget-object v4, p0, Lcom/intentsoftware/addapptr/q;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 280
    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    :goto_1
    if-ge v2, v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->reloadInternal()Z

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->destroy()V

    .line 369
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 370
    iget-object v2, p0, Lcom/intentsoftware/addapptr/q;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/h;

    .line 374
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->destroy()V

    goto :goto_1

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    return-void
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method

.method public getLastShownAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->lastShownAdName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/q$a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q$a;->getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;

    move-result-object v0

    goto :goto_0
.end method

.method getLoadedAdNames()Ljava/lang/String;
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    const-string v2, ""

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    new-array v1, v1, [Lcom/intentsoftware/addapptr/q$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/q$a;

    .line 182
    array-length v4, v0

    const/4 v1, 0x0

    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/q$a;->getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 182
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 198
    :goto_1
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when reading list of loaded ad names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :cond_2
    const-string v0, "Error accessing list"

    goto :goto_1

    .line 198
    :cond_3
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->getLoadedAdNames()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getNativeAd()Lcom/intentsoftware/addapptr/ad/d;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/q$a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q$a;->getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intentsoftware/addapptr/q;->lastShownAdName:Ljava/lang/String;

    goto :goto_0
.end method

.method getNumberOfCurrentlyLoadingNativeAds()I
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/h;

    .line 75
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->emptyConfigAdFailRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 81
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected handleAdClick(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->handlePauseForAd()V

    .line 155
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/v;->reportClick(Lcom/intentsoftware/addapptr/b;)V

    .line 156
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting click for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 3

    .prologue
    .line 142
    instance-of v0, p1, Lcom/intentsoftware/addapptr/ad/NativeAd;

    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v2, Lcom/intentsoftware/addapptr/q$a;

    move-object v0, p1

    check-cast v0, Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-direct {v2, p0, v0}, Lcom/intentsoftware/addapptr/q$a;-><init>(Lcom/intentsoftware/addapptr/q;Lcom/intentsoftware/addapptr/ad/NativeAd;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 150
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "returned ad is not an instance of native ad!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 4

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdShown(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 333
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/q;->handleImpression(Lcom/intentsoftware/addapptr/b;)V

    .line 334
    iget v0, p0, Lcom/intentsoftware/addapptr/q;->impressionsDuringSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/q;->impressionsDuringSession:I

    .line 335
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->displays:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method isFrequencyCapReached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerSession:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/intentsoftware/addapptr/q;->impressionsDuringSession:I

    iget v2, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerSession:I

    if-lt v1, v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget v1, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerHour:I

    if-eqz v1, :cond_2

    const v1, 0x36ee80

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/q;->countImpressions(I)I

    move-result v1

    iget v2, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerHour:I

    if-ge v1, v2, :cond_0

    .line 89
    :cond_2
    iget v1, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerDay:I

    if-eqz v1, :cond_3

    const v1, 0x5265c00

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/q;->countImpressions(I)I

    move-result v1

    iget v2, p0, Lcom/intentsoftware/addapptr/q;->maxImpressionsPerDay:I

    if-ge v1, v2, :cond_0

    .line 91
    :cond_3
    iget v1, p0, Lcom/intentsoftware/addapptr/q;->minTimeBetweenImpressions:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/intentsoftware/addapptr/q;->minTimeBetweenImpressions:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/q;->countImpressions(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/v;->reportResponse(Lcom/intentsoftware/addapptr/b;)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/q;->handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 359
    return-void
.end method

.method public onAdRequested(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/v;->reportRequest(Lcom/intentsoftware/addapptr/b;)V

    .line 342
    return-void
.end method

.method onAdspace()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->reportAdSpace()V

    .line 111
    return-void
.end method

.method public onFailedToLoadAd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "No Content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 349
    :cond_0
    const-string v0, "TRIGNOTHINGTOSHOW"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-string v0, "nothingToShow"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->handleAdLoadFail()V

    .line 353
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/h;

    .line 292
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->onPause()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/q$a;

    .line 296
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q$a;->getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->pause()V

    goto :goto_1

    .line 298
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/q;->timeWhenPaused:Ljava/util/Date;

    .line 299
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->displays:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aatkit_native_placement_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/c/j;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->adLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/h;

    .line 306
    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/h;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/intentsoftware/addapptr/q;->activity:Landroid/app/Activity;

    .line 309
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q;->nativeAdsQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/q$a;

    .line 310
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/q$a;->getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/ad/NativeAd;->resume(Landroid/app/Activity;)V

    goto :goto_1

    .line 313
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/intentsoftware/addapptr/q;->timeWhenPaused:Ljava/util/Date;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/q;->timeWhenPaused:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/intentsoftware/addapptr/q;->impressionsDuringSession:I

    .line 318
    :cond_2
    return-void
.end method

.method public reload(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getNumberOfCurrentlyLoadingNativeAds()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 205
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "Cannot reload native placement- too many ads are already loading"

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, v0}, Lcom/intentsoftware/addapptr/s;->reload(Z)Z

    move-result v0

    goto :goto_0
.end method

.method reloadInternal()Z
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading ad for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :cond_0
    const-string v0, "LOGLOAD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadAd called for placement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/q;->getAdLoader()Lcom/intentsoftware/addapptr/h;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/q;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/intentsoftware/addapptr/h;->load(Ljava/util/ArrayList;Lcom/intentsoftware/addapptr/c/k;)V

    .line 238
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to prepare ad loader for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_4
    const-string v0, "LOGLOAD"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadAd called for placement without rules available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/q;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 236
    :cond_5
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/q;->postOnNoConfigFailTimeoutAction()V

    goto :goto_0
.end method
