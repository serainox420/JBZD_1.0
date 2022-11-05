.class Lcom/smartadserver/android/library/c/l$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;

.field private b:Lcom/mopub/nativeads/VideoNativeAd;

.field private c:Lcom/mopub/nativeads/MediaLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;

.field private f:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/NativeAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 389
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$f;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/nativeads/VideoNativeAd;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/VideoNativeAd;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    .line 396
    new-instance v0, Lcom/smartadserver/android/library/c/l$f$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/c/l$f$1;-><init>(Lcom/smartadserver/android/library/c/l$f;Lcom/smartadserver/android/library/c/l;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->e:Landroid/view/View$OnClickListener;

    .line 403
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mopub native ad : expected VideoNativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/l$f;)Landroid/view/View;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->c:Lcom/mopub/nativeads/MediaLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->d:Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    new-instance v0, Lcom/mopub/nativeads/MediaLayout;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/MediaLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->c:Lcom/mopub/nativeads/MediaLayout;

    .line 468
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->c:Lcom/mopub/nativeads/MediaLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VideoNativeAd;->prepare(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$f;->c:Lcom/mopub/nativeads/MediaLayout;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VideoNativeAd;->render(Lcom/mopub/nativeads/MediaLayout;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->c:Lcom/mopub/nativeads/MediaLayout;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->f:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 500
    iget-object v2, p0, Lcom/smartadserver/android/library/c/l$f;->f:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 501
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;[Landroid/view/View;)V
    .locals 4

    .prologue
    .line 512
    if-eqz p2, :cond_0

    .line 513
    iput-object p2, p0, Lcom/smartadserver/android/library/c/l$f;->f:[Landroid/view/View;

    .line 514
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 515
    iget-object v3, p0, Lcom/smartadserver/android/library/c/l$f;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/c/l$f;->a(Landroid/content/Context;)Landroid/view/View;

    .line 523
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->a:Lcom/smartadserver/android/library/c/l;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    const-string v2, "notifyAdImpressed"

    invoke-static {v0, v1, v2}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/BaseNativeAd;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, -0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 453
    const/4 v0, -0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, -0x1

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 479
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>()V

    .line 491
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/l$f;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaWidth(I)V

    .line 492
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/l$f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaHeight(I)V

    .line 493
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$f;->b:Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VideoNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string v0, ""

    return-object v0
.end method
