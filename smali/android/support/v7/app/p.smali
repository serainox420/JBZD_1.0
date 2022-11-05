.class public Landroid/support/v7/app/p;
.super Landroid/support/v7/app/c;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/p$b;,
        Landroid/support/v7/app/p$f;,
        Landroid/support/v7/app/p$e;,
        Landroid/support/v7/app/p$a;,
        Landroid/support/v7/app/p$c;,
        Landroid/support/v7/app/p$d;
    }
.end annotation


# static fields
.field static final b:Z

.field static final c:I


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:I

.field final F:Landroid/view/accessibility/AccessibilityManager;

.field G:Ljava/lang/Runnable;

.field private final H:Landroid/support/v7/app/p$d;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Landroid/view/View;

.field private M:Landroid/widget/Button;

.field private N:Landroid/widget/Button;

.field private O:Landroid/widget/ImageButton;

.field private P:Landroid/widget/ImageButton;

.field private Q:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

.field private R:Landroid/widget/FrameLayout;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/FrameLayout;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/TextView;

.field private Y:Z

.field private Z:Landroid/widget/LinearLayout;

.field private aa:Landroid/widget/RelativeLayout;

.field private ab:Landroid/widget/LinearLayout;

.field private ac:Landroid/view/View;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private af:I

.field private ag:I

.field private ah:I

.field private final ai:I

.field private aj:I

.field private ak:I

.field private al:Landroid/view/animation/Interpolator;

.field private am:Landroid/view/animation/Interpolator;

.field private an:Landroid/view/animation/Interpolator;

.field private ao:Landroid/view/animation/Interpolator;

.field final d:Landroid/support/v7/media/g;

.field final e:Landroid/support/v7/media/g$g;

.field f:Landroid/content/Context;

.field g:Landroid/widget/FrameLayout;

.field h:Landroid/support/v7/app/OverlayListView;

.field i:Landroid/support/v7/app/p$f;

.field j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/widget/SeekBar;

.field m:Landroid/support/v7/app/p$e;

.field n:Landroid/support/v7/media/g$g;

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/g$g;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/support/v4/media/session/MediaControllerCompat;

.field q:Landroid/support/v7/app/p$c;

.field r:Landroid/support/v4/media/session/PlaybackStateCompat;

.field s:Landroid/support/v4/media/MediaDescriptionCompat;

.field t:Landroid/support/v7/app/p$b;

.field u:Landroid/graphics/Bitmap;

.field v:Landroid/net/Uri;

.field w:Z

.field x:Landroid/graphics/Bitmap;

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 100
    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/app/p;->b:Z

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/support/v7/app/p;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/p;-><init>(Landroid/content/Context;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 202
    .line 203
    invoke-static {p1, p2}, Landroid/support/v7/app/t;->d(Landroid/content/Context;I)I

    move-result v0

    .line 202
    invoke-static {p1, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/c;-><init>(Landroid/content/Context;I)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->Y:Z

    .line 190
    new-instance v0, Landroid/support/v7/app/p$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$1;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->G:Ljava/lang/Runnable;

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    .line 206
    new-instance v0, Landroid/support/v7/app/p$c;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$c;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/app/p$c;

    .line 207
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/g;->a(Landroid/content/Context;)Landroid/support/v7/media/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    .line 208
    new-instance v0, Landroid/support/v7/app/p$d;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$d;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/app/p$d;

    .line 209
    iget-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    invoke-virtual {v0}, Landroid/support/v7/media/g;->c()Landroid/support/v7/media/g$g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    .line 210
    iget-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    invoke-virtual {v0}, Landroid/support/v7/media/g;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 211
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p;->ai:I

    .line 213
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/app/p;->F:Landroid/view/accessibility/AccessibilityManager;

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 216
    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->am:Landroid/view/animation/Interpolator;

    .line 218
    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->an:Landroid/view/animation/Interpolator;

    .line 221
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->ao:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method private a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/app/p$c;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->b(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 292
    iput-object v1, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 294
    :cond_0
    if-nez p1, :cond_2

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/p;->J:Z

    if-eqz v0, :cond_1

    .line 301
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/app/p$c;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 308
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 310
    :goto_2
    if-nez v0, :cond_5

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_6

    :goto_4
    iput-object v1, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/app/p;->f()V

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->a(Z)V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v2, "MediaRouteCtrlDialog"

    const-string v3, "Error creating media controller in setMediaSession."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 308
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 309
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    goto :goto_2

    .line 310
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_3

    .line 311
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    goto :goto_4
.end method

.method static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1065
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1066
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1070
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return v0

    .line 1072
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 1075
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/p;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/p;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/p;Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/v7/app/p;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1060
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method private b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 707
    invoke-static {p1}, Landroid/support/v7/app/p;->b(Landroid/view/View;)I

    move-result v0

    .line 709
    new-instance v1, Landroid/support/v7/app/p$10;

    invoke-direct {v1, p0, v0, p2, p1}, Landroid/support/v7/app/p$10;-><init>(Landroid/support/v7/app/p;IILandroid/view/View;)V

    .line 716
    iget v0, p0, Landroid/support/v7/app/p;->E:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 720
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 721
    return-void
.end method

.method private b(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/g$g;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/g$g;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    .line 780
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->C:Z

    .line 782
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 783
    new-instance v1, Landroid/support/v7/app/p$11;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/p$11;-><init>(Landroid/support/v7/app/p;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 790
    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/p;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/p;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/p;)Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/p;->m()Z

    move-result v0

    return v0
.end method

.method private f(Z)I
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 559
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    .line 560
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 561
    if-eqz p1, :cond_1

    .line 562
    iget-object v1, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 565
    iget-object v1, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 568
    iget-object v1, p0, Landroid/support/v7/app/p;->ac:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_3
    return v0
.end method

.method private g(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 577
    iget-object v3, p0, Landroid/support/v7/app/p;->ac:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    return-void

    :cond_0
    move v0, v2

    .line 577
    goto :goto_0

    :cond_1
    move v2, v1

    .line 579
    goto :goto_1
.end method

.method private h()Landroid/support/v7/media/g$f;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    instance-of v0, v0, Landroid/support/v7/media/g$f;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    check-cast v0, Landroid/support/v7/media/g$f;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 747
    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v3, v1

    .line 748
    :goto_0
    if-nez v3, :cond_1

    .line 749
    iget-object v0, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 750
    iget-object v0, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v0}, Landroid/support/v7/app/p$f;->notifyDataSetChanged()V

    .line 775
    :goto_1
    return-void

    .line 747
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/g$f;->a()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 751
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    invoke-static {v0, v3}, Landroid/support/v7/app/s;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v0}, Landroid/support/v7/app/p$f;->notifyDataSetChanged()V

    goto :goto_1

    .line 754
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    iget-object v2, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    .line 755
    invoke-static {v0, v2}, Landroid/support/v7/app/s;->a(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    move-object v2, v0

    .line 757
    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    iget-object v5, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    .line 758
    invoke-static {v0, v4, v5}, Landroid/support/v7/app/s;->a(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    .line 760
    :goto_3
    iget-object v4, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    .line 761
    invoke-static {v4, v3}, Landroid/support/v7/app/s;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    .line 762
    iget-object v4, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    invoke-static {v4, v3}, Landroid/support/v7/app/s;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    .line 764
    iget-object v3, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 765
    iget-object v3, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 766
    iget-object v3, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v3}, Landroid/support/v7/app/p$f;->notifyDataSetChanged()V

    .line 767
    if-eqz p1, :cond_5

    iget-boolean v3, p0, Landroid/support/v7/app/p;->B:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    .line 768
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_5

    .line 769
    invoke-direct {p0, v2, v0}, Landroid/support/v7/app/p;->b(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 755
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 758
    goto :goto_3

    .line 771
    :cond_5
    iput-object v1, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    .line 772
    iput-object v1, p0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    goto :goto_1
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 733
    iget-object v2, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/p;->a(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 735
    iget-object v2, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 736
    iget-object v2, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v3}, Landroid/support/v7/media/g$g;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 737
    iget-object v2, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v3}, Landroid/support/v7/media/g$g;->q()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 738
    iget-object v2, p0, Landroid/support/v7/app/p;->Q:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setVisibility(I)V

    .line 744
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 738
    goto :goto_0

    .line 742
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 913
    new-instance v4, Landroid/support/v7/app/p$4;

    invoke-direct {v4, p0}, Landroid/support/v7/app/p$4;-><init>(Landroid/support/v7/app/p;)V

    .line 926
    iget-object v1, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v5

    move v1, v0

    move v2, v0

    .line 927
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 928
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 929
    add-int v0, v5, v1

    .line 930
    iget-object v7, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v7, v0}, Landroid/support/v7/app/p$f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 931
    iget-object v7, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 933
    iget v7, p0, Landroid/support/v7/app/p;->aj:I

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 934
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 935
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 936
    if-nez v2, :cond_0

    .line 938
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v2, v3

    .line 940
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 941
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 927
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 944
    :cond_2
    return-void
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 976
    invoke-direct {p0}, Landroid/support/v7/app/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 978
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 980
    :goto_1
    iget-object v5, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v5, :cond_4

    .line 981
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    .line 985
    :goto_3
    iget-object v7, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v7}, Landroid/support/v7/media/g$g;->t()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 988
    iget-object v0, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_casting_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v4

    move v1, v3

    .line 1007
    :goto_4
    iget-object v2, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    move v1, v4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    iget-object v1, p0, Landroid/support/v7/app/p;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    move v0, v4

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1012
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_0
    move v0, v3

    .line 1013
    :goto_7
    iget-object v1, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1017
    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/support/v7/app/p;->n()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1018
    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    .line 1019
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    .line 1029
    :goto_8
    iget-object v5, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    if-eqz v3, :cond_10

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1030
    if-eqz v3, :cond_1

    .line 1031
    iget-object v3, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    .line 1032
    invoke-static {v2, v1}, Landroid/support/v7/app/t;->b(Landroid/content/Context;I)I

    move-result v1

    .line 1031
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1034
    iget-object v1, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    .line 1035
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1036
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1034
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1040
    :cond_1
    return-void

    .line 977
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->a()Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 978
    goto :goto_1

    .line 980
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->b()Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 981
    goto :goto_3

    .line 990
    :cond_6
    iget-object v7, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v7

    if-nez v7, :cond_8

    .line 992
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_media_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v4

    move v1, v3

    .line 993
    goto/16 :goto_4

    .line 994
    :cond_8
    if-nez v2, :cond_9

    if-nez v5, :cond_9

    .line 995
    iget-object v0, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_info_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v4

    move v1, v3

    .line 996
    goto/16 :goto_4

    .line 998
    :cond_9
    if-eqz v2, :cond_12

    .line 999
    iget-object v2, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v3

    .line 1002
    :goto_a
    if-eqz v5, :cond_11

    .line 1003
    iget-object v2, p0, Landroid/support/v7/app/p;->W:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    move v0, v3

    .line 1004
    goto/16 :goto_4

    :cond_a
    move v1, v6

    .line 1007
    goto/16 :goto_5

    :cond_b
    move v0, v6

    .line 1008
    goto/16 :goto_6

    :cond_c
    move v0, v4

    .line 1012
    goto/16 :goto_7

    .line 1020
    :cond_d
    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/support/v7/app/p;->o()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1021
    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRouteStopDrawable:I

    .line 1022
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    goto/16 :goto_8

    .line 1023
    :cond_e
    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/support/v7/app/p;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1024
    sget v1, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    .line 1025
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto/16 :goto_8

    :cond_f
    move v0, v4

    move v1, v4

    move v3, v4

    .line 1027
    goto/16 :goto_8

    :cond_10
    move v4, v6

    .line 1029
    goto/16 :goto_9

    :cond_11
    move v1, v0

    move v0, v4

    goto/16 :goto_4

    :cond_12
    move v0, v4

    goto :goto_a
.end method

.method private m()Z
    .locals 4

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 4

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1117
    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1118
    :goto_0
    iget-object v2, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    .line 1119
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/p;->u:Landroid/graphics/Bitmap;

    .line 1120
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/p;->v:Landroid/net/Uri;

    .line 1121
    :goto_3
    if-eq v2, v0, :cond_4

    move v0, v3

    .line 1126
    :goto_4
    return v0

    .line 1117
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->d()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 1119
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    invoke-virtual {v2}, Landroid/support/v7/app/p$b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 1120
    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    invoke-virtual {v4}, Landroid/support/v7/app/p$b;->b()Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    .line 1123
    :cond_4
    if-nez v2, :cond_5

    invoke-static {v4, v1}, Landroid/support/v7/app/p;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 1124
    goto :goto_4

    .line 1126
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1082
    if-lt p1, p2, :cond_0

    .line 1084
    iget v0, p0, Landroid/support/v7/app/p;->K:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/p;->K:I

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 697
    sget v0, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 698
    iget v1, p0, Landroid/support/v7/app/p;->ag:I

    invoke-static {v0, v1}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 699
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 701
    iget v2, p0, Landroid/support/v7/app/p;->af:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 702
    iget v2, p0, Landroid/support/v7/app/p;->af:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/g$g;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/g$g;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 878
    :cond_0
    return-void

    .line 798
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v7, v2, v3

    .line 799
    const/4 v3, 0x0

    .line 800
    new-instance v8, Landroid/support/v7/app/p$12;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/support/v7/app/p$12;-><init>(Landroid/support/v7/app/p;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v9

    .line 818
    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2, v4}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 820
    add-int v2, v9, v4

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/p$f;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/g$g;

    .line 822
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 823
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    .line 824
    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 826
    :goto_1
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 829
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v3, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 830
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/app/p;->aj:I

    int-to-long v12, v12

    invoke-virtual {v3, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 831
    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move v3, v6

    .line 833
    :cond_2
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct {v12, v13, v14, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 834
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/app/p;->E:I

    int-to-long v14, v3

    invoke-virtual {v12, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 835
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 836
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 837
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 839
    if-nez v5, :cond_6

    .line 840
    const/4 v3, 0x1

    .line 841
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 843
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 844
    invoke-virtual {v10, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 845
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v3

    goto/16 :goto_0

    .line 824
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/app/p;->ag:I

    mul-int/2addr v3, v7

    add-int/2addr v3, v6

    goto :goto_1

    .line 853
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 854
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/g$g;

    .line 855
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 856
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 858
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 859
    new-instance v3, Landroid/support/v7/app/OverlayListView$a;

    invoke-direct {v3, v2, v4}, Landroid/support/v7/app/OverlayListView$a;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/app/OverlayListView$a;->a(FF)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/app/p;->ak:I

    int-to-long v8, v3

    .line 860
    invoke-virtual {v2, v8, v9}, Landroid/support/v7/app/OverlayListView$a;->a(J)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    .line 861
    invoke-virtual {v2, v3}, Landroid/support/v7/app/OverlayListView$a;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    .line 876
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/OverlayListView;->a(Landroid/support/v7/app/OverlayListView$a;)V

    goto :goto_3

    .line 863
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/app/p;->ag:I

    mul-int/2addr v6, v7

    .line 864
    new-instance v8, Landroid/support/v7/app/OverlayListView$a;

    invoke-direct {v8, v2, v4}, Landroid/support/v7/app/OverlayListView$a;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v6}, Landroid/support/v7/app/OverlayListView$a;->a(I)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/app/p;->E:I

    int-to-long v8, v4

    .line 865
    invoke-virtual {v2, v8, v9}, Landroid/support/v7/app/OverlayListView$a;->a(J)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    .line 866
    invoke-virtual {v2, v4}, Landroid/support/v7/app/OverlayListView$a;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    new-instance v4, Landroid/support/v7/app/p$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Landroid/support/v7/app/p$2;-><init>(Landroid/support/v7/app/p;Landroid/support/v7/media/g$g;)V

    .line 867
    invoke-virtual {v2, v4}, Landroid/support/v7/app/OverlayListView$a;->a(Landroid/support/v7/app/OverlayListView$a$a;)Landroid/support/v7/app/OverlayListView$a;

    move-result-object v2

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/app/p;->k:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move v3, v5

    goto/16 :goto_2
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    if-eqz v1, :cond_1

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->z:Z

    .line 515
    iget-boolean v0, p0, Landroid/support/v7/app/p;->A:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->A:Z

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/app/p;->z:Z

    .line 519
    iput-boolean v0, p0, Landroid/support/v7/app/p;->A:Z

    .line 520
    iget-object v1, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/p;->dismiss()V

    goto :goto_0

    .line 524
    :cond_3
    iget-boolean v1, p0, Landroid/support/v7/app/p;->I:Z

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Landroid/support/v7/app/p;->X:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Landroid/support/v7/app/p;->M:Landroid/widget/Button;

    iget-object v2, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v2}, Landroid/support/v7/media/g$g;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/app/p;->w:Z

    if-eqz v0, :cond_4

    .line 531
    iget-object v0, p0, Landroid/support/v7/app/p;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 532
    const-string v0, "MediaRouteCtrlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/p;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/app/p;->g()V

    .line 539
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/app/p;->j()V

    .line 540
    invoke-direct {p0}, Landroid/support/v7/app/p;->l()V

    .line 541
    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->b(Z)V

    goto :goto_0

    .line 529
    :cond_5
    const/16 v0, 0x8

    goto :goto_1

    .line 534
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/p;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 535
    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/p;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method a(Landroid/support/v7/media/g$g;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1055
    iget-boolean v1, p0, Landroid/support/v7/app/p;->Y:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->p()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/p;->K:I

    .line 459
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/p;->af:I

    .line 462
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/p;->ag:I

    .line 464
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p;->ah:I

    .line 468
    iput-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/graphics/Bitmap;

    .line 469
    iput-object v3, p0, Landroid/support/v7/app/p;->v:Landroid/net/Uri;

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/app/p;->f()V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->a(Z)V

    .line 472
    return-void
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 588
    iget-object v0, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 589
    new-instance v1, Landroid/support/v7/app/p$9;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/p$9;-><init>(Landroid/support/v7/app/p;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 600
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 725
    iget-boolean v0, p0, Landroid/support/v7/app/p;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->am:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    .line 730
    :goto_1
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->an:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->ao:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/app/p;->al:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method c(Z)V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v7/app/p;->b(Landroid/view/View;)I

    move-result v0

    .line 608
    iget-object v1, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 609
    invoke-direct {p0}, Landroid/support/v7/app/p;->i()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/p;->g(Z)V

    .line 610
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 612
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 611
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 614
    iget-object v1, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 616
    iget-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 617
    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_b

    .line 619
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/support/v7/app/p;->a(II)I

    move-result v1

    .line 620
    iget-object v3, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v6, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move v0, v1

    .line 624
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/app/p;->i()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/p;->f(Z)I

    move-result v6

    .line 625
    iget-object v1, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 627
    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    .line 629
    :goto_2
    if-lez v3, :cond_0

    .line 630
    iget v3, p0, Landroid/support/v7/app/p;->ai:I

    add-int/2addr v1, v3

    .line 632
    :cond_0
    iget v3, p0, Landroid/support/v7/app/p;->ah:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 633
    iget-boolean v3, p0, Landroid/support/v7/app/p;->B:Z

    if-eqz v3, :cond_4

    .line 636
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v6

    .line 637
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 638
    invoke-virtual {v5, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 642
    iget-object v5, p0, Landroid/support/v7/app/p;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v8, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    .line 643
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    .line 645
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v5, v8, v5

    .line 648
    iget-object v8, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-nez v8, :cond_5

    if-lez v0, :cond_5

    if-gt v3, v5, :cond_5

    .line 650
    iget-object v6, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v6, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    move v10, v3

    move v3, v0

    move v0, v10

    .line 661
    :goto_4
    invoke-direct {p0}, Landroid/support/v7/app/p;->i()Z

    move-result v6

    if-eqz v6, :cond_7

    if-gt v0, v5, :cond_7

    .line 663
    iget-object v0, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 667
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    :goto_6
    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->g(Z)V

    .line 668
    iget-object v0, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    .line 669
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 668
    :goto_7
    invoke-direct {p0, v4}, Landroid/support/v7/app/p;->f(Z)I

    move-result v2

    .line 671
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 674
    if-le v0, v5, :cond_1

    .line 675
    sub-int/2addr v0, v5

    sub-int/2addr v1, v0

    move v0, v5

    .line 679
    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 680
    iget-object v3, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3}, Landroid/support/v7/app/OverlayListView;->clearAnimation()V

    .line 681
    iget-object v3, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 682
    if-eqz p1, :cond_a

    .line 683
    iget-object v3, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v2}, Landroid/support/v7/app/p;->b(Landroid/view/View;I)V

    .line 684
    iget-object v2, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/app/p;->b(Landroid/view/View;I)V

    .line 685
    iget-object v1, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/p;->b(Landroid/view/View;I)V

    .line 692
    :goto_8
    iget-object v0, p0, Landroid/support/v7/app/p;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 693
    invoke-direct {p0, p1}, Landroid/support/v7/app/p;->h(Z)V

    .line 694
    return-void

    .line 620
    :cond_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_0

    .line 627
    :cond_3
    iget v1, p0, Landroid/support/v7/app/p;->ag:I

    .line 628
    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/media/g$f;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v1, v7

    goto/16 :goto_2

    :cond_4
    move v1, v2

    .line 633
    goto/16 :goto_3

    .line 653
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-static {v0}, Landroid/support/v7/app/p;->b(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    .line 654
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 655
    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    :cond_6
    add-int v0, v1, v6

    move v3, v2

    goto/16 :goto_4

    .line 665
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 667
    goto/16 :goto_6

    :cond_9
    move v4, v2

    .line 669
    goto :goto_7

    .line 687
    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 688
    iget-object v2, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-static {v2, v1}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 689
    iget-object v1, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    goto :goto_8

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method d()V
    .locals 2

    .prologue
    .line 881
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->e(Z)V

    .line 882
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    .line 883
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 884
    new-instance v1, Landroid/support/v7/app/p$3;

    invoke-direct {v1, p0}, Landroid/support/v7/app/p$3;-><init>(Landroid/support/v7/app/p;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 891
    return-void
.end method

.method d(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 902
    iput-object v0, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    .line 903
    iput-object v0, p0, Landroid/support/v7/app/p;->ae:Ljava/util/Set;

    .line 904
    iput-boolean v1, p0, Landroid/support/v7/app/p;->C:Z

    .line 905
    iget-boolean v0, p0, Landroid/support/v7/app/p;->D:Z

    if-eqz v0, :cond_0

    .line 906
    iput-boolean v1, p0, Landroid/support/v7/app/p;->D:Z

    .line 907
    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->b(Z)V

    .line 909
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    .line 910
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-direct {p0}, Landroid/support/v7/app/p;->k()V

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->d(Z)V

    goto :goto_0
.end method

.method e(Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 947
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v3

    move v1, v2

    .line 948
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 949
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 950
    add-int v0, v3, v1

    .line 951
    iget-object v5, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v5, v0}, Landroid/support/v7/app/p$f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 952
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    .line 953
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 956
    :cond_0
    sget v0, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 957
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 958
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 959
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 960
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 961
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 962
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 963
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 964
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 965
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 966
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 967
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 969
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->b()V

    .line 970
    if-nez p1, :cond_2

    .line 971
    invoke-virtual {p0, v2}, Landroid/support/v7/app/p;->d(Z)V

    .line 973
    :cond_2
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/p;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p$b;->cancel(Z)Z

    .line 1097
    :cond_2
    new-instance v0, Landroid/support/v7/app/p$b;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$b;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    .line 1098
    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    iput-boolean v1, p0, Landroid/support/v7/app/p;->w:Z

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/p;->x:Landroid/graphics/Bitmap;

    .line 1108
    iput v1, p0, Landroid/support/v7/app/p;->y:I

    .line 1109
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 476
    invoke-super {p0}, Landroid/support/v7/app/c;->onAttachedToWindow()V

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->J:Z

    .line 479
    iget-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    sget-object v1, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    iget-object v2, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/app/p$d;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V

    .line 481
    iget-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    invoke-virtual {v0}, Landroid/support/v7/media/g;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 482
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/app/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 330
    sget v0, Landroid/support/v7/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->setContentView(I)V

    .line 333
    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 335
    new-instance v3, Landroid/support/v7/app/p$a;

    invoke-direct {v3, p0}, Landroid/support/v7/app/p$a;-><init>(Landroid/support/v7/app/p;)V

    .line 337
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_expandable_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->R:Landroid/widget/FrameLayout;

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/p;->R:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/support/v7/app/p$5;

    invoke-direct {v4, p0}, Landroid/support/v7/app/p$5;-><init>(Landroid/support/v7/app/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_dialog_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->S:Landroid/widget/LinearLayout;

    .line 345
    iget-object v0, p0, Landroid/support/v7/app/p;->S:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/support/v7/app/p$6;

    invoke-direct {v4, p0}, Landroid/support/v7/app/p$6;-><init>(Landroid/support/v7/app/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/t;->b(Landroid/content/Context;)I

    move-result v4

    .line 352
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/p;->M:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Landroid/support/v7/app/p;->M:Landroid/widget/Button;

    sget v5, Landroid/support/v7/mediarouter/R$string;->mr_controller_disconnect:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/app/p;->M:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 355
    iget-object v0, p0, Landroid/support/v7/app/p;->M:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/p;->N:Landroid/widget/Button;

    .line 358
    iget-object v0, p0, Landroid/support/v7/app/p;->N:Landroid/widget/Button;

    sget v5, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop_casting:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/p;->N:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Landroid/support/v7/app/p;->N:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/p;->X:Landroid/widget/TextView;

    .line 363
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/support/v7/app/p;->P:Landroid/widget/ImageButton;

    .line 364
    iget-object v0, p0, Landroid/support/v7/app/p;->P:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_custom_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->T:Landroid/widget/FrameLayout;

    .line 366
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_default_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->g:Landroid/widget/FrameLayout;

    .line 369
    new-instance v4, Landroid/support/v7/app/p$7;

    invoke-direct {v4, p0}, Landroid/support/v7/app/p$7;-><init>(Landroid/support/v7/app/p;)V

    .line 385
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_art:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    .line 386
    iget-object v0, p0, Landroid/support/v7/app/p;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_title_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_media_main_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    .line 390
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_divider:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->ac:Landroid/view/View;

    .line 392
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_playback_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->aa:Landroid/widget/RelativeLayout;

    .line 393
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/p;->V:Landroid/widget/TextView;

    .line 394
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_subtitle:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/p;->W:Landroid/widget/TextView;

    .line 395
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_playback_ctrl:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    .line 396
    iget-object v0, p0, Landroid/support/v7/app/p;->O:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    .line 399
    iget-object v0, p0, Landroid/support/v7/app/p;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    .line 401
    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 402
    new-instance v0, Landroid/support/v7/app/p$e;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$e;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->m:Landroid/support/v7/app/p$e;

    .line 403
    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/p;->m:Landroid/support/v7/app/p$e;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 405
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_group_list:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/OverlayListView;

    iput-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    .line 407
    new-instance v0, Landroid/support/v7/app/p$f;

    iget-object v3, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3}, Landroid/support/v7/app/OverlayListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/app/p;->ad:Ljava/util/List;

    invoke-direct {v0, p0, v3, v4}, Landroid/support/v7/app/p$f;-><init>(Landroid/support/v7/app/p;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    .line 409
    iget-object v0, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    iget-object v3, p0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/OverlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->k:Ljava/util/Set;

    .line 412
    iget-object v3, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    .line 413
    invoke-direct {p0}, Landroid/support/v7/app/p;->h()Landroid/support/v7/media/g$f;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 412
    :goto_0
    invoke-static {v3, v4, v5, v0}, Landroid/support/v7/app/t;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    .line 414
    iget-object v3, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    check-cast v0, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v4, p0, Landroid/support/v7/app/p;->Z:Landroid/widget/LinearLayout;

    invoke-static {v3, v0, v4}, Landroid/support/v7/app/t;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->o:Ljava/util/Map;

    .line 417
    iget-object v0, p0, Landroid/support/v7/app/p;->o:Ljava/util/Map;

    iget-object v3, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    iget-object v4, p0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_group_expand_collapse:I

    .line 420
    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iput-object v0, p0, Landroid/support/v7/app/p;->Q:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    .line 421
    iget-object v0, p0, Landroid/support/v7/app/p;->Q:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    new-instance v3, Landroid/support/v7/app/p$8;

    invoke-direct {v3, p0}, Landroid/support/v7/app/p$8;-><init>(Landroid/support/v7/app/p;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/app/p;->c()V

    .line 433
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p;->E:I

    .line 435
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p;->aj:I

    .line 437
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p;->ak:I

    .line 440
    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->a(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    .line 441
    iget-object v0, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/support/v7/app/p;->T:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/support/v7/app/p;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Landroid/support/v7/app/p;->T:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 445
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/app/p;->I:Z

    .line 446
    invoke-virtual {p0}, Landroid/support/v7/app/p;->b()V

    .line 447
    return-void

    :cond_1
    move v0, v2

    .line 413
    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/app/p$d;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/p;->J:Z

    .line 489
    invoke-super {p0}, Landroid/support/v7/app/c;->onDetachedFromWindow()V

    .line 490
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x1

    .line 494
    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 496
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/media/g$g;->b(I)V

    .line 499
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 496
    goto :goto_0

    .line 499
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 504
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 506
    :cond_0
    const/4 v0, 0x1

    .line 508
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
