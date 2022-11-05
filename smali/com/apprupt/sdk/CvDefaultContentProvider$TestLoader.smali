.class Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;
.super Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;
.source "CvDefaultContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestLoader"
.end annotation


# instance fields
.field private a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

.field private g:Z


# direct methods
.method static synthetic a(Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->a(Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    const-string v1, "/AdsAvailable/a/%s/sdk/%s/fm/%s/piKey/%s/c/%s/k/%s/v/1/?nc=%d%s"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "6"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->b:Landroid/content/Context;

    .line 235
    invoke-static {v3}, Lcom/apprupt/sdk/CvFeaturesList;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 236
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "&interstitial=1"

    :goto_0
    aput-object v0, v2, v3

    .line 231
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Lcom/apprupt/sdk/CvPreloaderResponse;

    invoke-direct {v0, p1, p3}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    .line 257
    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    .line 258
    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->d:Landroid/os/Handler;

    new-instance v3, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$1;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->g:Z

    .line 251
    return v1

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apprupt/sdk/CvPreloaderResponse;

    invoke-direct {v0}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>()V

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    .line 270
    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->d:Landroid/os/Handler;

    new-instance v3, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void

    .line 268
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/CvPreloaderResponse;

    const-string v1, "Ad space is empty"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method
