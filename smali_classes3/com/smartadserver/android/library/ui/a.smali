.class public Lcom/smartadserver/android/library/ui/a;
.super Landroid/widget/RelativeLayout;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/a$a;,
        Lcom/smartadserver/android/library/ui/a$e;,
        Lcom/smartadserver/android/library/ui/a$b;,
        Lcom/smartadserver/android/library/ui/a$d;,
        Lcom/smartadserver/android/library/ui/a$c;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Z

.field private static l:I

.field private static m:I


# instance fields
.field private final A:Ljava/lang/Object;

.field private B:Z

.field private C:Z

.field private D:J

.field private E:Z

.field private F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

.field private G:Z

.field private H:Z

.field private I:Landroid/webkit/WebView;

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/ui/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/Timer;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Lcom/smartadserver/android/library/ui/a$b;

.field private S:Ljava/lang/Object;

.field private T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

.field private U:Z

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/widget/ImageView;

.field a:Landroid/renderscript/RenderScript;

.field private aa:Landroid/widget/ProgressBar;

.field private ab:I

.field private ac:I

.field private ad:Landroid/os/Handler;

.field private ae:Z

.field private af:Landroid/widget/RelativeLayout;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Lcom/smartadserver/android/library/ui/b;

.field private aj:Lcom/smartadserver/android/library/ui/SASAdView$d;

.field private ak:Z

.field b:Landroid/renderscript/Allocation;

.field c:Landroid/renderscript/Allocation;

.field d:Landroid/renderscript/ScriptIntrinsicBlur;

.field e:I

.field f:Landroid/view/OrientationEventListener;

.field g:Z

.field h:Z

.field i:I

.field private n:Lcom/smartadserver/android/library/ui/SASAdView;

.field private o:Z

.field private p:Landroid/view/SurfaceView;

.field private q:Landroid/view/View;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Canvas;

.field private u:Landroid/graphics/SurfaceTexture;

.field private v:Landroid/widget/RelativeLayout;

.field private final w:Landroid/media/AudioManager;

.field private final x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private y:I

.field private z:Lcom/smartadserver/android/library/ui/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/a;->j:Ljava/lang/String;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/smartadserver/android/library/ui/a;->k:Z

    .line 80
    const/16 v0, 0xfa

    sput v0, Lcom/smartadserver/android/library/ui/a;->l:I

    .line 82
    const/16 v0, 0x12c

    sput v0, Lcom/smartadserver/android/library/ui/a;->m:I

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object v5, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    .line 93
    iput-object v5, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    .line 100
    iput-object v5, p0, Lcom/smartadserver/android/library/ui/a;->u:Landroid/graphics/SurfaceTexture;

    .line 106
    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->e:I

    .line 117
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    .line 119
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    .line 120
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->C:Z

    .line 121
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/a;->D:J

    .line 123
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    .line 132
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    .line 133
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    .line 134
    iput-object v5, p0, Lcom/smartadserver/android/library/ui/a;->L:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    .line 142
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->O:Z

    .line 143
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->P:Z

    .line 493
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/a;->S:Ljava/lang/Object;

    .line 497
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    .line 504
    iput v4, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    .line 505
    iput v4, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    .line 510
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->g:Z

    .line 511
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->h:Z

    .line 514
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ae:Z

    .line 526
    iput-object v5, p0, Lcom/smartadserver/android/library/ui/a;->aj:Lcom/smartadserver/android/library/ui/SASAdView$d;

    .line 757
    const/16 v2, -0xa

    iput v2, p0, Lcom/smartadserver/android/library/ui/a;->i:I

    .line 1780
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    .line 535
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    .line 536
    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 537
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    instance-of v2, v2, Lcom/smartadserver/android/library/SASInterstitialView;

    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    .line 540
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->i()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    .line 544
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/a;->setClickable(Z)V

    .line 547
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$1;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView$d;)V

    .line 604
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    .line 605
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 606
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    .line 610
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 611
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 612
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    .line 616
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 617
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$12;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$12;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->b(Landroid/content/Context;)V

    .line 631
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$22;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$22;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/content/Context;)V

    .line 643
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getBigPlayButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setInterstitialMode(Z)V

    .line 649
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SASNativeVideoProgress"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->N:Ljava/util/Timer;

    .line 651
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    .line 652
    new-instance v0, Lcom/smartadserver/android/library/ui/a$23;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a$23;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 663
    new-instance v0, Lcom/smartadserver/android/library/ui/a$24;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/ui/a$24;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->f:Landroid/view/OrientationEventListener;

    .line 690
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->y()V

    .line 691
    return-void
.end method

.method static synthetic A(Lcom/smartadserver/android/library/ui/a;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->y:I

    return v0
.end method

.method static synthetic B(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->l()V

    return-void
.end method

.method static synthetic C(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->S:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic D(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    return-object v0
.end method

.method static synthetic E(Lcom/smartadserver/android/library/ui/a;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    return v0
.end method

.method static synthetic F(Lcom/smartadserver/android/library/ui/a;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    return v0
.end method

.method static synthetic G(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->o()V

    return-void
.end method

.method static synthetic H(Lcom/smartadserver/android/library/ui/a;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->u:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic I(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->C:Z

    return v0
.end method

.method static synthetic J(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ai:Lcom/smartadserver/android/library/ui/b;

    return-object v0
.end method

.method static synthetic K(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->Q:Z

    return v0
.end method

.method static synthetic L(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->w()V

    return-void
.end method

.method static synthetic M(Lcom/smartadserver/android/library/ui/a;)J
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->getExpandCollapseAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic N(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView$d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aj:Lcom/smartadserver/android/library/ui/SASAdView$d;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;J)J
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/smartadserver/android/library/ui/a;->D:J

    return-wide p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->u:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->L:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1762
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setVideoDuration(I)V

    .line 1764
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getSkipOffset()Ljava/lang/String;

    move-result-object v2

    .line 1766
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getSkipPolicy()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    .line 1767
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    .line 1768
    if-lez p1, :cond_0

    .line 1769
    invoke-static {v2, p1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1771
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setCloseButtonAppearanceDelay(I)V

    .line 1772
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseButtonAppearanceDelay(I)V

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setSkipPolicy(I)V

    .line 1775
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->p()V

    .line 1778
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1766
    goto :goto_0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2140
    if-ltz p1, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2141
    :cond_0
    if-ltz p2, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2142
    :cond_1
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2143
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 801
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    .line 802
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 803
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a;->setOnSwipeTouchListener(Landroid/view/View;)V

    .line 808
    invoke-direct {p0, p0}, Lcom/smartadserver/android/library/ui/a;->setOnSwipeTouchListener(Landroid/view/View;)V

    .line 809
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->x()V

    .line 811
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$25;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$25;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;)V

    .line 861
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 784
    new-instance v0, Lcom/smartadserver/android/library/ui/b;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ai:Lcom/smartadserver/android/library/ui/b;

    .line 786
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 787
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v1

    .line 789
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 790
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 791
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 792
    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 794
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ai:Lcom/smartadserver/android/library/ui/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/b;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ai:Lcom/smartadserver/android/library/ui/b;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1680
    new-instance v0, Lcom/smartadserver/android/library/ui/a$8;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/smartadserver/android/library/ui/a$8;-><init>(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 1708
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1709
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;II)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/a;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->setMonitorProgressEnabled(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)[I
    .locals 1

    .prologue
    .line 2146
    if-nez p2, :cond_0

    .line 2147
    invoke-static {p1, p3}, Lcom/smartadserver/android/library/g/c;->a(Landroid/view/View;I)[I

    move-result-object v0

    .line 2149
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/smartadserver/android/library/g/c;->a(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a;Landroid/view/View;Landroid/view/View;I)[I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/view/View;Landroid/view/View;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/smartadserver/android/library/ui/a;->y:I

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v5, 0xd

    const/16 v7, 0x8

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1045
    new-instance v0, Lcom/smartadserver/android/library/ui/a$28;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/smartadserver/android/library/ui/a$28;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    .line 1084
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1085
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1086
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lcom/smartadserver/android/library/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    .line 1089
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1090
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1091
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1092
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1093
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/view/ViewGroup;)V

    .line 1100
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    .line 1101
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1102
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    .line 1106
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 1107
    sget-object v3, Lcom/smartadserver/android/library/f/a;->y:[Landroid/graphics/Bitmap;

    move v0, v1

    .line 1108
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1109
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v5, 0x50

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1112
    const/16 v0, 0x80

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 1114
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 1116
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1117
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1118
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1119
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 1120
    invoke-virtual {v3, v1, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1121
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$2;

    invoke-direct {v1, p0, v2}, Lcom/smartadserver/android/library/ui/a$2;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1129
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/a;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    return p1
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 873
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 874
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->k()V

    .line 875
    return-void

    .line 873
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->C:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 696
    if-eqz p1, :cond_0

    .line 697
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v1

    .line 698
    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {v1, p1, v0}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/a;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    return p1
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->O:Z

    return p1
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/a;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/a;->D:J

    return-wide v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    return p1
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    return p1
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    return-object v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    return p1
.end method

.method private getExpandCollapseAnimationDuration()J
    .locals 4

    .prologue
    .line 2257
    sget v0, Lcom/smartadserver/android/library/ui/a;->m:I

    int-to-long v2, v0

    .line 2258
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    const-wide/16 v0, 0x0

    .line 2261
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private getInitialMuteState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1824
    .line 1825
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getAudioMode()I

    move-result v2

    .line 1826
    if-nez v2, :cond_1

    move v0, v1

    .line 1834
    :cond_0
    :goto_0
    return v0

    .line 1829
    :cond_1
    if-ne v2, v1, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1832
    if-eqz v2, :cond_2

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getOnSwipeTouchListener()Lcom/smartadserver/android/library/ui/a$a;
    .locals 2

    .prologue
    .line 2120
    new-instance v0, Lcom/smartadserver/android/library/ui/a$17;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/ui/a$17;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/a;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a;->b(Z)V

    return-void
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/smartadserver/android/library/ui/a;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->O:Z

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/smartadserver/android/library/ui/a;->l:I

    return v0
.end method

.method static synthetic i(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->v()V

    return-void
.end method

.method static synthetic i(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->Q:Z

    return p1
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/smartadserver/android/library/ui/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->q()V

    return-void
.end method

.method static synthetic j(Lcom/smartadserver/android/library/ui/a;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    return p1
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    return-void

    :cond_0
    move v0, v1

    .line 778
    goto :goto_0

    .line 779
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic k(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->r()V

    return-void
.end method

.method static synthetic l(Lcom/smartadserver/android/library/ui/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a$d;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-nez v0, :cond_0

    .line 866
    const-string v0, "resume"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 870
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->e:I

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->e:I

    goto :goto_0
.end method

.method static synthetic n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->i(Landroid/content/Context;)I

    move-result v0

    .line 1140
    if-nez v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1548
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_a

    .line 1549
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBlurRadius()I

    move-result v0

    .line 1550
    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->G:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 1551
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    .line 1552
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/a$d;->getVideoWidth()I

    move-result v3

    .line 1553
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/a$d;->getVideoHeight()I

    move-result v4

    .line 1557
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_0

    move v2, v1

    .line 1559
    :cond_0
    if-gtz v0, :cond_1

    if-eqz v2, :cond_2

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBlurDownScaleFactorHighEnd()I

    move-result v1

    .line 1563
    :cond_2
    const/4 v5, 0x4

    if-gt v0, v5, :cond_3

    if-lez v0, :cond_4

    if-eqz v2, :cond_4

    .line 1565
    :cond_3
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBlurDownScaleFactorLowEnd()I

    move-result v1

    .line 1568
    :cond_4
    if-lez v0, :cond_5

    .line 1569
    div-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1574
    :cond_5
    div-int v2, v3, v1

    .line 1575
    div-int v1, v4, v1

    .line 1576
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    .line 1578
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1580
    if-lez v0, :cond_6

    .line 1581
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    .line 1583
    :cond_6
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1584
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/a;->t:Landroid/graphics/Canvas;

    :cond_7
    move v1, v0

    .line 1588
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1590
    if-lez v1, :cond_b

    .line 1592
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_8

    .line 1593
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    .line 1594
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->b:Landroid/renderscript/Allocation;

    .line 1595
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->c:Landroid/renderscript/Allocation;

    .line 1597
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 1598
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 1599
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 1601
    :cond_8
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->b:Landroid/renderscript/Allocation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 1602
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 1603
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->c:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 1611
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getTintOpacity()I

    move-result v0

    .line 1612
    if-lez v0, :cond_9

    .line 1613
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getTintColor()I

    move-result v1

    .line 1614
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->t:Landroid/graphics/Canvas;

    int-to-double v4, v0

    const-wide v6, 0x4004666666666666L    # 2.55

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1618
    :cond_9
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :cond_a
    monitor-exit p0

    return-void

    .line 1606
    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 1607
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic o(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    return v0
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1624
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getSkipPolicy()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1625
    :goto_0
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 1626
    return-void

    :cond_0
    move v0, v2

    .line 1624
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1625
    goto :goto_1
.end method

.method static synthetic p(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->getInitialMuteState()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    return-object v0
.end method

.method private q()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$6;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$6;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1645
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$7;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$7;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1677
    return-void
.end method

.method static synthetic r(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->s()V

    return-void
.end method

.method static synthetic s(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1783
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->isViewable()Z

    move-result v0

    .line 1784
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isAutoplay()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1785
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->a()V

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isAutoplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1789
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1790
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-eqz v0, :cond_0

    .line 1794
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    goto :goto_0

    .line 1797
    :cond_2
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    goto :goto_0
.end method

.method private setMonitorProgressEnabled(Z)V
    .locals 7

    .prologue
    .line 2072
    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a;->S:Ljava/lang/Object;

    monitor-enter v6

    .line 2073
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$b;->cancel()Z

    .line 2076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    .line 2085
    :cond_0
    :goto_0
    monitor-exit v6

    .line 2086
    return-void

    .line 2077
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2079
    new-instance v0, Lcom/smartadserver/android/library/ui/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/ui/a$b;-><init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    .line 2082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a;->D:J

    .line 2083
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->N:Ljava/util/Timer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->R:Lcom/smartadserver/android/library/ui/a$b;

    sget v2, Lcom/smartadserver/android/library/ui/a;->l:I

    int-to-long v2, v2

    sget v4, Lcom/smartadserver/android/library/ui/a;->l:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 2085
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setOnSwipeTouchListener(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2131
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->getOnSwipeTouchListener()Lcom/smartadserver/android/library/ui/a$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2132
    return-void
.end method

.method private setupVPAIDWebView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$3;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/ui/a$3;-><init>(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1803
    iget-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v2, :cond_0

    .line 1804
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a;->setMonitorProgressEnabled(Z)V

    .line 1808
    :cond_0
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-boolean v2, v2, Lcom/smartadserver/android/library/ui/a$d;->a:Z

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 1809
    :cond_2
    if-eqz v0, :cond_4

    .line 1810
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->P:Z

    if-nez v0, :cond_3

    .line 1811
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->P:Z

    .line 1812
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 1815
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getReward()Lcom/smartadserver/android/library/model/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1816
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getReward()Lcom/smartadserver/android/library/model/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 1819
    :cond_3
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->v()V

    .line 1821
    :cond_4
    return-void
.end method

.method static synthetic t(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->t()V

    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1840
    new-instance v0, Lcom/smartadserver/android/library/ui/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/ui/a$d;-><init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    .line 1842
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$11;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$11;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a$d;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1888
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$13;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$13;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a$d;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1896
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$14;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$14;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a$d;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1974
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$15;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$15;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a$d;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1982
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1983
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v1, v0, v0}, Lcom/smartadserver/android/library/ui/a$d;->setVolume(FF)V

    .line 1985
    return-void

    .line 1982
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method static synthetic u(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    return v0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1989
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getHtmlLayerAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v1

    .line 1997
    if-nez v1, :cond_2

    .line 1998
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1999
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setActionLayerVisible(Z)V

    .line 2002
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 2007
    invoke-direct {p0, v2}, Lcom/smartadserver/android/library/ui/a;->c(Z)V

    .line 2009
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 2011
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isAutoclose()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2012
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 2021
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setStickToTopEnabled(Z)V

    .line 2022
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Z)V

    .line 2025
    if-eqz v1, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    new-instance v2, Lcom/smartadserver/android/library/ui/a$16;

    invoke-direct {v2, p0, v1}, Lcom/smartadserver/android/library/ui/a$16;-><init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/model/SASAdElement;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2015
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseButtonAppearanceDelay(I)V

    .line 2016
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    goto :goto_1
.end method

.method static synthetic v(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    return v0
.end method

.method static synthetic w(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    return-object v0
.end method

.method private w()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2047
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2048
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->getDuration()I

    move-result v6

    .line 2049
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getProgressOffset()Ljava/lang/String;

    move-result-object v0

    .line 2050
    invoke-static {v0, v6}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;I)I

    move-result v7

    .line 2053
    iget-object v8, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/smartadserver/android/library/ui/a$c;

    const-string v3, "start"

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    iget-object v8, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/smartadserver/android/library/ui/a$c;

    int-to-double v2, v6

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v10

    double-to-int v2, v2

    const-string v3, "firstQuartile"

    const/4 v4, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    iget-object v8, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/smartadserver/android/library/ui/a$c;

    int-to-double v2, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v10

    double-to-int v2, v2

    const-string v3, "midpoint"

    const/4 v4, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    iget-object v8, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/smartadserver/android/library/ui/a$c;

    int-to-double v2, v6

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v10

    double-to-int v2, v2

    const-string v3, "thirdQuartile"

    const/4 v4, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    if-lez v7, :cond_0

    .line 2063
    iget-object v6, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/smartadserver/android/library/ui/a$c;

    const-string v3, "progress"

    const/4 v4, -0x1

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2069
    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->getOnSwipeTouchListener()Lcom/smartadserver/android/library/ui/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setSwipeListenerOnActionLayer(Landroid/view/View$OnTouchListener;)V

    .line 2136
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 2155
    new-instance v0, Lcom/smartadserver/android/library/ui/a$18;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a$18;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aj:Lcom/smartadserver/android/library/ui/SASAdView$d;

    .line 2244
    return-void
.end method

.method static synthetic y(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->k()V

    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->aj:Lcom/smartadserver/android/library/ui/SASAdView$d;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView$d;)V

    .line 2253
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->expand()V

    .line 2254
    return-void
.end method

.method static synthetic z(Lcom/smartadserver/android/library/ui/a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->P:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    .line 879
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 881
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->m()V

    .line 882
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->start()V

    .line 893
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Lcom/smartadserver/android/library/ui/a$26;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/a$26;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 900
    monitor-exit v1

    .line 901
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "instance.play();"

    .line 889
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASAdDisplayException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 1230
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "Native video format is not supported on Android versions prior to 4.1 (Jelly Bean)"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_0
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    .line 1234
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->Q:Z

    .line 1236
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    .line 1245
    :cond_1
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->p()V

    .line 1247
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setOpenActionEnabled(Z)V

    .line 1250
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setCurrentPosition(I)V

    .line 1252
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 1254
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 1258
    :cond_2
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getVPAIDUrl()Ljava/lang/String;

    move-result-object v4

    .line 1259
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v3

    .line 1263
    :cond_3
    if-nez v0, :cond_6

    if-nez v4, :cond_6

    .line 1264
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "No video or VPAID URL available"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_4
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "360 video format is not supported on this device"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 1249
    goto :goto_0

    .line 1267
    :cond_6
    if-eqz v4, :cond_e

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    .line 1269
    iget-object v5, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v5

    .line 1271
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->O:Z

    .line 1272
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->P:Z

    .line 1275
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 1276
    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-eqz v3, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->H:Z

    .line 1278
    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBlurRadius()I

    move-result v3

    if-ltz v3, :cond_10

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v3

    if-nez v3, :cond_10

    :goto_3
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    :try_start_1
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-eqz v1, :cond_11

    .line 1282
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaWidth()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    .line 1283
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getPortraitWidth()I

    move-result v0

    if-lez v0, :cond_7

    .line 1285
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getPortraitWidth()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    .line 1288
    :cond_7
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaHeight()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    .line 1289
    iget v0, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getPortraitHeight()I

    move-result v0

    if-lez v0, :cond_8

    .line 1291
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getPortraitHeight()I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    .line 1293
    :cond_8
    invoke-direct {p0, v4}, Lcom/smartadserver/android/library/ui/a;->setupVPAIDWebView(Ljava/lang/String;)V

    .line 1306
    :goto_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getPosterImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 1307
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 1308
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1316
    :goto_5
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->H:Z

    if-eqz v0, :cond_a

    .line 1317
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundResizeMode()I

    move-result v1

    .line 1320
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 1321
    if-nez v1, :cond_14

    .line 1322
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1327
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1328
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v6, v1}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 1329
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->n()V

    .line 1332
    :cond_a
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->G:Z

    if-eqz v0, :cond_b

    .line 1333
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1336
    :cond_b
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->H:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->G:Z

    if-eqz v0, :cond_d

    .line 1337
    :cond_c
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1338
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_15

    .line 1343
    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1347
    :goto_8
    :try_start_3
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v0, :cond_18

    .line 1348
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-nez v0, :cond_16

    .line 1349
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "MediaPlayer was reset"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    :try_start_4
    new-instance v1, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_e
    move v3, v2

    .line 1267
    goto/16 :goto_1

    :cond_f
    move v3, v2

    .line 1276
    goto/16 :goto_2

    :cond_10
    move v1, v2

    .line 1278
    goto/16 :goto_3

    .line 1295
    :cond_11
    :try_start_5
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-nez v1, :cond_12

    .line 1296
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->u()V

    .line 1300
    :goto_9
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/smartadserver/android/library/ui/a$d;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1301
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->prepareAsync()V

    goto/16 :goto_4

    .line 1298
    :cond_12
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/a$d;->reset()V

    goto :goto_9

    .line 1311
    :cond_13
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1323
    :cond_14
    if-ne v1, v7, :cond_9

    .line 1324
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_6

    .line 1341
    :cond_15
    const-wide/16 p2, 0x0

    goto :goto_7

    .line 1352
    :cond_16
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a$d;->d:Z

    if-eqz v0, :cond_17

    .line 1353
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer returned error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a$d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a$d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_17
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    if-nez v0, :cond_19

    .line 1357
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "Timeout when preparing MediaPlayer"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :cond_18
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1361
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when loading VPAID ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1369
    :cond_19
    :try_start_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getCallToActionType()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getCallToActionCustomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(ILjava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getVideoVerticalPosition()I

    move-result v1

    .line 1373
    const/16 v0, 0xd

    .line 1374
    if-nez v1, :cond_1c

    .line 1375
    const/16 v0, 0xa

    .line 1380
    :cond_1a
    :goto_a
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1381
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1384
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v2, Lcom/smartadserver/android/library/ui/a$4;

    invoke-direct {v2, p0, v1}, Lcom/smartadserver/android/library/ui/a$4;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    new-instance v0, Lcom/smartadserver/android/library/ui/a$5;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a$5;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    .line 1537
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v1, :cond_1b

    .line 1538
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    :cond_1b
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1543
    return-void

    .line 1376
    :cond_1c
    if-ne v1, v7, :cond_1a

    .line 1377
    const/16 v0, 0xc

    goto :goto_a

    .line 1344
    :catch_1
    move-exception v0

    goto/16 :goto_8
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 971
    const-string v0, "click"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 972
    const-string v0, "timeToClick"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    .line 715
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    .line 717
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->o:Z

    if-eqz v1, :cond_2

    .line 718
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a;->c(Ljava/lang/String;)Z

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getClickUrlFromBackground(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->a(Ljava/lang/String;)V

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v1

    if-nez v1, :cond_5

    .line 729
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->z()V

    .line 731
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v1

    if-nez v1, :cond_5

    .line 732
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->ae:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isRestartWhenEnteringFullscreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/a$d;->seekTo(I)V

    .line 735
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setCurrentPosition(I)V

    .line 736
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a;->ae:Z

    .line 737
    const-string v2, "rewind"

    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 740
    :cond_3
    if-nez v0, :cond_4

    .line 741
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->l()V

    .line 742
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    if-eqz v0, :cond_6

    .line 743
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->a()V

    .line 749
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c()V

    goto :goto_0

    .line 746
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->h:Z

    goto :goto_1

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ZZ)V
    .locals 6

    .prologue
    .line 983
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 985
    :goto_0
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    .line 987
    sget-object v1, Lcom/smartadserver/android/library/ui/a;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoLayer setMuted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v3

    .line 991
    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, "mute"

    move-object v2, v1

    .line 992
    :goto_1
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 993
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 995
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v4, v1, v1}, Lcom/smartadserver/android/library/ui/a$d;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 1006
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 1009
    :cond_1
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->m()V

    .line 1010
    monitor-exit v3

    .line 1011
    return-void

    .line 983
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 991
    :cond_3
    const-string v1, "unmute"

    move-object v2, v1

    goto :goto_1

    .line 993
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 996
    :catch_0
    move-exception v1

    .line 998
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1000
    :cond_5
    :try_start_3
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    if-eqz v1, :cond_0

    .line 1001
    if-eqz p1, :cond_6

    const-string v1, "instance.mute();"

    .line 1002
    :goto_4
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1001
    :cond_6
    const-string v1, "instance.unmute();"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public b()V
    .locals 4

    .prologue
    .line 923
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 925
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->m()V

    .line 926
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->pause()V

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    .line 941
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v2, Lcom/smartadserver/android/library/ui/a$27;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/a$27;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    monitor-exit v1

    .line 948
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "instance.pause();"

    .line 935
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    goto :goto_0

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->F:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getEventTrackingURL(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1021
    if-eqz v2, :cond_2

    .line 1022
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v3

    .line 1023
    if-eqz v3, :cond_2

    .line 1024
    const-string v0, "-1"

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v1, :cond_0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/a$d;->getCurrentPosition()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1032
    :cond_0
    :goto_0
    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 1033
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1034
    const-string v6, "[eventValue]"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1035
    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 1032
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1041
    :cond_2
    return-void

    .line 1029
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 951
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a$d;->seekTo(I)V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setCurrentPosition(I)V

    .line 956
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->a()V

    .line 957
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->z()V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setActionLayerVisible(Z)V

    .line 964
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Z)V

    .line 965
    const-string v0, "rewind"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 968
    return-void

    .line 957
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->E:Z

    return v0
.end method

.method public e()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2266
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setVisibility(I)V

    .line 2271
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getLeft()I

    move-result v1

    aput v1, v0, v7

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v2

    aget v2, v2, v6

    sub-int/2addr v1, v2

    aput v1, v0, v6

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    aput v1, v0, v8

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v1

    aput v1, v0, v9

    .line 2277
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandPlaceholderView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/a;->a(Landroid/view/View;Landroid/view/View;I)[I

    move-result-object v1

    .line 2279
    const-string v2, "x"

    new-array v3, v8, [F

    aget v4, v0, v7

    int-to-float v4, v4

    aput v4, v3, v7

    aget v4, v1, v7

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2281
    const-string v3, "y"

    new-array v4, v8, [F

    aget v5, v0, v6

    int-to-float v5, v5

    aput v5, v4, v7

    aget v5, v1, v6

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2283
    new-array v4, v8, [I

    aget v5, v0, v8

    aput v5, v4, v7

    aget v5, v1, v8

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 2284
    new-instance v5, Lcom/smartadserver/android/library/ui/a$19;

    invoke-direct {v5, p0}, Lcom/smartadserver/android/library/ui/a$19;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2292
    new-array v5, v8, [I

    aget v0, v0, v9

    aput v0, v5, v7

    aget v0, v1, v9

    aput v0, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2293
    new-instance v1, Lcom/smartadserver/android/library/ui/a$20;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$20;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2301
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2302
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2307
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->getExpandCollapseAnimationDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2309
    new-instance v0, Lcom/smartadserver/android/library/ui/a$21;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a$21;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2344
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2345
    return-void
.end method

.method public f()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a;->g()V

    .line 2350
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->N:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2351
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a()V

    .line 2352
    return-void
.end method

.method public declared-synchronized g()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2355
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2356
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->stop()V

    .line 2358
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->reset()V

    .line 2359
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->release()V

    .line 2360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    .line 2362
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ab:I

    .line 2363
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a;->ac:I

    .line 2365
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2367
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->q:Landroid/view/View;

    .line 2370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->u:Landroid/graphics/SurfaceTexture;

    .line 2373
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 2374
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2377
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/a/b;

    if-eqz v0, :cond_2

    .line 2378
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->d()V

    .line 2381
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    .line 2384
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2385
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    .line 2386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    .line 2387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->L:Ljava/lang/String;

    .line 2388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ak:Z

    .line 2389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    .line 2390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->g:Z

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->h:Z

    .line 2393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->ae:Z

    .line 2396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_8

    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->i()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->B:Z

    .line 2398
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 2399
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2400
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    .line 2405
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2406
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->aa:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2407
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->W:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->V:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2409
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 2410
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setActionLayerVisible(Z)V

    .line 2411
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setReplayEnabled(Z)V

    .line 2414
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->w:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2417
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->af:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2418
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2419
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2420
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2421
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ah:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2422
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_5

    .line 2423
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 2424
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->d:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 2425
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 2426
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 2427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->a:Landroid/renderscript/RenderScript;

    .line 2429
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 2430
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->r:Landroid/graphics/Bitmap;

    .line 2433
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 2434
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a;->s:Landroid/graphics/Bitmap;

    .line 2439
    :cond_7
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ai:Lcom/smartadserver/android/library/ui/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/b;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2440
    monitor-exit p0

    return-void

    .line 2384
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2355
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move v0, v2

    .line 2396
    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1133
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1134
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->n()V

    .line 1135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 1216
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1217
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1219
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->I:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public setViewable(Z)V
    .locals 3

    .prologue
    .line 1713
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a;->A:Ljava/lang/Object;

    monitor-enter v2

    .line 1716
    const/4 v0, 0x1

    .line 1717
    :try_start_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    if-eqz v1, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->z:Lcom/smartadserver/android/library/ui/a$d;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    move v1, v0

    .line 1723
    :goto_0
    if-nez p1, :cond_4

    .line 1725
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/a/b;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->f()V

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1730
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$9;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$9;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1757
    :cond_1
    :goto_1
    monitor-exit v2

    .line 1758
    return-void

    .line 1719
    :cond_2
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a;->J:Z

    if-eqz v1, :cond_6

    .line 1720
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->K:Z

    move v1, v0

    goto :goto_0

    .line 1739
    :cond_3
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a;->m()V

    goto :goto_1

    .line 1757
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1743
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/a/b;

    if-eqz v0, :cond_5

    .line 1744
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->p:Landroid/view/SurfaceView;

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->e()V

    .line 1747
    :cond_5
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a;->U:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->T:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a;->ad:Landroid/os/Handler;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$10;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$10;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_0
.end method
