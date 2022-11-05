.class public Lme/relex/photodraweeview/PhotoDraweeView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "PhotoDraweeView.java"


# instance fields
.field private a:Lme/relex/photodraweeview/a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    .line 32
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    .line 37
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    .line 42
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    .line 43
    return-void
.end method

.method static synthetic a(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lme/relex/photodraweeview/a;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/a;-><init>(Lcom/facebook/drawee/view/DraweeView;)V

    iput-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    .line 49
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/a;->a(II)V

    .line 160
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    .line 176
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 178
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    new-instance v1, Lme/relex/photodraweeview/PhotoDraweeView$1;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/PhotoDraweeView$1;-><init>(Lme/relex/photodraweeview/PhotoDraweeView;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 209
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 211
    return-void
.end method

.method public getAttacher()Lme/relex/photodraweeview/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->d()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->c()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->b()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/c;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->f()Lme/relex/photodraweeview/c;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/f;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->g()Lme/relex/photodraweeview/f;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->e()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    .line 70
    invoke-super {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->onAttachedToWindow()V

    .line 71
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->m()V

    .line 75
    invoke-super {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->onDetachedFromWindow()V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 61
    iget-boolean v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v1}, Lme/relex/photodraweeview/a;->h()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Z)V

    .line 128
    return-void
.end method

.method public setEnableDraweeMatrix(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->b:Z

    .line 168
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(F)V

    .line 100
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->b(F)V

    .line 96
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->c(F)V

    .line 92
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 132
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Landroid/view/View$OnLongClickListener;)V

    .line 140
    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/c;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Lme/relex/photodraweeview/c;)V

    .line 144
    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/d;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Lme/relex/photodraweeview/d;)V

    .line 136
    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/f;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(Lme/relex/photodraweeview/f;)V

    .line 148
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->a(I)V

    .line 120
    return-void
.end method

.method public setPhotoUri(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->a(Landroid/net/Uri;Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->d(F)V

    .line 108
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/a;->a(J)V

    .line 124
    return-void
.end method
