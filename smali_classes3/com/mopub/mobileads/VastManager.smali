.class public Lcom/mopub/mobileads/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VastXmlManagerAggregator$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastManager$VastManagerListener;
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

.field private b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->a(Landroid/content/Context;)V

    .line 50
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastManager;->f:Z

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 152
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 160
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 167
    int-to-double v4, v3

    int-to-double v6, v1

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/mopub/mobileads/VastManager;->d:D

    .line 168
    int-to-float v2, v3

    div-float/2addr v2, v0

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mopub/mobileads/VastManager;->e:I

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->a(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v0}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->cancel(Z)Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 90
    :cond_0
    return-void
.end method

.method public onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 128
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDspCreativeId(Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastManager;->f:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->a(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 115
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/VastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/VastManager$1;-><init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 127
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mopub/mobileads/VideoDownloader;->cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$a;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 64
    const-string v0, "vastManagerListener cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-string v0, "context cannot be null"

    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 68
    iput-object p2, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 69
    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastManager;->d:D

    iget v4, p0, Lcom/mopub/mobileads/VastManager;->e:I

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$b;DILandroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 71
    iput-object p3, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "Failed to aggregate vast xml"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0
.end method
