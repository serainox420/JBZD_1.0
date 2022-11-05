.class public Lpl/jbzd/app/view/gallery/GalleryMainViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "GalleryMainViewPager.java"


# instance fields
.field a:F

.field private b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->a(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 39
    if-lez v0, :cond_0

    .line 40
    int-to-float v0, v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->a:F

    .line 44
    :cond_0
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->a:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->a:F

    .line 45
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v1, v0

    .line 63
    :goto_0
    if-nez v1, :cond_1

    .line 66
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 73
    :cond_1
    :goto_1
    return v0

    .line 56
    :pswitch_0
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInnerViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->b:Landroid/support/v4/view/ViewPager;

    .line 29
    return-void
.end method
