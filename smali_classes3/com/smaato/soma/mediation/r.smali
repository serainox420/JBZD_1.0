.class public Lcom/smaato/soma/mediation/r;
.super Lcom/smaato/soma/mediation/f;
.source "MoPubMediationBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/r$a;
    }
.end annotation


# static fields
.field private static b:Lcom/mopub/mobileads/MoPubView;


# instance fields
.field private a:Lcom/smaato/soma/mediation/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/mediation/r;->a:Lcom/smaato/soma/mediation/f$a;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 113
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

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/r;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/r;->d()V

    return-void
.end method

.method static synthetic c()Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/r;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/mediation/r;->e()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 211
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MoPubMediationBanner"

    const-string v2, "Dependencies missing. Check configurations of MoPubMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 217
    iget-object v0, p0, Lcom/smaato/soma/mediation/r;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 218
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->a()V

    .line 219
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 223
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MoPubMediationBanner"

    const-string v2, "Exception happened with Mediation inputs. Check in MoPubMediationBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 228
    iget-object v0, p0, Lcom/smaato/soma/mediation/r;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 229
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->a()V

    .line 230
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-static {v0}, Lcom/smaato/soma/mediation/t;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->b()V

    .line 88
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->b()V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/smaato/soma/mediation/r;->b()V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 2
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
    .line 35
    iput-object p2, p0, Lcom/smaato/soma/mediation/r;->a:Lcom/smaato/soma/mediation/f$a;

    .line 37
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/smaato/soma/mediation/r;->a:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 73
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    .line 50
    :cond_1
    sget v0, Lcom/smaato/soma/debug/a;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 51
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    .line 56
    :goto_1
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    new-instance v1, Lcom/smaato/soma/mediation/r$a;

    invoke-direct {v1, p0}, Lcom/smaato/soma/mediation/r$a;-><init>(Lcom/smaato/soma/mediation/r;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 57
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setTimeout(I)V

    .line 59
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 63
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-direct {p0}, Lcom/smaato/soma/mediation/r;->d()V

    goto :goto_0

    .line 53
    :cond_2
    :try_start_1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-direct {p0}, Lcom/smaato/soma/mediation/r;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 94
    :try_start_0
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/mediation/r;->b:Lcom/mopub/mobileads/MoPubView;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_0
.end method
