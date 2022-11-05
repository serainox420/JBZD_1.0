.class public Lcom/smaato/soma/mediation/a$a;
.super Ljava/lang/Object;
.source "FacebookMediationBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/a;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/mediation/a;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->c()V

    .line 249
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 5

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->b(Lcom/smaato/soma/mediation/a;)V

    .line 259
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookMediationBanner"

    const-string v2, "Facebook banner ad loaded successfully. Showing ad..."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 264
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v1}, Lcom/smaato/soma/mediation/a;->c(Lcom/smaato/soma/mediation/a;)Lcom/facebook/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->d(Lcom/smaato/soma/mediation/a;)V

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->e(Lcom/smaato/soma/mediation/a;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 5

    .prologue
    .line 229
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "FacebookMediationBanner"

    const-string v2, "FB banner ad failed to load."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 234
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    if-ne p2, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/a$a;->a:Lcom/smaato/soma/mediation/a;

    invoke-static {v0}, Lcom/smaato/soma/mediation/a;->a(Lcom/smaato/soma/mediation/a;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    goto :goto_0
.end method
