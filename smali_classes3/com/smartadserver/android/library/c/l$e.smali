.class Lcom/smartadserver/android/library/c/l$e;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Lcom/mopub/nativeads/StaticNativeAd;

.field b:Landroid/view/View$OnClickListener;

.field c:[Landroid/view/View;

.field d:Landroid/view/View;

.field final synthetic e:Lcom/smartadserver/android/library/c/l;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/NativeAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$e;->e:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/nativeads/StaticNativeAd;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    .line 255
    new-instance v0, Lcom/smartadserver/android/library/c/l$e$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/c/l$e$1;-><init>(Lcom/smartadserver/android/library/c/l$e;Lcom/smartadserver/android/library/c/l;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->b:Landroid/view/View$OnClickListener;

    .line 262
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mopub native ad : expected StaticNativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->c:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-object v2, p0, Lcom/smartadserver/android/library/c/l$e;->c:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 348
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;[Landroid/view/View;)V
    .locals 4

    .prologue
    .line 359
    if-eqz p2, :cond_0

    .line 360
    iput-object p2, p0, Lcom/smartadserver/android/library/c/l$e;->c:[Landroid/view/View;

    .line 361
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 362
    iget-object v3, p0, Lcom/smartadserver/android/library/c/l$e;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->d:Landroid/view/View;

    if-nez v0, :cond_1

    .line 368
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->d:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$e;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StaticNativeAd;->prepare(Landroid/view/View;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->recordImpression(Landroid/view/View;)V

    .line 375
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, -0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, -0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method public j()F
    .locals 2

    .prologue
    .line 326
    const/high16 v0, -0x40800000    # -1.0f

    .line 327
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/StaticNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 330
    :cond_0
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$e;->a:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, ""

    return-object v0
.end method
