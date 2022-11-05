.class Lcom/smartadserver/android/library/c/e$b;
.super Ljava/lang/Object;
.source "SASFacebookAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/facebook/ads/NativeAd;

.field b:Lcom/facebook/ads/MediaView;

.field final synthetic c:Lcom/smartadserver/android/library/c/e;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/e;Lcom/facebook/ads/NativeAd;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/smartadserver/android/library/c/e$b;->c:Lcom/smartadserver/android/library/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->b:Lcom/facebook/ads/MediaView;

    .line 142
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->b:Lcom/facebook/ads/MediaView;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-direct {v0, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->b:Lcom/facebook/ads/MediaView;

    .line 192
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->b:Lcom/facebook/ads/MediaView;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->b:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 226
    return-void
.end method

.method public a(Landroid/view/View;[Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public j()F
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v1

    .line 201
    const/high16 v0, -0x40800000    # -1.0f

    .line 203
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v0

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 207
    :cond_0
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$b;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/e$b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaWidth(I)V

    .line 219
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/e$b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaHeight(I)V

    .line 220
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "https://m.facebook.com/ads/ad_choices"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, ""

    return-object v0
.end method
