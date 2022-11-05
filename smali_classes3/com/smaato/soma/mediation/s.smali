.class public Lcom/smaato/soma/mediation/s;
.super Lcom/smaato/soma/mediation/j;
.source "MoPubMediationInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/s$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Lcom/mopub/mobileads/MoPubInterstitial;


# instance fields
.field private b:Lcom/smaato/soma/mediation/j$a;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "MoPubMediationInterstitial"

    sput-object v0, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/smaato/soma/mediation/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->b:Lcom/smaato/soma/mediation/j$a;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 156
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

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/s;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/s;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->e()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cancelTimeout called in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 126
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/s;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->f()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 250
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependencies missing. Check configurations of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 256
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 257
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/s;->b()V

    .line 258
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 262
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened with Mediation inputs. Check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 267
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 268
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/s;->b()V

    .line 269
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 117
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/mediation/s;->a:Ljava/lang/String;

    const-string v2, "Tried to show a MoPub interstitial ad before it finished loading. Please try again."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->e()V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->f()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smaato/soma/mediation/j$a;",
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
    .line 40
    :try_start_0
    iput-object p2, p0, Lcom/smaato/soma/mediation/s;->b:Lcom/smaato/soma/mediation/j$a;

    .line 42
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->b:Lcom/smaato/soma/mediation/j$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 91
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 52
    :cond_1
    sget v0, Lcom/smaato/soma/debug/a;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 53
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    .line 57
    :goto_1
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v1, Lcom/smaato/soma/mediation/s$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/mediation/s$a;-><init>(Lcom/smaato/soma/mediation/s;Lcom/smaato/soma/mediation/s$1;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/smaato/soma/mediation/s$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/mediation/s$1;-><init>(Lcom/smaato/soma/mediation/s;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->e()V

    goto :goto_0

    .line 55
    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->e()V

    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    .line 87
    invoke-direct {p0}, Lcom/smaato/soma/mediation/s;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/mediation/s;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/s;->d:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/s;->e:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    goto :goto_0
.end method
