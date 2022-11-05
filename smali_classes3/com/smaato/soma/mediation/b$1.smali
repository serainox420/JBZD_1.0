.class Lcom/smaato/soma/mediation/b$1;
.super Ljava/lang/Object;
.source "FacebookMediationInterstitial.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/b;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 182
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook interstitial ad clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 187
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->c()V

    .line 188
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->a(Lcom/smaato/soma/mediation/b;)V

    .line 135
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook interstitial ad loaded successfully."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 140
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->c(Lcom/smaato/soma/mediation/b;)V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->d(Lcom/smaato/soma/mediation/b;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 5

    .prologue
    .line 157
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook interstitial ad failed to load."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 162
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 193
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook interstitial ad dismissed"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 198
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->d()V

    .line 199
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 171
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Showing Facebook interstitial ad."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 176
    iget-object v0, p0, Lcom/smaato/soma/mediation/b$1;->a:Lcom/smaato/soma/mediation/b;

    invoke-static {v0}, Lcom/smaato/soma/mediation/b;->b(Lcom/smaato/soma/mediation/b;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->b()V

    .line 177
    return-void
.end method
