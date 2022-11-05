.class Lcom/smaato/soma/mediation/e$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayMediationInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/e;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/mediation/e;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/mediation/e;Lcom/smaato/soma/mediation/e$1;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/smaato/soma/mediation/e$a;-><init>(Lcom/smaato/soma/mediation/e;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->d()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/e;->b()V

    .line 165
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 5

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Google Play Services interstitial ad failed to load."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 177
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/j$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/e;->b()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->b(Lcom/smaato/soma/mediation/e;)V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->c(Lcom/smaato/soma/mediation/e;)V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->c()V

    .line 200
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->d(Lcom/smaato/soma/mediation/e;)V

    .line 209
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Google Play Services interstitial ad loaded successfully."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->b(Lcom/smaato/soma/mediation/e;)V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->c(Lcom/smaato/soma/mediation/e;)V

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 5

    .prologue
    .line 231
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/mediation/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Showing Google Play Services interstitial ad."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 236
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/smaato/soma/mediation/e$a;->a:Lcom/smaato/soma/mediation/e;

    invoke-static {v0}, Lcom/smaato/soma/mediation/e;->a(Lcom/smaato/soma/mediation/e;)Lcom/smaato/soma/mediation/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->b()V

    .line 239
    :cond_0
    return-void
.end method
