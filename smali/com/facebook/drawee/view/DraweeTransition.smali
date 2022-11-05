.class public Lcom/facebook/drawee/view/DraweeTransition;
.super Landroid/transition/Transition;
.source "DraweeTransition.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "draweeTransition:bounds"


# instance fields
.field private final mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 51
    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/drawee/view/DraweeTransition;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/drawee/view/GenericDraweeView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "draweeTransition:bounds"

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void
.end method

.method public static createTransitionSet(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/transition/TransitionSet;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 44
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 45
    new-instance v1, Lcom/facebook/drawee/view/DraweeTransition;

    invoke-direct {v1, p0, p1}, Lcom/facebook/drawee/view/DraweeTransition;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 46
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeTransition;->captureValues(Landroid/transition/TransitionValues;)V

    .line 62
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeTransition;->captureValues(Landroid/transition/TransitionValues;)V

    .line 57
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v2

    .line 100
    :goto_0
    return-object v0

    .line 72
    :cond_1
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "draweeTransition:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 73
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "draweeTransition:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 74
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    iget-object v3, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v4, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v3, v4, :cond_4

    move-object v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Lcom/facebook/drawee/view/GenericDraweeView;

    .line 81
    new-instance v3, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;

    iget-object v4, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v5, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {v2}, Lcom/facebook/drawee/view/GenericDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/facebook/drawee/view/DraweeTransition$1;

    invoke-direct {v1, p0, v3}, Lcom/facebook/drawee/view/DraweeTransition$1;-><init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    new-instance v1, Lcom/facebook/drawee/view/DraweeTransition$2;

    invoke-direct {v1, p0, v2}, Lcom/facebook/drawee/view/DraweeTransition$2;-><init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/view/GenericDraweeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 85
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
