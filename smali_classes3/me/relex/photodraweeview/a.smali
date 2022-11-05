.class public Lme/relex/photodraweeview/a;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lme/relex/photodraweeview/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/photodraweeview/a$b;,
        Lme/relex/photodraweeview/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:[F

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/view/animation/Interpolator;

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:Lme/relex/photodraweeview/g;

.field private j:Landroid/support/v4/view/e;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private final o:Landroid/graphics/Matrix;

.field private p:I

.field private q:I

.field private r:Lme/relex/photodraweeview/a$b;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lme/relex/photodraweeview/c;

.field private u:Lme/relex/photodraweeview/f;

.field private v:Landroid/view/View$OnLongClickListener;

.field private w:Lme/relex/photodraweeview/d;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v3, p0, Lme/relex/photodraweeview/a;->a:I

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lme/relex/photodraweeview/a;->b:[F

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->d:Landroid/view/animation/Interpolator;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lme/relex/photodraweeview/a;->e:F

    .line 46
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lme/relex/photodraweeview/a;->f:F

    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lme/relex/photodraweeview/a;->g:F

    .line 48
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lme/relex/photodraweeview/a;->h:J

    .line 53
    iput-boolean v3, p0, Lme/relex/photodraweeview/a;->k:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->l:Z

    .line 55
    iput v4, p0, Lme/relex/photodraweeview/a;->m:I

    .line 56
    iput v4, p0, Lme/relex/photodraweeview/a;->n:I

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    .line 59
    iput v2, p0, Lme/relex/photodraweeview/a;->p:I

    iput v2, p0, Lme/relex/photodraweeview/a;->q:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->s:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 71
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/DraweeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    new-instance v0, Lme/relex/photodraweeview/g;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/relex/photodraweeview/g;-><init>(Landroid/content/Context;Lme/relex/photodraweeview/e;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    .line 73
    new-instance v0, Landroid/support/v4/view/e;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lme/relex/photodraweeview/a$1;

    invoke-direct {v2, p0}, Lme/relex/photodraweeview/a$1;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroid/support/v4/view/e;

    .line 82
    iget-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroid/support/v4/view/e;

    new-instance v1, Lme/relex/photodraweeview/b;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/b;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/e;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 83
    return-void
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lme/relex/photodraweeview/a;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    iget-object v0, p0, Lme/relex/photodraweeview/a;->b:[F

    aget v0, v0, p2

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    iget v1, p0, Lme/relex/photodraweeview/a;->q:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lme/relex/photodraweeview/a;->p:I

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_1
    iget-object v1, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    iget v2, p0, Lme/relex/photodraweeview/a;->q:I

    int-to-float v2, v2

    iget v3, p0, Lme/relex/photodraweeview/a;->p:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 306
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v1, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getActualImageBounds(Landroid/graphics/RectF;)V

    .line 307
    iget-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    iget-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method static synthetic a(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/a;->v:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lme/relex/photodraweeview/a;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lme/relex/photodraweeview/a;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lme/relex/photodraweeview/a;->h:J

    return-wide v0
.end method

.method private static b(FFF)V
    .locals 2

    .prologue
    .line 200
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    return-void
.end method

.method static synthetic c(Lme/relex/photodraweeview/a;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/a;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic d(Lme/relex/photodraweeview/a;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private n()I
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 215
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingRight()I

    move-result v0

    sub-int v0, v1, v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()I
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHeight()I

    move-result v1

    .line 225
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 226
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingBottom()I

    move-result v0

    sub-int v0, v1, v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 312
    iget v0, p0, Lme/relex/photodraweeview/a;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/a;->p:I

    if-ne v0, v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->q()V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 320
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()Z

    .line 321
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method private r()V
    .locals 7

    .prologue
    .line 328
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v6

    .line 329
    if-nez v6, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->e()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/a;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->i()Landroid/graphics/RectF;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    new-instance v0, Lme/relex/photodraweeview/a$a;

    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->e()F

    move-result v2

    iget v3, p0, Lme/relex/photodraweeview/a;->e:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 337
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lme/relex/photodraweeview/a$a;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    .line 336
    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a$b;->a()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    .line 544
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/view/DraweeView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lme/relex/photodraweeview/a;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeView;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    invoke-static {v0, v1, p1}, Lme/relex/photodraweeview/a;->b(FFF)V

    .line 111
    iput p1, p0, Lme/relex/photodraweeview/a;->g:F

    .line 112
    return-void
.end method

.method public a(FF)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x1

    .line 360
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    iget-object v1, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v1}, Lme/relex/photodraweeview/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 364
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->j()V

    .line 366
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 367
    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v1, p0, Lme/relex/photodraweeview/a;->l:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    .line 371
    invoke-virtual {v1}, Lme/relex/photodraweeview/g;->a()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lme/relex/photodraweeview/a;->k:Z

    if-nez v1, :cond_7

    .line 373
    iget v1, p0, Lme/relex/photodraweeview/a;->a:I

    if-nez v1, :cond_4

    iget v1, p0, Lme/relex/photodraweeview/a;->m:I

    if-eq v1, v6, :cond_3

    iget v1, p0, Lme/relex/photodraweeview/a;->m:I

    if-nez v1, :cond_2

    cmpl-float v1, p1, v4

    if-gez v1, :cond_3

    :cond_2
    iget v1, p0, Lme/relex/photodraweeview/a;->m:I

    if-ne v1, v2, :cond_4

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_4

    .line 375
    :cond_3
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 376
    :cond_4
    iget v1, p0, Lme/relex/photodraweeview/a;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lme/relex/photodraweeview/a;->n:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lme/relex/photodraweeview/a;->n:I

    if-nez v1, :cond_5

    cmpl-float v1, p2, v4

    if-gez v1, :cond_6

    :cond_5
    iget v1, p0, Lme/relex/photodraweeview/a;->n:I

    if-ne v1, v2, :cond_0

    cmpg-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 378
    :cond_6
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 381
    :cond_7
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->e()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 345
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/a;->w:Lme/relex/photodraweeview/d;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lme/relex/photodraweeview/a;->w:Lme/relex/photodraweeview/d;

    invoke-interface {v0, p1, p2, p3}, Lme/relex/photodraweeview/d;->a(FFF)V

    .line 349
    :cond_1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 350
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->j()V

    .line 352
    :cond_2
    return-void
.end method

.method public a(FFFF)V
    .locals 6

    .prologue
    .line 387
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v1, Lme/relex/photodraweeview/a$b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lme/relex/photodraweeview/a$b;-><init>(Lme/relex/photodraweeview/a;Landroid/content/Context;)V

    iput-object v1, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    .line 393
    iget-object v1, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    invoke-direct {p0}, Lme/relex/photodraweeview/a;->n()I

    move-result v2

    invoke-direct {p0}, Lme/relex/photodraweeview/a;->o()I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lme/relex/photodraweeview/a$b;->a(IIII)V

    .line 395
    iget-object v1, p0, Lme/relex/photodraweeview/a;->r:Lme/relex/photodraweeview/a$b;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(FFFZ)V
    .locals 7

    .prologue
    .line 142
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/a;->g:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p4, :cond_2

    .line 149
    new-instance v0, Lme/relex/photodraweeview/a$a;

    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->e()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lme/relex/photodraweeview/a$a;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 152
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->j()V

    goto :goto_0
.end method

.method public a(FZ)V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lme/relex/photodraweeview/a;->a(FFFZ)V

    .line 139
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lme/relex/photodraweeview/a;->a:I

    .line 158
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lme/relex/photodraweeview/a;->q:I

    .line 195
    iput p2, p0, Lme/relex/photodraweeview/a;->p:I

    .line 196
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->p()V

    .line 197
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0xc8

    .line 162
    :cond_0
    iput-wide p1, p0, Lme/relex/photodraweeview/a;->h:J

    .line 163
    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroid/support/v4/view/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/e;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroid/support/v4/view/e;

    new-instance v1, Lme/relex/photodraweeview/b;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/b;-><init>(Lme/relex/photodraweeview/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/e;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lme/relex/photodraweeview/a;->v:Landroid/view/View$OnLongClickListener;

    .line 175
    return-void
.end method

.method public a(Lme/relex/photodraweeview/c;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lme/relex/photodraweeview/a;->t:Lme/relex/photodraweeview/c;

    .line 179
    return-void
.end method

.method public a(Lme/relex/photodraweeview/d;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lme/relex/photodraweeview/a;->w:Lme/relex/photodraweeview/d;

    .line 171
    return-void
.end method

.method public a(Lme/relex/photodraweeview/f;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lme/relex/photodraweeview/a;->u:Lme/relex/photodraweeview/f;

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lme/relex/photodraweeview/a;->l:Z

    .line 167
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    return v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    invoke-static {v0, p1, v1}, Lme/relex/photodraweeview/a;->b(FFF)V

    .line 116
    iput p1, p0, Lme/relex/photodraweeview/a;->f:F

    .line 117
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lme/relex/photodraweeview/a;->f:F

    return v0
.end method

.method public c(F)V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lme/relex/photodraweeview/a;->f:F

    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    invoke-static {p1, v0, v1}, Lme/relex/photodraweeview/a;->b(FFF)V

    .line 121
    iput p1, p0, Lme/relex/photodraweeview/a;->e:F

    .line 122
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lme/relex/photodraweeview/a;->g:F

    return v0
.end method

.method public d(F)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/a;->a(FZ)V

    .line 132
    return-void
.end method

.method public e()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 125
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1}, Lme/relex/photodraweeview/a;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    .line 127
    invoke-direct {p0, v1, v2}, Lme/relex/photodraweeview/a;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    .line 126
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public f()Lme/relex/photodraweeview/c;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lme/relex/photodraweeview/a;->t:Lme/relex/photodraweeview/c;

    return-object v0
.end method

.method public g()Lme/relex/photodraweeview/f;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lme/relex/photodraweeview/a;->u:Lme/relex/photodraweeview/f;

    return-object v0
.end method

.method public h()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public i()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()Z

    .line 242
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->h()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    goto :goto_0
.end method

.method public k()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->h()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 260
    if-nez v4, :cond_0

    move v0, v2

    .line 297
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 265
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 268
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->o()I

    move-result v6

    .line 270
    int-to-float v7, v6

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_1

    .line 271
    int-to-float v6, v6

    sub-float v0, v6, v0

    div-float/2addr v0, v8

    iget v6, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v6

    .line 272
    const/4 v6, 0x2

    iput v6, p0, Lme/relex/photodraweeview/a;->n:I

    .line 282
    :goto_1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->n()I

    move-result v6

    .line 283
    int-to-float v7, v6

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_4

    .line 284
    int-to-float v1, v6

    sub-float/2addr v1, v5

    div-float/2addr v1, v8

    iget v2, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 285
    const/4 v2, 0x2

    iput v2, p0, Lme/relex/photodraweeview/a;->m:I

    .line 296
    :goto_2
    iget-object v2, p0, Lme/relex/photodraweeview/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v0, v3

    .line 297
    goto :goto_0

    .line 273
    :cond_1
    iget v0, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 274
    iget v0, v4, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 275
    iput v2, p0, Lme/relex/photodraweeview/a;->n:I

    goto :goto_1

    .line 276
    :cond_2
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v6

    cmpg-float v0, v0, v7

    if-gez v0, :cond_3

    .line 277
    int-to-float v0, v6

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v6

    .line 278
    iput v3, p0, Lme/relex/photodraweeview/a;->n:I

    goto :goto_1

    .line 280
    :cond_3
    iput v9, p0, Lme/relex/photodraweeview/a;->n:I

    move v0, v1

    goto :goto_1

    .line 286
    :cond_4
    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_5

    .line 287
    iget v1, v4, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    .line 288
    iput v2, p0, Lme/relex/photodraweeview/a;->m:I

    goto :goto_2

    .line 289
    :cond_5
    iget v2, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v6

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    .line 290
    int-to-float v1, v6

    iget v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 291
    iput v3, p0, Lme/relex/photodraweeview/a;->m:I

    goto :goto_2

    .line 293
    :cond_6
    iput v9, p0, Lme/relex/photodraweeview/a;->m:I

    goto :goto_2
.end method

.method public l()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->r()V

    .line 356
    return-void
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->s()V

    .line 556
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 399
    invoke-static {p2}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 400
    packed-switch v2, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v2}, Lme/relex/photodraweeview/g;->a()Z

    move-result v3

    .line 420
    iget-object v2, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v2}, Lme/relex/photodraweeview/g;->b()Z

    move-result v5

    .line 422
    iget-object v2, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v2, p2}, Lme/relex/photodraweeview/g;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 424
    if-nez v3, :cond_3

    iget-object v3, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v3}, Lme/relex/photodraweeview/g;->a()Z

    move-result v3

    if-nez v3, :cond_3

    move v4, v1

    .line 425
    :goto_1
    if-nez v5, :cond_4

    iget-object v3, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/g;

    invoke-virtual {v3}, Lme/relex/photodraweeview/g;->b()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 426
    :goto_2
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->k:Z

    .line 428
    iget-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroid/support/v4/view/e;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    :goto_3
    return v1

    .line 402
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_2

    .line 404
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 406
    :cond_2
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->s()V

    goto :goto_0

    .line 411
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_0

    .line 413
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    move v4, v0

    .line 424
    goto :goto_1

    :cond_4
    move v3, v0

    .line 425
    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
