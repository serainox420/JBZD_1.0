.class public Lpl/jbzd/app/view/gallery/GalleryViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "GalleryViewPager.java"


# instance fields
.field public a:Z

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->e:Z

    .line 22
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->a:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->e:Z

    .line 22
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->a:Z

    .line 26
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->e:Z

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 57
    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    return v2

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    .line 87
    iput-boolean v3, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->c:Z

    .line 88
    iput-boolean v3, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->d:Z

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->d:Z

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 108
    :cond_1
    iput-boolean v2, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->d:Z

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    .line 112
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/aa;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->c:Z

    if-nez v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 130
    :cond_3
    iput-boolean v2, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->c:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->b:F

    .line 134
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lpl/jbzd/app/view/gallery/GalleryViewPager;->e:Z

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 36
    return-void
.end method
