.class public Lcom/smaato/soma/mediation/d$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayMediationBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/d;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/mediation/d;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 5

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "Google Play Services banner ad failed to load."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 202
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/d;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->c(Lcom/smaato/soma/mediation/d;)V

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->d(Lcom/smaato/soma/mediation/d;)V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/d;->a()V

    .line 227
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->e(Lcom/smaato/soma/mediation/d;)V

    .line 237
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "Google Play Services banner ad loaded successfully. Showing ad..."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 242
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v1}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->c(Lcom/smaato/soma/mediation/d;)V

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->d(Lcom/smaato/soma/mediation/d;)V

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 5

    .prologue
    .line 260
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "Google Play Services banner ad clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 265
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$a;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->c()V

    .line 268
    :cond_0
    return-void
.end method
