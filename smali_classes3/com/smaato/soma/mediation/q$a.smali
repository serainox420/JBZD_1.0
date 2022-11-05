.class Lcom/smaato/soma/mediation/q$a;
.super Ljava/lang/Object;
.source "MillennialMediationInterstitial.java"

# interfaces
.implements Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/q;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/q;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InterstitialAd;)V
    .locals 5

    .prologue
    .line 296
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/q;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial interstitial clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 302
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->c()V

    .line 306
    :cond_0
    return-void
.end method

.method public onClosed(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->d()V

    .line 289
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/q;->b()V

    .line 291
    return-void
.end method

.method public onExpired(Lcom/millennialmedia/InterstitialAd;)V
    .locals 5

    .prologue
    .line 317
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/q;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial interstitial ad expired."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 322
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/q;->b()V

    .line 327
    return-void
.end method

.method public onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 5

    .prologue
    .line 240
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/q;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial interstitial ad failed to load."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 245
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/q;->b()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->c(Lcom/smaato/soma/mediation/q;)V

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->d(Lcom/smaato/soma/mediation/q;)V

    goto :goto_0
.end method

.method public onLoaded(Lcom/millennialmedia/InterstitialAd;)V
    .locals 5

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->b(Lcom/smaato/soma/mediation/q;)V

    .line 217
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->a()V

    .line 220
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/q;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial interstitial ad loaded successfully."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->c(Lcom/smaato/soma/mediation/q;)V

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->d(Lcom/smaato/soma/mediation/q;)V

    goto :goto_0
.end method

.method public onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 5

    .prologue
    .line 271
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/q;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial interstitial request completed, but no ad was available."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 277
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/q;->b()V

    .line 282
    return-void
.end method

.method public onShown(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/smaato/soma/mediation/q$a;->a:Lcom/smaato/soma/mediation/q;

    invoke-static {v0}, Lcom/smaato/soma/mediation/q;->a(Lcom/smaato/soma/mediation/q;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->b()V

    .line 266
    :cond_0
    return-void
.end method
