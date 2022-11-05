.class Lcom/smaato/soma/mediation/s$a;
.super Ljava/lang/Object;
.source "MoPubMediationInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/s;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/mediation/s;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/mediation/s;Lcom/smaato/soma/mediation/s$1;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/smaato/soma/mediation/s$a;-><init>(Lcom/smaato/soma/mediation/s;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 5

    .prologue
    .line 227
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/s;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoPub interstitial ad clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 232
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->c()V

    .line 235
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->d()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/s;->b()V

    .line 245
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/s;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPub interstitial ad failed to load.moPubErrorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/s;->b()V

    .line 211
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 5

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->b(Lcom/smaato/soma/mediation/s;)V

    .line 177
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/s;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoPub interstitial ad loaded successfully."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 182
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->c(Lcom/smaato/soma/mediation/s;)V

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->d(Lcom/smaato/soma/mediation/s;)V

    goto :goto_0
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 5

    .prologue
    .line 215
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/s;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Showing MoPub interstitial ad."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 220
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/smaato/soma/mediation/s$a;->a:Lcom/smaato/soma/mediation/s;

    invoke-static {v0}, Lcom/smaato/soma/mediation/s;->a(Lcom/smaato/soma/mediation/s;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->b()V

    .line 223
    :cond_0
    return-void
.end method
