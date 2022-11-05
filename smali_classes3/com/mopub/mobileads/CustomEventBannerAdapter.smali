.class public Lcom/mopub/mobileads/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private a:Z

.field private b:Lcom/mopub/mobileads/MoPubView;

.field private c:Landroid/content/Context;

.field private d:Lcom/mopub/mobileads/CustomEventBanner;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->g:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    .line 49
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->c:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->h:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to invoke custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->f:Ljava/util/Map;

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    const-string v1, "location"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    const-string v1, "broadcastIdentifier"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    const-string v1, "mopub-intent-ad-report"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    const-string v1, "com_mopub_ad_width"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    const-string v1, "com_mopub_ad_height"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->b(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 129
    :cond_0
    const/16 v0, 0x2710

    .line 132
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a:Z

    return v0
.end method

.method invalidate()V
    .locals 3
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->c:Landroid/content/Context;

    .line 111
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;

    .line 112
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    .line 113
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->f:Ljava/util/Map;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a:Z

    .line 115
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "Invalidating a custom event banner threw an exception"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method loadAd()V
    .locals 4
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->d:Lcom/mopub/mobileads/CustomEventBanner;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->f:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventBanner;->a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "Loading a custom event banner threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerClicked()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->b()V

    goto :goto_0
.end method

.method public onBannerCollapsed()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    iget-boolean v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->i:Z

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->f()V

    goto :goto_0
.end method

.method public onBannerExpanded()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAutorefreshEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->i:Z

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->e()V

    goto :goto_0
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 162
    if-nez p1, :cond_2

    .line 163
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b()V

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->b(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b()V

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->h()V

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 149
    instance-of v0, p1, Lcom/mopub/mobileads/HtmlBannerWebView;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->c()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerClicked()V

    .line 205
    return-void
.end method
