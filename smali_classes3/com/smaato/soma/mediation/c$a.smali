.class Lcom/smaato/soma/mediation/c$a;
.super Ljava/lang/Object;
.source "FacebookMediationNative.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;
.implements Lcom/facebook/ads/ImpressionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/NativeAd;

.field private final c:Lcom/smaato/soma/mediation/n$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/smaato/soma/mediation/n$a;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/mediation/c$a;->a:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    .line 108
    iput-object p3, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    .line 109
    return-void
.end method

.method private a(Lcom/facebook/ads/NativeAd$Rating;)F
    .locals 4

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 113
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/NativeAd;->setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V

    .line 114
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    .line 115
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/n$a;->b()V

    .line 189
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_INVALID_STATE:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 171
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v0, Lcom/smaato/soma/internal/b/a;

    invoke-direct {v0}, Lcom/smaato/soma/internal/b/a;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 160
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smaato/soma/mediation/c$a;->a(Lcom/facebook/ads/NativeAd$Rating;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->a(F)V

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/c$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/c$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->c(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/c$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->b(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->f(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b/a;->a(Lcom/facebook/ads/NativeAd;)V

    .line 170
    iget-object v1, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    invoke-interface {v1, v0}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/internal/b/a;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_INVALID_STATE:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/n$a;->a(Lcom/smaato/soma/ErrorCode;)V

    goto :goto_0
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smaato/soma/mediation/c$a;->c:Lcom/smaato/soma/mediation/n$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/n$a;->a()V

    .line 195
    return-void
.end method
