.class Lcom/smartadserver/android/library/ui/SASAdView$f;
.super Landroid/widget/ImageView;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:D

.field d:I

.field final synthetic e:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 2417
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 2418
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2420
    iget-object v0, p1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2422
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->a:I

    .line 2423
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->b:I

    .line 2424
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->b:I

    int-to-double v2, v1

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->a:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->c:D

    .line 2425
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getResizeMode()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->d:I

    .line 2427
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2428
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView$f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2429
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2430
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView$f;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2431
    invoke-virtual {p0, p3}, Lcom/smartadserver/android/library/ui/SASAdView$f;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2432
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    .line 2437
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2439
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewMaxSize()[I

    move-result-object v1

    .line 2441
    if-eqz v1, :cond_0

    .line 2442
    aget p2, v1, v8

    .line 2446
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2447
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->c:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 2449
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2450
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 2459
    :goto_0
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2462
    return-void

    .line 2452
    :cond_1
    if-gt v1, p2, :cond_2

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->d:I

    if-eqz v0, :cond_3

    :cond_2
    if-le v1, p2, :cond_4

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->d:I

    if-ne v0, v8, :cond_4

    .line 2455
    :cond_3
    int-to-double v0, p2

    iget-wide v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$f;->c:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_4
    move p2, v1

    move v0, v2

    goto :goto_0
.end method
