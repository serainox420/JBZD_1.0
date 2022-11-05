.class public final Lcom/revmob/ads/interstitial/b/e;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/revmob/ads/interstitial/b/g;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/revmob/ads/interstitial/a/b;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/ads/interstitial/a/b;Lcom/revmob/ads/interstitial/b/a;ZI)V
    .locals 4

    const/4 v2, -0x1

    const/16 v1, -0x3e7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/revmob/ads/interstitial/b/e;->c:Z

    iput v3, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->e:I

    iput v1, p0, Lcom/revmob/ads/interstitial/b/e;->h:I

    iput v1, p0, Lcom/revmob/ads/interstitial/b/e;->i:I

    iput v3, p0, Lcom/revmob/ads/interstitial/b/e;->j:I

    iput v3, p0, Lcom/revmob/ads/interstitial/b/e;->k:I

    iput-object p2, p0, Lcom/revmob/ads/interstitial/b/e;->b:Lcom/revmob/ads/interstitial/a/b;

    iput-boolean p4, p0, Lcom/revmob/ads/interstitial/b/e;->c:Z

    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->e:I

    if-gt p5, v0, :cond_0

    :goto_0
    iput p5, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    if-eqz p4, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/revmob/ads/interstitial/b/e;->f:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->g:I

    iput v3, p0, Lcom/revmob/ads/interstitial/b/e;->k:I

    iput v3, p0, Lcom/revmob/ads/interstitial/b/e;->j:I

    invoke-virtual {p0, v3}, Lcom/revmob/ads/interstitial/b/e;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->f:I

    iget v2, p0, Lcom/revmob/ads/interstitial/b/e;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/revmob/ads/interstitial/b/e;->setGravity(I)V

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-direct {p0, p3}, Lcom/revmob/ads/interstitial/b/e;->a(Lcom/revmob/ads/interstitial/b/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/revmob/ads/interstitial/b/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    iget p5, p0, Lcom/revmob/ads/interstitial/b/e;->e:I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/revmob/ads/interstitial/b/e;->a(Lcom/revmob/ads/interstitial/b/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/revmob/ads/interstitial/b/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private a(Lcom/revmob/ads/interstitial/b/a;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/e;->e()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/interstitial/b/f;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/interstitial/b/f;-><init>(Lcom/revmob/ads/interstitial/b/e;Lcom/revmob/ads/interstitial/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/revmob/ads/interstitial/b/e;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const/16 v1, -0x3e7

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/b/e;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->h:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/revmob/ads/interstitial/b/e;->h:I

    :cond_0
    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->i:I

    if-ne v0, v1, :cond_1

    iput p2, p0, Lcom/revmob/ads/interstitial/b/e;->i:I

    :cond_1
    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->h:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    rsub-int/lit8 v1, v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->k:I

    :goto_0
    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->i:I

    sub-int v0, p2, v0

    if-ltz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    rsub-int/lit8 v1, v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->j:I

    :goto_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/e;->invalidate()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->k:I

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->d:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/b/e;->j:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/e;->postInvalidate()V

    goto :goto_3
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/b/e;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/interstitial/a/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->R()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/e;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/b/e;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/revmob/ads/interstitial/b/e;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/interstitial/b/e;->j:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
