.class public Lcom/smaato/soma/mediation/c;
.super Lcom/smaato/soma/mediation/n;
.source "FacebookMediationNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/smaato/soma/mediation/c$a;

.field private b:Lcom/smaato/soma/mediation/n$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/smaato/soma/mediation/n;-><init>()V

    return-void
.end method

.method private a(Lcom/smaato/soma/mediation/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 209
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 212
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

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 223
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookNative"

    const-string v2, "Exception happened with Mediation. Check inputs forFacebookNative"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 228
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->b:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 230
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/c;->a()V

    .line 231
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 235
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookNative"

    const-string v2, "NoClassDefFoundError happened with Mediation. Check your configurations for FacebookNative"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 240
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->b:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 242
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/c;->a()V

    .line 243
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->a:Lcom/smaato/soma/mediation/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->a:Lcom/smaato/soma/mediation/c$a;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/c$a;->a()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->a:Lcom/smaato/soma/mediation/c$a;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/c$a;->a()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/n$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smaato/soma/mediation/n$a;",
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
    .line 46
    :try_start_0
    iput-object p2, p0, Lcom/smaato/soma/mediation/c;->b:Lcom/smaato/soma/mediation/n$a;

    .line 48
    invoke-direct {p0, p4}, Lcom/smaato/soma/mediation/c;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->b:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 74
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/smaato/soma/mediation/c$a;

    new-instance v1, Lcom/facebook/ads/NativeAd;

    .line 63
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smaato/soma/mediation/c;->b:Lcom/smaato/soma/mediation/n$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/smaato/soma/mediation/c$a;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/smaato/soma/mediation/n$a;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/c;->a:Lcom/smaato/soma/mediation/c$a;

    .line 64
    iget-object v0, p0, Lcom/smaato/soma/mediation/c;->a:Lcom/smaato/soma/mediation/c$a;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/c$a;->b()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-direct {p0}, Lcom/smaato/soma/mediation/c;->c()V

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    invoke-direct {p0}, Lcom/smaato/soma/mediation/c;->b()V

    goto :goto_0
.end method
