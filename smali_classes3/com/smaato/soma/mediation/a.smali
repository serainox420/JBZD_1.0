.class public Lcom/smaato/soma/mediation/a;
.super Lcom/smaato/soma/mediation/f;
.source "FacebookMediationBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/AdView;

.field private b:Lcom/smaato/soma/mediation/f$a;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/f;-><init>()V

    return-void
.end method

.method private a(II)Lcom/facebook/ads/AdSize;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 157
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 163
    :goto_0
    return-object v0

    .line 158
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 159
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 161
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->b:Lcom/smaato/soma/mediation/f$a;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/a;)Lcom/facebook/ads/AdView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 174
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookMediationBanner"

    const-string v2, "NoClassDefFoundError happened with Mediation. Check your configurations for FacebookMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 179
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 182
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookMediationBanner"

    const-string v2, "Exception happened with Mediation. Check inputs forFacebookMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 205
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 208
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->c()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iput-object v2, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    .line 216
    iput-object v2, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    .line 219
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookMediationBanner"

    const-string v2, "cancel Timeout called inFacebookMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 223
    return-void
.end method

.method static synthetic e(Lcom/smaato/soma/mediation/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/smaato/soma/mediation/t;->a(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/a;->b()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->c()V

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->d()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smaato/soma/mediation/f$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smaato/soma/mediation/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iput-object p2, p0, Lcom/smaato/soma/mediation/a;->b:Lcom/smaato/soma/mediation/f$a;

    .line 46
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 103
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 57
    :cond_1
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 59
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v1

    if-lez v1, :cond_2

    .line 60
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v0

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/mediation/a;->a(II)Lcom/facebook/ads/AdSize;

    move-result-object v0

    .line 63
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/smaato/soma/mediation/a$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/a$1;-><init>(Lcom/smaato/soma/mediation/a;)V

    iput-object v1, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    .line 80
    iget-object v1, p0, Lcom/smaato/soma/mediation/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smaato/soma/mediation/a;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1d4c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    new-instance v1, Lcom/facebook/ads/AdView;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v1, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    .line 84
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    new-instance v1, Lcom/smaato/soma/mediation/a$a;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/a$a;-><init>(Lcom/smaato/soma/mediation/a;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 85
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->disableAutoRefresh()V

    .line 94
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->c()V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/a;->a:Lcom/facebook/ads/AdView;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->c()V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    invoke-direct {p0}, Lcom/smaato/soma/mediation/a;->d()V

    goto :goto_0
.end method
