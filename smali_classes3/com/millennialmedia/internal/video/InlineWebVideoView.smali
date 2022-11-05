.class public Lcom/millennialmedia/internal/video/InlineWebVideoView;
.super Landroid/widget/RelativeLayout;
.source "InlineWebVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    }
.end annotation


# static fields
.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final a:Ljava/lang/String;

.field private static volatile b:I


# instance fields
.field private A:Z

.field private B:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/millennialmedia/internal/video/MMVideoView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/net/Uri;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

.field private u:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private w:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    .line 47
    const/16 v0, 0x64

    sput v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
    .locals 10

    .prologue
    .line 374
    new-instance v2, Landroid/content/MutableContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v2, -0x1

    iput v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->n:I

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q:J

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:Z

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:Z

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->z:Z

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->A:Z

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->B:Z

    .line 376
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->w:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    .line 379
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/content/MutableContextWrapper;

    .line 381
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    .line 382
    move/from16 v0, p6

    iput v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->n:I

    .line 383
    iput-boolean p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->o:Z

    .line 384
    iput-boolean p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->p:Z

    .line 386
    new-instance v2, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v4, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;

    invoke-direct {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 387
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 389
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d:Landroid/widget/FrameLayout;

    .line 391
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setBackgroundColor(I)V

    .line 393
    new-instance v2, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 397
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 399
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMInlineWebVideoView_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setTag(Ljava/lang/Object;)V

    .line 404
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f:Landroid/widget/ImageView;

    .line 408
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f:Landroid/widget/ImageView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 409
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v4, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object v5, p0

    move-object v6, v3

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V

    iput-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    .line 418
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 421
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 423
    if-nez p4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->setVisibility(I)V

    .line 426
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {p0, v4, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v2, v4}, Lcom/millennialmedia/internal/video/MMVideoView;->setMediaController(Lcom/millennialmedia/internal/video/MMVideoView$MediaController;)V

    .line 429
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v4, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;

    invoke-direct {v4, p0, p4, p5}, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;ZZ)V

    invoke-virtual {v2, v4}, Lcom/millennialmedia/internal/video/MMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-direct {v2, v3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    .line 458
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 461
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    .line 462
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/millennialmedia/R$drawable;->mmadsdk_expand_collapse:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 476
    if-nez p5, :cond_1

    .line 477
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 480
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 481
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 482
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 485
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 486
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    return-void
.end method

.method private a(Landroid/util/DisplayMetrics;I)I
    .locals 2

    .prologue
    .line 1226
    int-to-float v0, p2

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 5

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l:I

    iget v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m:I

    iget v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j:I

    iget v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 879
    invoke-static {p1, p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->t:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachSucceeded(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 882
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Lcom/millennialmedia/internal/MMWebView;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->a(Z)V

    .line 1193
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1195
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    .line 1196
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1198
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1199
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1200
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    return-void
.end method

.method private b(Z)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_max_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1209
    if-eqz p1, :cond_0

    .line 1210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1219
    :goto_0
    return-object v0

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_min_width_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1216
    iget v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m:I

    div-int/lit8 v2, v2, 0x5

    .line 1217
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 639
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    .line 641
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.expandToFullScreen could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->o:Z

    if-eqz v0, :cond_2

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->u:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->u:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1122
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    const-wide/16 v2, 0x9c4

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->u:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1186
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1232
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method static synthetic e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic g(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c()V

    return-void
.end method

.method static synthetic h(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b()V

    return-void
.end method

.method static synthetic i(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j:I

    return v0
.end method

.method static synthetic k(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l:I

    return v0
.end method

.method static synthetic l(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k:I

    return v0
.end method

.method static synthetic m(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m:I

    return v0
.end method

.method static synthetic n(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic o(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->w:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    return-object v0
.end method


# virtual methods
.method public expandToFullScreen()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 633
    return-void
.end method

.method public mute()V
    .locals 2

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->mute()V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.mute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    .prologue
    .line 1111
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 974
    invoke-virtual {p1, v5}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    .line 976
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 977
    if-eqz v0, :cond_3

    .line 978
    monitor-enter p0

    .line 979
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->B:Z

    if-nez v1, :cond_1

    .line 980
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->B:Z

    .line 981
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InlineVideoView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: firing end event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tracking"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "end"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "stateChange"

    aput-object v3, v2, v6

    const-string v3, "complete"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    :cond_2
    :goto_0
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1007
    return-void

    .line 988
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 993
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1094
    iput-boolean v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    .line 1096
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1097
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "error"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "Inline video play back failed."

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->t:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 1105
    :cond_1
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1074
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1075
    if-eqz v0, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "mute"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    .prologue
    .line 961
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 962
    if-eqz v0, :cond_0

    .line 963
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "paused"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 872
    :cond_0
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 8

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1014
    if-eqz v0, :cond_7

    .line 1015
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 1017
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:Z

    if-nez v2, :cond_1

    if-lt p2, v1, :cond_1

    .line 1018
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    sget-object v2, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InlineVideoView["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: firing q1 event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:Z

    .line 1022
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "tracking"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "q1"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1025
    :cond_1
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->z:Z

    if-nez v2, :cond_3

    mul-int/lit8 v2, v1, 0x2

    if-lt p2, v2, :cond_3

    .line 1026
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    sget-object v2, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InlineVideoView["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: firing midpoint event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->z:Z

    .line 1030
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "tracking"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "q2"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    :cond_3
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->A:Z

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x3

    if-lt p2, v1, :cond_5

    .line 1034
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1035
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InlineVideoView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: firing q3 event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->A:Z

    .line 1038
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tracking"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "q3"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1042
    iget v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->n:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    iget-wide v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q:J

    sub-long v4, v2, v4

    iget v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->n:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_6

    .line 1045
    iput-wide v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q:J

    .line 1047
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1051
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1052
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 888
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 889
    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stateChange"

    aput-object v3, v2, v5

    const-string v3, "readyToStart"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "updateVideoURL"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "durationChange"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1062
    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "seek"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 904
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 912
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c()V

    .line 914
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 915
    if-eqz v0, :cond_3

    .line 916
    monitor-enter p0

    .line 917
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:Z

    if-nez v1, :cond_1

    .line 918
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:Z

    .line 919
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InlineWebVideoView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: firing start event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tracking"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "start"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "stateChange"

    aput-object v3, v2, v5

    const-string v3, "playing"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    :cond_2
    :goto_0
    return-void

    .line 926
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 931
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    .prologue
    .line 941
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 951
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 952
    if-eqz v0, :cond_0

    .line 953
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "stopped"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    :cond_0
    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1084
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.pause could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 780
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 782
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 783
    if-eqz v0, :cond_0

    .line 784
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "removed"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 788
    return-void
.end method

.method public reposition(IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 794
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_6

    .line 795
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    .line 796
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "All position parameters must be greater than or equal to zero."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 802
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 803
    if-eqz v0, :cond_4

    .line 804
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, p3, :cond_3

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    if-lt v1, p4, :cond_3

    .line 807
    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l:I

    .line 808
    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m:I

    .line 809
    iput p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j:I

    .line 810
    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k:I

    .line 812
    invoke-direct {p0, v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Z)V

    .line 814
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 816
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 817
    invoke-static {v0, p0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "reposition"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0, v1, p3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 821
    invoke-direct {p0, v1, p4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {p0, v1, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {p0, v1, p2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 820
    invoke-virtual {v0, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    :cond_3
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "Cannot reposition the inline video as it will not fit within the anchor view."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :cond_4
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "Cannot position the InlineVideoView because the anchor view is gone."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :cond_5
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "Cannot position the InlineVideoView because the anchor view has not been set."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    :cond_6
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.reposition could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.seekTo could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnchorView(Lcom/millennialmedia/internal/MMWebView;IIIILcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;)V
    .locals 2

    .prologue
    .line 493
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_2

    .line 494
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "All position parameters must be greater than or equal to zero."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-interface {p6, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    .line 501
    iput-object p6, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->t:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    .line 502
    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j:I

    .line 503
    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k:I

    .line 504
    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l:I

    .line 505
    iput p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m:I

    .line 508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Z)V

    .line 510
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setPlaceholder(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 549
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 555
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    .line 556
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:Z

    .line 557
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:Z

    .line 558
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->z:Z

    .line 559
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->A:Z

    .line 560
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->B:Z

    .line 562
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i:Landroid/net/Uri;

    .line 564
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 567
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 568
    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "loading"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.start could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.stop could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public triggerTimeUpdate()V
    .locals 5

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 739
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->r:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.triggerTimeUpdate could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmute()V
    .locals 2

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->s:Z

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->g:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->unmute()V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.unmute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
