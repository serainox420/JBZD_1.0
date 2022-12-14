.class public Lcom/facebook/drawee/drawable/AutoRotateDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "AutoRotateDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/CloneableDrawable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEGREES_IN_FULL_ROTATION:I = 0x168

.field private static final FRAME_INTERVAL_MS:I = 0x14


# instance fields
.field private mClockwise:Z

.field private mInterval:I

.field private mIsScheduled:Z

.field mRotationAngle:F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IZ)V
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 59
    iput p2, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    .line 60
    iput-boolean p3, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    .line 61
    return-void
.end method

.method private getIncrement()I
    .locals 2

    .prologue
    .line 131
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private scheduleNextFrame()V
    .locals 4

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic cloneDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->cloneDrawable()Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public cloneDrawable()Lcom/facebook/drawee/drawable/AutoRotateDrawable;
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/DrawableUtils;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    iget v2, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mInterval:I

    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 86
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    .line 87
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    .line 89
    iget v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 90
    iget-boolean v5, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    if-nez v5, :cond_0

    .line 91
    const/high16 v0, 0x43b40000    # 360.0f

    iget v5, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    sub-float/2addr v0, v5

    .line 93
    :cond_0
    iget v5, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 94
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 97
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->scheduleNextFrame()V

    .line 98
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 69
    invoke-virtual {p0, p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mIsScheduled:Z

    .line 103
    iget v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    invoke-direct {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->getIncrement()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mRotationAngle:F

    .line 104
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->invalidateSelf()V

    .line 105
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;->mClockwise:Z

    .line 79
    return-void
.end method
