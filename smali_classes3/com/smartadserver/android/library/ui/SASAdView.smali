.class public abstract Lcom/smartadserver/android/library/ui/SASAdView;
.super Landroid/widget/FrameLayout;
.source "SASAdView.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/SASAdView$h;,
        Lcom/smartadserver/android/library/ui/SASAdView$b;,
        Lcom/smartadserver/android/library/ui/SASAdView$g;,
        Lcom/smartadserver/android/library/ui/SASAdView$a;,
        Lcom/smartadserver/android/library/ui/SASAdView$c;,
        Lcom/smartadserver/android/library/ui/SASAdView$e;,
        Lcom/smartadserver/android/library/ui/SASAdView$i;,
        Lcom/smartadserver/android/library/ui/SASAdView$d;,
        Lcom/smartadserver/android/library/ui/SASAdView$f;
    }
.end annotation


# static fields
.field private static G:Landroid/graphics/Bitmap;

.field private static H:Landroid/graphics/drawable/Drawable;

.field private static U:Ljava/lang/String;

.field private static V:Z

.field public static a:I

.field public static b:I

.field public static c:Z

.field private static final r:Ljava/lang/String;

.field private static s:Z

.field private static t:I

.field private static u:I

.field private static v:Z


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/FrameLayout;

.field private D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/smartadserver/android/library/ui/SASAdView$d;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Lcom/smartadserver/android/library/ui/SASAdView$b;

.field private I:Ljava/util/Timer;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Landroid/os/HandlerThread;

.field private N:Ljava/lang/Object;

.field private O:D

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private R:Z

.field private S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/ui/SASAdView$e;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/ui/SASAdView$c;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/view/View;

.field private aA:I

.field private aB:Landroid/view/ViewGroup;

.field private aC:[I

.field private aD:[I

.field private aE:[I

.field private aF:F

.field private aG:F

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aa:Landroid/widget/RelativeLayout;

.field private ab:Lcom/smartadserver/android/library/ui/a;

.field private ac:Landroid/widget/FrameLayout;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/graphics/drawable/ShapeDrawable;

.field private af:Landroid/widget/LinearLayout;

.field private ag:I

.field private ah:Landroid/widget/FrameLayout;

.field private ai:Landroid/widget/FrameLayout;

.field private aj:Landroid/view/ViewGroup$LayoutParams;

.field private ak:Landroid/view/ViewGroup$LayoutParams;

.field private al:Landroid/widget/RelativeLayout;

.field private am:Landroid/widget/RelativeLayout;

.field private an:Z

.field private ao:Landroid/location/Location;

.field private ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private aq:Ljava/util/Timer;

.field private ar:Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

.field private as:Landroid/widget/FrameLayout;

.field private at:Landroid/widget/LinearLayout;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private aw:I

.field private ax:I

.field private ay:Z

.field private az:Z

.field protected d:I

.field public e:Lcom/smartadserver/android/library/a/c;

.field public f:Lcom/smartadserver/android/library/e/a/c;

.field g:Landroid/os/Handler;

.field public h:Lcom/smartadserver/android/library/controller/a;

.field public i:Lcom/smartadserver/android/library/controller/c;

.field public j:Lcom/smartadserver/android/library/controller/b;

.field public k:Lcom/smartadserver/android/library/ui/d;

.field public l:Lcom/smartadserver/android/library/ui/d;

.field public m:Lcom/smartadserver/android/library/c/h;

.field public n:Lcom/smartadserver/android/library/model/SASAdElement;

.field public o:Lcom/smartadserver/android/library/ui/SASCloseButton;

.field p:F

.field q:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    const-class v0, Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    .line 104
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    .line 117
    const/16 v0, 0x1770

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->a:I

    .line 126
    const/16 v0, 0x2710

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->b:I

    .line 134
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->c:Z

    .line 137
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->a:I

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->t:I

    .line 138
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->b:I

    sput v0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 139
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->c:Z

    sput-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->v:Z

    .line 228
    sput-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->G:Landroid/graphics/Bitmap;

    .line 229
    sput-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->H:Landroid/graphics/drawable/Drawable;

    .line 419
    const-string v0, "http://mobile.smartadserver.com"

    sput-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->U:Ljava/lang/String;

    .line 440
    sput-boolean v1, Lcom/smartadserver/android/library/ui/SASAdView;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 630
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Z

    .line 142
    const/16 v0, -0xa

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:I

    .line 209
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Z

    .line 223
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Z

    .line 232
    iput v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:I

    .line 237
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Ljava/lang/String;

    .line 240
    const/16 v0, 0xc8

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:I

    .line 241
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Z

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->N:Ljava/lang/Object;

    .line 261
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    .line 270
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->R:Z

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->S:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->T:Ljava/util/ArrayList;

    .line 577
    iput v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    .line 578
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    .line 579
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    .line 599
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    .line 2324
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ar:Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    .line 2844
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->q:Z

    .line 2845
    const v0, 0x7fffffff

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aw:I

    .line 2846
    const v0, 0x7fffffff

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ax:I

    .line 2847
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    .line 2848
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->az:Z

    .line 2849
    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    .line 2851
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aC:[I

    .line 2852
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aD:[I

    .line 2853
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aE:[I

    .line 4059
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aF:F

    .line 631
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Landroid/content/Context;)V

    .line 632
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "SASAdview created"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 641
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Z

    .line 142
    const/16 v0, -0xa

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:I

    .line 209
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Z

    .line 223
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Z

    .line 232
    iput v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:I

    .line 237
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Ljava/lang/String;

    .line 240
    const/16 v0, 0xc8

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:I

    .line 241
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Z

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->N:Ljava/lang/Object;

    .line 261
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    .line 270
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->R:Z

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->S:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->T:Ljava/util/ArrayList;

    .line 577
    iput v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    .line 578
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    .line 579
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    .line 599
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    .line 2324
    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ar:Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    .line 2844
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->q:Z

    .line 2845
    const v0, 0x7fffffff

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aw:I

    .line 2846
    const v0, 0x7fffffff

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ax:I

    .line 2847
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    .line 2848
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->az:Z

    .line 2849
    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    .line 2851
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aC:[I

    .line 2852
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aD:[I

    .line 2853
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aE:[I

    .line 4059
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aF:F

    .line 642
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Landroid/content/Context;)V

    .line 643
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "SASAdview created"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method static synthetic A(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private A()V
    .locals 1

    .prologue
    .line 1994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Z

    .line 1995
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->u()V

    .line 1996
    return-void
.end method

.method private B()V
    .locals 1

    .prologue
    .line 2393
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$10;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$10;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 2405
    return-void
.end method

.method static synthetic B(Lcom/smartadserver/android/library/ui/SASAdView;)[I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aC:[I

    return-object v0
.end method

.method private C()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2696
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$16;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$16;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2841
    return-void
.end method

.method static synthetic C(Lcom/smartadserver/android/library/ui/SASAdView;)[I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aD:[I

    return-object v0
.end method

.method static synthetic D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isStickToTopSkippable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseButtonAppearanceDelay(I)V

    .line 2871
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$17;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$17;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View$OnClickListener;)V

    .line 2879
    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/smartadserver/android/library/ui/SASAdView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aw:I

    return v0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->setVisibility(I)V

    .line 3099
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->g()V

    .line 3100
    return-void
.end method

.method static synthetic F(Lcom/smartadserver/android/library/ui/SASAdView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ax:I

    return v0
.end method

.method private F()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3198
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setInAppBrowserMode(Z)V

    .line 3200
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->a()V

    .line 3201
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 3202
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3203
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3204
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3206
    :cond_0
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 3234
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3235
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->F()V

    .line 3237
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ak:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 3238
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ak:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3243
    :cond_0
    :goto_0
    return-void

    .line 3241
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->m()V

    goto :goto_0
.end method

.method static synthetic G(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->az:Z

    return v0
.end method

.method private H()V
    .locals 3

    .prologue
    const/16 v2, -0xa

    .line 3857
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    if-eq v0, v2, :cond_0

    .line 3859
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "restore rotation mode"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3862
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3863
    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    .line 3865
    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->G()V

    return-void
.end method

.method private I()V
    .locals 5

    .prologue
    .line 4381
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4382
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4383
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4385
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4388
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4390
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4391
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;I)I
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aw:I

    return p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ak:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
    .locals 0

    .prologue
    .line 101
    invoke-direct/range {p0 .. p9}, Lcom/smartadserver/android/library/ui/SASAdView;->b(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;ZZ)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2894
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aC:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2895
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aE:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2896
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aD:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 2898
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    if-nez v3, :cond_2

    .line 2899
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    .line 2900
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2901
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2902
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2903
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2905
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ax:I

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->az:Z

    if-eqz v0, :cond_1

    .line 2906
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    .line 2911
    :goto_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v0

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->setY(F)V

    .line 2912
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2915
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->D()V

    .line 2978
    :cond_0
    :goto_1
    return-void

    .line 2908
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    goto :goto_0

    .line 2917
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    if-eqz v3, :cond_0

    .line 2918
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->o()V

    .line 2921
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 2925
    if-ne v0, v1, :cond_4

    .line 2926
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2927
    add-int v0, v3, v2

    sub-int/2addr v0, v1

    .line 2939
    :goto_2
    const-wide/16 v4, 0xc8

    .line 2942
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$18;

    invoke-direct {v1, p0, v3}, Lcom/smartadserver/android/library/ui/SASAdView$18;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V

    .line 2967
    if-eqz p2, :cond_6

    .line 2968
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2969
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2970
    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 2971
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2972
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2929
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2

    .line 2932
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2933
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aD:[I

    aget v0, v0, v4

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aE:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    goto :goto_2

    .line 2935
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    goto :goto_2

    .line 2975
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;Ljava/lang/String;)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 4178
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 4180
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4183
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4186
    array-length v0, v3

    new-array v4, v0, [Landroid/graphics/Rect;

    .line 4187
    array-length v0, v3

    new-array v5, v0, [I

    move v0, v1

    .line 4189
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 4190
    aget-object v6, v3, v0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4191
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v0

    .line 4192
    aget-object v6, v6, v8

    invoke-static {v6}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v6

    aput-object v6, v4, v0

    .line 4189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4196
    :cond_0
    if-eqz v4, :cond_1

    .line 4206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v1

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v0, v3

    float-to-int v3, v0

    .line 4207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v6, v1

    sub-float/2addr v0, v6

    iget v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v0, v6

    float-to-int v6, v0

    move v0, v1

    .line 4208
    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 4209
    aget-object v7, v4, v0

    .line 4211
    if-eqz v7, :cond_2

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4212
    aget v3, v5, v0

    aput v3, v2, v1

    .line 4213
    aput v0, v2, v8

    .line 4222
    :cond_1
    return-object v2

    .line 4208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4178
    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASAdView;I)I
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ax:I

    return p1
.end method

.method private b(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
    .locals 13

    .prologue
    .line 782
    sget-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported Mediation SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/smartadserver/android/library/c/j;->a()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    if-eqz p6, :cond_0

    .line 790
    new-instance v2, Lcom/smartadserver/android/library/exception/SASPendingRequestException;

    const-string v3, "An ad request is currently pending on this SASAdView"

    invoke-direct {v2, v3}, Lcom/smartadserver/android/library/exception/SASPendingRequestException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    if-eqz p8, :cond_4

    const/4 v2, 0x2

    .line 799
    :goto_1
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v3, v2}, Lcom/smartadserver/android/library/controller/a;->a(I)V

    .line 802
    if-nez p9, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Z)V

    .line 804
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLoaderView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Landroid/view/View;

    .line 805
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 806
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View;)V

    .line 809
    :cond_2
    const/4 v2, 0x0

    .line 812
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ao:Landroid/location/Location;

    .line 814
    if-nez v3, :cond_3

    .line 816
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/g/c;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 819
    :cond_3
    if-eqz v3, :cond_6

    .line 821
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :try_start_1
    const-string v2, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v10, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 823
    const-string v2, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_3
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;Z)V

    .line 845
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    if-nez v2, :cond_0

    if-nez p8, :cond_0

    .line 847
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:I

    mul-int/lit16 v11, v2, 0x3e8

    .line 848
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    .line 849
    iget-object v12, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$23;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView$23;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZ)V

    int-to-long v6, v11

    int-to-long v8, v11

    move-object v4, v12

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 798
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 802
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 824
    :catch_0
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    .line 825
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 824
    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object v10, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->x()V

    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASAdView;I)I
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    return p1
.end method

.method private c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 1642
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1644
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1646
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1647
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1650
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1652
    const/4 v4, 0x0

    aget v4, v2, v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 1653
    const/4 v5, 0x1

    aget v2, v2, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    sub-int v1, v5, v1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1656
    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 2471
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2472
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2474
    const/4 v0, 0x0

    .line 2475
    if-eqz v1, :cond_0

    .line 2476
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$f;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/smartadserver/android/library/ui/SASAdView$f;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 2477
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$11;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$11;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2485
    :cond_0
    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 2984
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2987
    if-eqz p1, :cond_0

    .line 2988
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2989
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 2992
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->w:Z

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    return p1
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2496
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2498
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$13;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView$13;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;)V

    .line 2527
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 2528
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2529
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 2530
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 2531
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 2533
    :cond_0
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2534
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2540
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 2541
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 2544
    :cond_1
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 2545
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2546
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2548
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 2549
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 2552
    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$14;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/SASAdView$14;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2563
    const-string v2, "sas={};sas.parallax={};sas.parallax.listeners={};sas.parallax.addEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers==null){sas.parallax.listeners[event]=[];handlers=sas.parallax.listeners[event]}for(var handler in handlers){if(listener==handler){return}}handlers.push(listener)};sas.parallax.removeEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers!=null){var i=0;while(i<handlers.length){if(handlers[i]==listener){handlers.splice(i,1)}else{i++}}}};sas.parallax.fireEvent=function(eventName,eventValue){var handlers=sas.parallax.listeners[eventName];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](eventValue)}}};sas.parallax.setParallaxWindowRect=function(left,top,w,h){sas.parallax.parallaxWindowRect={x:left,y:top,width:w,height:h};sas.parallax.fireEvent(\"parallaxWindowRectChanged\",sas.parallax.parallaxWindowRect)};sas.parallax.setViewable=function(isViewable){if(isViewable!=sas.parallax.viewable){sas.parallax.viewable=isViewable;sas.parallax.fireEvent(\"viewabilityChanged\",sas.parallax.viewable)}};console.log(\"parallax API enabled\");"

    .line 2565
    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$15;

    invoke-direct {v2, p0, p1, v1}, Lcom/smartadserver/android/library/ui/SASAdView$15;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 2579
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->isJavascriptAPIEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2580
    const-string v0, "sas={};sas.parallax={};sas.parallax.listeners={};sas.parallax.addEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers==null){sas.parallax.listeners[event]=[];handlers=sas.parallax.listeners[event]}for(var handler in handlers){if(listener==handler){return}}handlers.push(listener)};sas.parallax.removeEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers!=null){var i=0;while(i<handlers.length){if(handlers[i]==listener){handlers.splice(i,1)}else{i++}}}};sas.parallax.fireEvent=function(eventName,eventValue){var handlers=sas.parallax.listeners[eventName];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](eventValue)}}};sas.parallax.setParallaxWindowRect=function(left,top,w,h){sas.parallax.parallaxWindowRect={x:left,y:top,width:w,height:h};sas.parallax.fireEvent(\"parallaxWindowRectChanged\",sas.parallax.parallaxWindowRect)};sas.parallax.setViewable=function(isViewable){if(isViewable!=sas.parallax.viewable){sas.parallax.viewable=isViewable;sas.parallax.fireEvent(\"viewabilityChanged\",sas.parallax.viewable)}};console.log(\"parallax API enabled\");"

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2586
    :goto_0
    return-object v1

    .line 2583
    :cond_2
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 1910
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "initialize(context)"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    .line 1912
    new-instance v0, Lcom/smartadserver/android/library/e/a/c;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/e/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    .line 1915
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SASAdViewHandlerThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Landroid/os/HandlerThread;

    .line 1916
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1917
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    .line 1920
    invoke-virtual {p0, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->setFocusable(Z)V

    .line 1921
    invoke-virtual {p0, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->setFocusableInTouchMode(Z)V

    .line 1924
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/content/Context;)V

    .line 1926
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/content/Context;)V

    .line 1929
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$38;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$38;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Lcom/smartadserver/android/library/c/h;

    .line 1937
    new-instance v0, Lcom/smartadserver/android/library/controller/a;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/a;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    .line 1939
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    .line 1941
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0, v5}, Lcom/smartadserver/android/library/controller/a;->a(I)V

    .line 1943
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->W:Landroid/view/View;

    .line 1944
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->W:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1945
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->W:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1947
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->W:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1950
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    .line 1953
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    .line 1956
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->e(Landroid/content/Context;)V

    .line 1960
    new-instance v0, Lcom/smartadserver/android/library/ui/a;

    invoke-direct {v0, p1, p0}, Lcom/smartadserver/android/library/ui/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    .line 1961
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, v7}, Lcom/smartadserver/android/library/ui/a;->setVisibility(I)V

    .line 1962
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1963
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1966
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/content/Context;)V

    .line 1969
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Landroid/content/Context;)V

    .line 1971
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    .line 1972
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    new-instance v0, Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    .line 1975
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->am:Landroid/widget/RelativeLayout;

    .line 1976
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->am:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1977
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->am:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1980
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1981
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1982
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1983
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->setStickyModeAnchorView(Landroid/view/ViewGroup;)V

    .line 1988
    return-void
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3052
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->b()V

    .line 3055
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3056
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3057
    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    .line 3060
    :cond_0
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Z

    .line 3061
    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    .line 3062
    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Ljava/lang/String;

    .line 3064
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$20;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$20;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;Z)V

    .line 3089
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3090
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3091
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setScrollListenerEnabled(Z)V

    .line 3095
    return-void

    .line 3091
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/SASAdView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:I

    return v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3612
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3615
    :cond_0
    return-object p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2017
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    .line 2018
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2019
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2020
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2021
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ak:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 281
    invoke-static {p0}, Lcom/smartadserver/android/library/ui/c;->a(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 282
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 2024
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ac:Landroid/widget/FrameLayout;

    .line 2025
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ac:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2028
    const/4 v0, 0x2

    new-array v5, v0, [I

    const v0, -0x777778

    aput v0, v5, v10

    const/16 v0, 0x80

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/16 v4, 0x80

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v5, v13

    .line 2029
    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    .line 2030
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ae:Landroid/graphics/drawable/ShapeDrawable;

    .line 2031
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v3

    .line 2032
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v2, v3

    int-to-float v3, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 2033
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ae:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2036
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    .line 2037
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2039
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v2

    .line 2040
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2042
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2043
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2046
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 2047
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    .line 2048
    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v1, v5, v10

    aput v1, v5, v13

    const/4 v6, 0x2

    int-to-float v7, v4

    aput v7, v5, v6

    const/4 v6, 0x3

    int-to-float v7, v4

    aput v7, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v1, v5, v6

    const/4 v6, 0x6

    aput v1, v5, v6

    const/4 v6, 0x7

    aput v1, v5, v6

    .line 2049
    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 2050
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 2051
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2052
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2054
    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v1, v6, v10

    aput v1, v6, v13

    const/4 v8, 0x2

    sub-int v9, v4, v0

    int-to-float v9, v9

    aput v9, v6, v8

    const/4 v8, 0x3

    sub-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v6, v8

    const/4 v4, 0x4

    aput v1, v6, v4

    const/4 v4, 0x5

    aput v1, v6, v4

    const/4 v4, 0x6

    aput v1, v6, v4

    const/4 v4, 0x7

    aput v1, v6, v4

    .line 2055
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v8, v0

    int-to-float v0, v0

    invoke-direct {v4, v1, v8, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2056
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v5, v4, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 2057
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 2058
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2059
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2061
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v4, v10

    aput-object v1, v4, v13

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2063
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_0

    .line 2064
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2070
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2071
    sget-object v1, Lcom/smartadserver/android/library/f/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2072
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2073
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2074
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2075
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2078
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    .line 2079
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2080
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2082
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2083
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2084
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    const/16 v5, 0x19

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v5

    invoke-virtual {v1, v4, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2085
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2086
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2088
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2089
    sget-object v1, Lcom/smartadserver/android/library/f/a;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2090
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2091
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2092
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v0, v10, v10, v4, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2093
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2098
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView$2;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILandroid/widget/ImageView;)V

    .line 2109
    instance-of v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    .line 2110
    :goto_1
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    invoke-direct {v5, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2113
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2114
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2115
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2116
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2117
    const-string v5, "refresh"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2118
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 2119
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v13, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2120
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 2121
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2123
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/smartadserver/android/library/f/a;->D:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2124
    const/16 v6, 0xff

    const/16 v7, 0x83

    const/16 v8, 0xb0

    const/16 v9, 0xdd

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2125
    const/16 v6, 0x14

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v6

    .line 2126
    invoke-virtual {v5, v10, v10, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2127
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2128
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 2130
    new-instance v5, Lcom/smartadserver/android/library/ui/SASAdView$3;

    invoke-direct {v5, p0}, Lcom/smartadserver/android/library/ui/SASAdView$3;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2153
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2154
    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2155
    invoke-virtual {v5, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2157
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2158
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2159
    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2160
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2161
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2162
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2163
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v13, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2164
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2165
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 2166
    const-string v5, "stop"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 2169
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/smartadserver/android/library/f/a;->C:Landroid/graphics/Bitmap;

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2171
    invoke-virtual {v5, v10, v10, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2172
    const/16 v6, 0xff

    const/16 v7, 0xbf

    const/16 v8, 0x55

    const/16 v9, 0x8f

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2173
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2174
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 2176
    new-instance v5, Lcom/smartadserver/android/library/ui/SASAdView$4;

    invoke-direct {v5, p0, v1, v3}, Lcom/smartadserver/android/library/ui/SASAdView$4;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2190
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2191
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2192
    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2193
    invoke-virtual {v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2195
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2196
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2197
    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2200
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2201
    const/16 v2, 0x53

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2202
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ac:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2204
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2206
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2207
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ac:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    return-void

    .line 2066
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2109
    :cond_1
    const/16 v0, 0x14

    goto/16 :goto_1

    .line 2029
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->isJavascriptAPIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4353
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 4354
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4355
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4356
    instance-of v3, v0, Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 4357
    check-cast v0, Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4354
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4361
    :cond_1
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->y()Z

    move-result v0

    return v0
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->U:Ljava/lang/String;

    return-object v0
.end method

.method public static getCloseButtonBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->G:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getDefaultAdLoadingTimeout()I
    .locals 1

    .prologue
    .line 380
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->t:I

    return v0
.end method

.method public static getDefaultAdPrefetchTimeout()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    return v0
.end method

.method private getExpandParentViewRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1625
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1626
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1629
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1630
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1633
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1634
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1635
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1636
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1638
    return-object v1
.end method

.method private getRootContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    .line 1140
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1141
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1148
    :goto_0
    return-object v0

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getTouchSlopSize()F
    .locals 2

    .prologue
    .line 4045
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aF:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4046
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4055
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aF:F

    .line 4057
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aF:F

    return v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->W:Landroid/view/View;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->v:Z

    return v0
.end method

.method static synthetic i(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 447
    sget-boolean v0, Lcom/smartadserver/android/library/ui/SASAdView;->V:Z

    return v0
.end method

.method static synthetic j(Lcom/smartadserver/android/library/ui/SASAdView;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ay:Z

    return v0
.end method

.method static synthetic k(Lcom/smartadserver/android/library/ui/SASAdView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aA:I

    return v0
.end method

.method static synthetic l(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->F()V

    return-void
.end method

.method static synthetic m(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->z()V

    return-void
.end method

.method static synthetic n(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->D()V

    return-void
.end method

.method static synthetic o(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->H()V

    return-void
.end method

.method static synthetic p(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->E()V

    return-void
.end method

.method static synthetic q(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->A()V

    return-void
.end method

.method static synthetic r(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->af:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ar:Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    return-object v0
.end method

.method public static setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 435
    if-eqz p0, :cond_0

    .line 436
    sput-object p0, Lcom/smartadserver/android/library/ui/SASAdView;->U:Ljava/lang/String;

    .line 438
    :cond_0
    return-void
.end method

.method public static setCloseButtonBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 475
    sput-object p0, Lcom/smartadserver/android/library/ui/SASAdView;->G:Landroid/graphics/Bitmap;

    .line 476
    return-void
.end method

.method public static setCloseButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 490
    sput-object p0, Lcom/smartadserver/android/library/ui/SASAdView;->H:Landroid/graphics/drawable/Drawable;

    .line 491
    return-void
.end method

.method public static setDefaultAdLoadingTimeout(I)V
    .locals 0

    .prologue
    .line 387
    sput p0, Lcom/smartadserver/android/library/ui/SASAdView;->t:I

    .line 388
    return-void
.end method

.method public static setDefaultAdPrefetchTimeout(I)V
    .locals 0

    .prologue
    .line 416
    sput p0, Lcom/smartadserver/android/library/ui/SASAdView;->u:I

    .line 417
    return-void
.end method

.method public static setUnityModeEnabled(Z)V
    .locals 0

    .prologue
    .line 458
    sput-boolean p0, Lcom/smartadserver/android/library/ui/SASAdView;->V:Z

    .line 459
    return-void
.end method

.method public static setUseHashedAndroidId(Z)V
    .locals 0

    .prologue
    .line 373
    sput-boolean p0, Lcom/smartadserver/android/library/ui/SASAdView;->s:Z

    .line 374
    return-void
.end method

.method public static setVideoViewZOrderOnTop(Z)V
    .locals 0

    .prologue
    .line 401
    sput-boolean p0, Lcom/smartadserver/android/library/ui/SASAdView;->v:Z

    .line 402
    return-void
.end method

.method static synthetic t(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->B()V

    return-void
.end method

.method static synthetic u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    return-object v0
.end method

.method static synthetic v(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ac:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ad:Landroid/widget/TextView;

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 289
    invoke-static {p0}, Lcom/smartadserver/android/library/ui/c;->b(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 292
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method static synthetic x(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ae:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method private x()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1594
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1601
    :goto_0
    return-void

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method static synthetic y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private y()Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x8

    const/4 v7, -0x1

    .line 1690
    const/4 v1, 0x0

    .line 1693
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aj:Landroid/view/ViewGroup$LayoutParams;

    .line 1697
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v4

    .line 1699
    if-eqz v4, :cond_4

    .line 1700
    const/4 v3, 0x1

    .line 1702
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->a(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    .line 1706
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    if-le v1, v7, :cond_0

    .line 1707
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1708
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 1713
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1717
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_3

    .line 1719
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 1720
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1723
    :goto_1
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aj:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1727
    if-eqz v1, :cond_0

    .line 1728
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1735
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 1738
    :goto_2
    if-eqz v0, :cond_2

    .line 1739
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v2, "moveViewToForeground succeeded"

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :goto_3
    return v0

    .line 1707
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1741
    :cond_2
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v2, "moveViewToForeground failed"

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private z()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1754
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "moveViewToBackground"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1758
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-le v1, v4, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1760
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1763
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    if-le v0, v4, :cond_2

    .line 1764
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1765
    if-eqz v0, :cond_1

    .line 1768
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    .line 1770
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 1771
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1774
    :goto_0
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aj:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1778
    if-eqz v1, :cond_1

    .line 1779
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1782
    :cond_1
    iput v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ag:I

    .line 1784
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic z(Lcom/smartadserver/android/library/ui/SASAdView;)[I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aE:[I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1808
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "collapseImpl()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$36;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$36;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1853
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3442
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Z

    if-eqz v1, :cond_2

    .line 3444
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 3448
    :cond_0
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$i;

    invoke-direct {v1, p0, p1, v0}, Lcom/smartadserver/android/library/ui/SASAdView$i;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILcom/smartadserver/android/library/ui/SASAdView$1;)V

    .line 3451
    :goto_0
    if-eqz v1, :cond_2

    .line 3452
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    monitor-enter v2

    .line 3453
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$d;

    .line 3454
    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView$d;->onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V

    goto :goto_1

    .line 3456
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3459
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V
    .locals 8

    .prologue
    .line 722
    sget v7, Lcom/smartadserver/android/library/ui/SASAdView;->t:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;I)V

    .line 723
    return-void
.end method

.method public a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;I)V
    .locals 10

    .prologue
    .line 741
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    .line 742
    return-void
.end method

.method protected a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
    .locals 13

    .prologue
    .line 763
    iget-object v11, p0, Lcom/smartadserver/android/library/ui/SASAdView;->N:Ljava/lang/Object;

    monitor-enter v11

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 765
    iget-object v12, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$12;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView$12;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    :cond_0
    monitor-exit v11

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1999
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    .line 2000
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2001
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2002
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    .line 2003
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    const-string v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2004
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2005
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2006
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2008
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    .line 2009
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2010
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2011
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2012
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2013
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2014
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 3315
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$28;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$28;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 3331
    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASAdDisplayException;
        }
    .end annotation

    .prologue
    .line 2221
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V

    .line 2222
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$5;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$5;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    return-void

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$6;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$6;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 2242
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getAdFailUrl()Ljava/lang/String;

    move-result-object v1

    .line 2243
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2244
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 2247
    :cond_0
    throw v0
.end method

.method public a(Lcom/smartadserver/android/library/model/b;)V
    .locals 3

    .prologue
    .line 3841
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->T:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3842
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$c;

    .line 3843
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$c;->a(Lcom/smartadserver/android/library/model/b;)V

    goto :goto_0

    .line 3845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3846
    return-void
.end method

.method public a(Lcom/smartadserver/android/library/ui/SASAdView$d;)V
    .locals 2

    .prologue
    .line 3416
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    monitor-enter v1

    .line 3417
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3418
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3420
    :cond_0
    monitor-exit v1

    .line 3421
    return-void

    .line 3420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 3289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;Z)V

    .line 3290
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 3254
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3256
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3279
    :goto_0
    return-void

    .line 3260
    :cond_0
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$26;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$26;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/Runnable;)V

    .line 3269
    monitor-enter v1

    .line 3270
    :try_start_0
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    if-eqz p2, :cond_1

    .line 3273
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3277
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3274
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 971
    const-string v0, "sas:click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getClickUrl()Ljava/lang/String;

    move-result-object p1

    .line 975
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 976
    :cond_1
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "open(url) failed: url is empty"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_2
    :goto_0
    return-void

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 982
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getClickPixelUrl()Ljava/lang/String;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 988
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    invoke-virtual {v1, v0, v4}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 991
    :cond_4
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->A()V

    .line 993
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->isOpenClickInApplication()Z

    move-result v0

    if-nez v0, :cond_7

    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 998
    :try_start_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1000
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_5

    .line 1002
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1005
    :cond_5
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1008
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    if-eqz v0, :cond_6

    .line 1016
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->m()V

    goto :goto_0

    .line 1019
    :cond_6
    invoke-virtual {p0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseButtonAppearanceDelay(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 1021
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Z)V

    .line 1023
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    goto/16 :goto_0

    .line 1029
    :cond_7
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_2

    .line 1031
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$33;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$33;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1044
    :cond_8
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "open(url) failed: no internet connection or adElement is null"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1009
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V
    .locals 11

    .prologue
    .line 1264
    sget-object v1, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view.expand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    if-eqz p8, :cond_4

    const/4 v1, 0x1

    .line 1272
    :goto_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 1274
    if-eqz v1, :cond_6

    .line 1275
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1278
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1280
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1281
    if-eqz v2, :cond_3

    .line 1282
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_3

    .line 1285
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    const/16 v3, -0xa

    if-ne v2, v3, :cond_1

    .line 1286
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    .line 1287
    sget-object v2, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock rotation, current orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/g/c;->i(Landroid/content/Context;)I

    move-result v2

    .line 1292
    const-string v3, "none"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1293
    const-string v3, "portrait"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1294
    const/4 v2, 0x1

    .line 1299
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :cond_3
    :goto_2
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$35;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView$35;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;IIIIZZZ)V

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1559
    return-void

    .line 1270
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1295
    :cond_5
    :try_start_1
    const-string v3, "landscape"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1296
    const/4 v2, 0x0

    goto :goto_1

    .line 1306
    :cond_6
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->H()V

    goto :goto_2

    .line 1302
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 1234
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V

    .line 1235
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3561
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3562
    invoke-virtual {p0, p2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3563
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3573
    const-string v0, "if (typeof mraid != \'undefined\') mraid.fire"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    const-string v0, "Event("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3576
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3577
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3578
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    const-string v0, "\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3582
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3584
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 3587
    return-void
.end method

.method public a(Z)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2602
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2606
    :cond_0
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    .line 2608
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2610
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 2611
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxHTMLUrl()Ljava/lang/String;

    move-result-object v3

    .line 2612
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxHTMLScript()Ljava/lang/String;

    move-result-object v4

    .line 2615
    new-array v5, v9, [Landroid/view/View;

    .line 2619
    if-eqz v1, :cond_3

    .line 2620
    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    aput-object v1, v5, v2

    .line 2629
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->isBorderEnabled()Z

    move-result v3

    .line 2630
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBorderColor()I

    move-result v4

    .line 2631
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBackgroundColor()I

    move-result v6

    .line 2632
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBorderSize()I

    move-result v1

    int-to-float v1, v1

    iget v7, p0, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2634
    :goto_2
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBorderText()Ljava/lang/String;

    move-result-object v7

    .line 2635
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBorderFontSize()I

    move-result v8

    .line 2636
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getBorderFontColor()I

    move-result v0

    .line 2639
    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 2640
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2641
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2642
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    int-to-float v7, v8

    invoke-virtual {v3, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2643
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2648
    :goto_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2649
    div-int/lit8 v3, v1, 0x2

    .line 2650
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2651
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2652
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2655
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2656
    array-length v1, v5

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_7

    aget-object v3, v5, v0

    .line 2657
    if-eqz v3, :cond_2

    .line 2658
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2659
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2660
    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2656
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2621
    :cond_3
    if-eqz v3, :cond_4

    .line 2623
    invoke-direct {p0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    aput-object v1, v5, v2

    goto/16 :goto_1

    .line 2624
    :cond_4
    if-eqz v4, :cond_1

    .line 2626
    invoke-direct {p0, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    aput-object v1, v5, v2

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 2632
    goto :goto_2

    .line 2645
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2665
    :cond_7
    invoke-virtual {p0, v9}, Lcom/smartadserver/android/library/ui/SASAdView;->setScrollListenerEnabled(Z)V

    .line 2667
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v10}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 2668
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2671
    :cond_8
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setScrollListenerEnabled(Z)V

    .line 2672
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2675
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 2676
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 2677
    :goto_5
    if-ge v2, v1, :cond_b

    .line 2678
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2679
    instance-of v3, v0, Landroid/webkit/WebView;

    if-eqz v3, :cond_a

    .line 2680
    check-cast v0, Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2677
    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2681
    :cond_a
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 2682
    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 2687
    :cond_b
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->as:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/16 :goto_0
.end method

.method public a([Lcom/smartadserver/android/library/model/d;)V
    .locals 3

    .prologue
    .line 4400
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4401
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4402
    monitor-exit v1

    .line 4403
    return-void

    .line 4402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4369
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4370
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->P:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4373
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->I()V

    .line 4374
    monitor-exit v1

    .line 4375
    return-void

    .line 4374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)Z
    .locals 2

    .prologue
    .line 4415
    const/4 v0, 0x0

    .line 4416
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getCloseButtonVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 4417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4418
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 4419
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 4421
    :cond_0
    return v0
.end method

.method public declared-synchronized a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v6, 0x0

    .line 2333
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 2335
    if-eqz p1, :cond_4

    iget v0, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    if-lez v0, :cond_4

    iget-wide v0, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewUrlExpirationDate:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    sub-long v0, v2, v0

    iget-wide v4, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewDuration:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 2341
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aq:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 2342
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aq:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 2343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aq:Ljava/util/Timer;

    .line 2347
    :cond_1
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$7;

    invoke-direct {v1, p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView$7;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Z)V

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 2355
    if-eqz v0, :cond_3

    .line 2357
    iget-wide v4, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 2359
    iput-wide v2, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    .line 2363
    :cond_2
    iget-wide v4, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewDuration:J

    iget-wide v6, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->startTime:J

    sub-long v6, v2, v6

    sub-long/2addr v4, v6

    .line 2365
    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewUrlExpirationDate:J

    sub-long v2, v8, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2367
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$8;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$8;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 2377
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aq:Ljava/util/Timer;

    .line 2378
    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$9;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$9;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 2384
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aq:Ljava/util/Timer;

    mul-long/2addr v2, v10

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2387
    :cond_3
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ar:Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2389
    monitor-exit p0

    return v0

    .line 2335
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3364
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->d()V

    .line 3366
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->w()V

    .line 3368
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Lcom/smartadserver/android/library/c/h;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->m:Lcom/smartadserver/android/library/c/h;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/c/h;->c()V

    .line 3372
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    if-eqz v0, :cond_1

    .line 3373
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->e()V

    .line 3376
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    if-eqz v0, :cond_2

    .line 3377
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Landroid/content/Context;)V

    .line 3380
    :cond_2
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 3382
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_3

    .line 3383
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$30;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$30;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 3393
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 3394
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3398
    :cond_4
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 3399
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    .line 3400
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 3401
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3403
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->M:Landroid/os/HandlerThread;

    .line 3404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->f()V

    .line 3409
    return-void

    .line 3404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 3800
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->S:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3801
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$e;

    .line 3802
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$e;->a(I)V

    goto :goto_0

    .line 3804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3805
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 3152
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$24;

    invoke-direct {v0, p0, p1, p1}, Lcom/smartadserver/android/library/ui/SASAdView$24;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    .line 3183
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/d;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3184
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/d;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3185
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 3186
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/d;->setBackgroundColor(I)V

    .line 3188
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3189
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {p0, v1, v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3190
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 3338
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$29;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$29;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 3351
    return-void
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3131
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$22;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$22;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 3144
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2885
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->setScrollListenerEnabled(Z)V

    .line 2886
    invoke-direct {p0, v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ZZ)V

    .line 2887
    return-void
.end method

.method public b(Lcom/smartadserver/android/library/ui/SASAdView$d;)Z
    .locals 2

    .prologue
    .line 3429
    .line 3430
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    monitor-enter v1

    .line 3431
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->D:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3432
    monitor-exit v1

    .line 3433
    return v0

    .line 3432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)I
    .locals 6

    .prologue
    .line 4432
    const/4 v0, -0x1

    .line 4435
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v1, :cond_0

    .line 4436
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitWidth()I

    move-result v4

    .line 4437
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitHeight()I

    move-result v2

    .line 4438
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->i(Landroid/content/Context;)I

    move-result v1

    .line 4440
    if-nez v1, :cond_1

    .line 4442
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getLandscapeWidth()I

    move-result v3

    .line 4443
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getLandscapeHeight()I

    move-result v1

    .line 4444
    if-lez v3, :cond_1

    move v2, v3

    .line 4449
    :goto_0
    if-lez v2, :cond_0

    .line 4450
    int-to-double v4, v1

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 4451
    if-ltz p1, :cond_0

    .line 4452
    int-to-double v0, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4456
    :cond_0
    return v0

    :cond_1
    move v1, v2

    move v2, v4

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1862
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "closeImpl()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$37;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$37;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1893
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 3214
    new-instance v0, Lcom/smartadserver/android/library/ui/d;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    .line 3216
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 3217
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 3218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 3220
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$25;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$25;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3227
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 3228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3229
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3231
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 3108
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 3109
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Landroid/os/Handler;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$21;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/SASAdView$21;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3117
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Z)V

    .line 3121
    return-void

    .line 3117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected e()D
    .locals 6

    .prologue
    .line 4301
    const-wide/16 v0, 0x0

    .line 4303
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4304
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4305
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 4306
    if-eqz v3, :cond_0

    .line 4307
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4308
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 4309
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 4310
    div-double v0, v2, v0

    .line 4316
    :cond_0
    return-wide v0
.end method

.method public getCloseButtonAppearanceDelay()I
    .locals 1

    .prologue
    .line 4240
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:I

    return v0
.end method

.method public getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    return-object v0
.end method

.method public getCurrentBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1664
    invoke-direct {p0, p0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->B:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1672
    .line 1675
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1681
    :goto_0
    return-object v0

    .line 1678
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpandParentContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getExpandParentView()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 1157
    const/4 v1, 0x0

    .line 1158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/widget/FrameLayout;

    .line 1174
    :goto_0
    return-object v0

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootContentView()Landroid/view/View;

    move-result-object v0

    .line 1164
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 1165
    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    .line 1166
    :cond_1
    if-eqz v0, :cond_2

    .line 1168
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1169
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 1170
    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getExpandParentViewMaxSize()[I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2311
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2312
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v2

    .line 2313
    const/4 v0, 0x0

    .line 2314
    if-eqz v1, :cond_0

    .line 2315
    new-array v0, v5, [I

    .line 2316
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    aget v4, v2, v6

    aget v5, v2, v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    aput v3, v0, v6

    .line 2317
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    aget v3, v2, v7

    const/4 v4, 0x3

    aget v2, v2, v4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 2319
    :cond_0
    return-object v0
.end method

.method public getExpandPlaceholderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ah:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getExpandPolicy()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:I

    return v0
.end method

.method public getLastCallTimestamp()J
    .locals 2

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/e/a/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Landroid/view/View;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 3513
    const/4 v0, 0x0

    .line 3514
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ao:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 3515
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ao:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3517
    :cond_0
    return-object v0
.end method

.method public getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;
    .locals 1

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    return-object v0
.end method

.method public getMessageHandler()Lcom/smartadserver/android/library/ui/SASAdView$b;
    .locals 1

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->F:Lcom/smartadserver/android/library/ui/SASAdView$b;

    return-object v0
.end method

.method public getNeededPadding()[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1567
    .line 1571
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_0

    .line 1574
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootContentView()Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 1577
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1578
    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1579
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 1582
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 1583
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1584
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1589
    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v2, v5, v1

    const/4 v1, 0x1

    aput v4, v5, v1

    const/4 v1, 0x2

    aput v0, v5, v1

    const/4 v0, 0x3

    aput v3, v5, v0

    return-object v5

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_0
.end method

.method public getOptimalHeight()I
    .locals 4

    .prologue
    .line 4467
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4468
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMeasuredWidth()I

    move-result v0

    .line 4485
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(I)I

    move-result v0

    return v0

    .line 4470
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4471
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4474
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4475
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4476
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 4477
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 4481
    :goto_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 4479
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1
.end method

.method public getVisibilityPercentage()D
    .locals 2

    .prologue
    .line 4291
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    return-wide v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 1181
    const-string v0, "expanded"

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1188
    const-string v0, "resized"

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1606
    .line 1608
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1609
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1610
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1611
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1612
    if-ne v3, v0, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    .line 1617
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1612
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1792
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "collapse"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v0

    .line 1794
    const-string v1, "expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "resized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1797
    :goto_0
    if-eqz v0, :cond_1

    .line 1798
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1800
    :cond_1
    return-void

    .line 1794
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1902
    const-string v0, "default"

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 1906
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3299
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$27;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$27;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 3304
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 3305
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3308
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1053
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1057
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->f()V

    .line 1059
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->a()V

    .line 1060
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1105
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1108
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$34;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$34;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1130
    :goto_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1131
    return-void

    .line 1127
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1067
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1070
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->b()V

    .line 1071
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 1073
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->w()V

    .line 1075
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1078
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4073
    .line 4075
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->isTransferTouchEvents()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(II)Z

    move-result v0

    .line 4080
    if-nez v0, :cond_9

    .line 4085
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/MotionEvent;Ljava/lang/String;)[I

    move-result-object v3

    .line 4086
    aget v4, v3, v1

    .line 4087
    if-eq v4, v2, :cond_2

    move v0, v2

    .line 4089
    :goto_0
    const/4 v1, 0x2

    if-ne v4, v1, :cond_0

    .line 4092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(function(e){function t(e){var t=[];var n=document.getElementsByTagName(\'*\');for(var r=0;r<n.length;r++){if(n[r].getAttribute(e)){t.push(n[r])}}return t}function s(e){var t=document.createEvent(\'MouseEvents\');t.initMouseEvent(\'click\',true,true,window,1,0,0,0,0,false,false,false,false,0,null);e.dispatchEvent(t)}var n=t(\'data-sas-touch-mode\');var r=[];for(i=0;i<n.length;i++){r.push(n[i])}if(parseInt(r[e].getAttribute(\'data-sas-touch-mode\'))==2){s(r[e])}})("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4096
    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$31;

    invoke-direct {v2, p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView$31;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v2, v4, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    move v1, v0

    .line 4164
    :cond_1
    :goto_2
    sget-object v0, Lcom/smartadserver/android/library/ui/SASAdView;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4166
    return v1

    :cond_2
    move v0, v1

    .line 4087
    goto :goto_0

    .line 4106
    :cond_3
    instance-of v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v0, :cond_1

    .line 4109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4112
    :pswitch_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->isSwipeToClose()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aJ:Z

    .line 4115
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aH:Z

    .line 4116
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aI:Z

    .line 4117
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    goto :goto_2

    :cond_4
    move v0, v1

    .line 4112
    goto :goto_3

    .line 4121
    :pswitch_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aH:Z

    if-eqz v0, :cond_1

    .line 4124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getTouchSlopSize()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 4125
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aI:Z

    .line 4127
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 4128
    sub-float v2, v4, v0

    add-float/2addr v2, v4

    div-float/2addr v0, v2

    .line 4129
    sub-float v0, v4, v0

    .line 4130
    iget-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aJ:Z

    if-eqz v2, :cond_1

    .line 4131
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 4137
    :pswitch_2
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aH:Z

    if-eqz v0, :cond_1

    .line 4138
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aJ:Z

    if-eqz v0, :cond_6

    .line 4139
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v0

    aget v0, v0, v2

    int-to-float v1, v0

    .line 4142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 4144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aG:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 4145
    :goto_4
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$32;

    invoke-direct {v2, p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView$32;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4158
    :cond_6
    :goto_5
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aI:Z

    goto/16 :goto_2

    .line 4144
    :cond_7
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_4

    .line 4155
    :cond_8
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_1

    .line 4109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 313
    .line 314
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 315
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->c()V

    .line 346
    :cond_1
    :goto_0
    return v0

    .line 319
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->R:Z

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v2

    if-nez v2, :cond_1

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v2

    .line 334
    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-nez v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->e()V

    move v0, v1

    goto :goto_0

    .line 336
    :cond_5
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 337
    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    move v0, v1

    goto :goto_0

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 339
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->G()V

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 3528
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3529
    if-eqz p1, :cond_0

    .line 3531
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 3532
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/controller/mraid/a;->a(II)V

    .line 3535
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v0, :cond_2

    .line 3537
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    .line 3538
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 3542
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1088
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1089
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 1092
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 3475
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Z

    return v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 4274
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 4282
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 3550
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->z:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getCloseButtonVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3973
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView$h;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;Lcom/smartadserver/android/library/ui/SASAdView$1;)V

    .line 3974
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;Z)V

    .line 3975
    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView$h;->a(Lcom/smartadserver/android/library/ui/SASAdView$h;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBackButtonHandlingEnabled(Z)V
    .locals 0

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->R:Z

    .line 308
    return-void
.end method

.method public setClickableAreas(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4034
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->J:Ljava/lang/String;

    .line 4035
    return-void
.end method

.method public setCloseButtonAppearanceDelay(I)V
    .locals 1

    .prologue
    .line 4248
    const/16 v0, 0xc8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4249
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->K:I

    .line 4250
    return-void
.end method

.method public setCloseOnclick(Z)V
    .locals 0

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->an:Z

    .line 614
    return-void
.end method

.method public setDisplayCloseAppearanceCountDown(Z)V
    .locals 0

    .prologue
    .line 4258
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Z

    .line 4259
    return-void
.end method

.method public setEnableStateChangeEvent(Z)V
    .locals 0

    .prologue
    .line 3467
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->E:Z

    .line 3468
    return-void
.end method

.method public setExpandParentContainer(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 3035
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->C:Landroid/widget/FrameLayout;

    .line 3038
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdView$19;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdView$19;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 3046
    return-void
.end method

.method public setExpandPolicy(I)V
    .locals 0

    .prologue
    .line 673
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->y:I

    .line 674
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 4497
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4499
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4500
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4501
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4502
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4503
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4505
    :cond_0
    return-void
.end method

.method public setLoaderView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3010
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->A:Landroid/view/View;

    .line 3011
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 3498
    if-eqz p1, :cond_0

    .line 3499
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ao:Landroid/location/Location;

    .line 3500
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->e()V

    .line 3506
    :goto_0
    return-void

    .line 3502
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ao:Landroid/location/Location;

    goto :goto_0
.end method

.method public setMediationView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x2

    .line 2280
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2284
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_0

    .line 2290
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2291
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2293
    if-eqz p1, :cond_0

    .line 2294
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2295
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2296
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2297
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2299
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2300
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aa:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2301
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessageHandler(Lcom/smartadserver/android/library/ui/SASAdView$b;)V
    .locals 0

    .prologue
    .line 3941
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->F:Lcom/smartadserver/android/library/ui/SASAdView$b;

    .line 3942
    return-void
.end method

.method protected setRefreshIntervalImpl(I)V
    .locals 2

    .prologue
    .line 874
    if-lez p1, :cond_1

    .line 876
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 886
    :cond_0
    :goto_0
    iput v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->d:I

    .line 887
    return-void

    .line 878
    :cond_1
    const/4 v0, -0x1

    .line 881
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 883
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->I:Ljava/util/Timer;

    goto :goto_0
.end method

.method public setScrollListenerEnabled(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2254
    .line 2255
    instance-of v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-nez v0, :cond_3

    .line 2256
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v0, :cond_0

    .line 2257
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isStickToTopEnabled()Z

    move-result v0

    .line 2262
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move v0, v1

    .line 2265
    :goto_1
    if-eqz v0, :cond_2

    .line 2266
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->C()V

    .line 2267
    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Z)V

    .line 2272
    :goto_2
    return-void

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v0, :cond_3

    move v0, v1

    .line 2259
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2262
    goto :goto_1

    .line 2269
    :cond_2
    invoke-direct {p0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Z)V

    .line 2270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->av:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public setStickyModeAnchorView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 2861
    if-eqz p1, :cond_0

    .line 2862
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    .line 2866
    :goto_0
    return-void

    .line 2864
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getRootContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->aB:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 4265
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->L:Z

    return v0
.end method

.method public u()V
    .locals 4

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/smartadserver/android/library/ui/c;->a(Ljava/util/ArrayList;DZ)V

    .line 4411
    return-void
.end method

.method public updateVisibilityPercentage()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4326
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->e()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    .line 4331
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->Q:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    invoke-static {v1, v2, v3, v0}, Lcom/smartadserver/android/library/ui/c;->a(Ljava/util/ArrayList;DZ)V

    .line 4334
    iget-wide v2, p0, Lcom/smartadserver/android/library/ui/SASAdView;->O:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 4335
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Z)V

    .line 4338
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Z)V

    .line 4341
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    if-eqz v1, :cond_1

    .line 4342
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView;->ab:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/a;->setViewable(Z)V

    .line 4346
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sas.parallax.setViewable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Ljava/lang/String;)V

    .line 4347
    return-void
.end method
