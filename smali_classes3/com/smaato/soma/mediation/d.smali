.class public Lcom/smaato/soma/mediation/d;
.super Lcom/smaato/soma/mediation/f;
.source "GooglePlayMediationBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/smaato/soma/mediation/f$a;

.field private b:Lcom/google/android/gms/ads/AdView;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/mediation/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 160
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

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->a:Lcom/smaato/soma/mediation/f$a;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iput-object v2, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    .line 117
    iput-object v2, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    .line 120
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "cancel Timeout called inGooglePlayMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 124
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 273
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "NoClassDefFoundError happened with Mediation. Check your configurations for GooglePlayMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 278
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 280
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/d;->a()V

    .line 281
    return-void
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->c()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 284
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "Exception happened with Mediation. Check inputs forGooglePlayMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 289
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 291
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/d;->a()V

    .line 292
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->d()V

    return-void
.end method

.method static synthetic e(Lcom/smaato/soma/mediation/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->b()V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 172
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 180
    :goto_0
    return-object v0

    .line 173
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 174
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 176
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 177
    :cond_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 178
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 180
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/smaato/soma/mediation/t;->a(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->c()V

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->d()V

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
    iput-object p2, p0, Lcom/smaato/soma/mediation/d;->a:Lcom/smaato/soma/mediation/f$a;

    .line 46
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 109
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    .line 56
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    .line 57
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/smaato/soma/mediation/d$a;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/d$a;-><init>(Lcom/smaato/soma/mediation/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 58
    iget-object v0, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 63
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v1

    if-lez v1, :cond_1

    .line 64
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v0

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/smaato/soma/mediation/d;->a(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 66
    :cond_1
    if-nez v0, :cond_2

    .line 68
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 74
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v1, "Smaato"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    .line 79
    new-instance v1, Lcom/smaato/soma/mediation/d$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/d$1;-><init>(Lcom/smaato/soma/mediation/d;)V

    iput-object v1, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    .line 97
    iget-object v1, p0, Lcom/smaato/soma/mediation/d;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smaato/soma/mediation/d;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1d4c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    iget-object v1, p0, Lcom/smaato/soma/mediation/d;->b:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->c()V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-direct {p0}, Lcom/smaato/soma/mediation/d;->d()V

    goto :goto_0
.end method
