.class Lcom/smartadserver/android/library/ui/SASAdView$13;
.super Landroid/webkit/WebView;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->d(Ljava/lang/String;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

.field final synthetic d:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;)V
    .locals 1

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->c:Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2500
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->c:Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getCreativeWidth()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->a:I

    .line 2501
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->c:Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getCreativeHeight()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 2506
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2507
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView$13;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2508
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2510
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->b:I

    if-lez v0, :cond_1

    .line 2512
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->b:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p2, v0

    .line 2520
    :cond_0
    :goto_0
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 2523
    return-void

    .line 2514
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$13;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewMaxSize()[I

    move-result-object v0

    .line 2515
    if-eqz v0, :cond_0

    .line 2516
    const/4 v1, 0x1

    aget p2, v0, v1

    goto :goto_0
.end method
