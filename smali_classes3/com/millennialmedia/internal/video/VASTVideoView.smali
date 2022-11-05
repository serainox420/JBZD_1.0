.class public Lcom/millennialmedia/internal/video/VASTVideoView;
.super Landroid/widget/RelativeLayout;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;,
        Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    }
.end annotation


# static fields
.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

.field private D:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

.field private E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private volatile c:Z

.field private volatile d:I

.field private volatile e:Ljava/lang/String;

.field private f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/millennialmedia/internal/video/MMVideoView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private w:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private x:Ljava/io/File;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    .line 114
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    const-string v1, "image/jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/millennialmedia/internal/video/VASTParser$InLineAd;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;",
            "Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 431
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->c:Z

    .line 74
    iput v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    .line 75
    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    .line 87
    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 88
    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 89
    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 97
    iput v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    .line 98
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->A:Z

    .line 99
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->B:Z

    .line 108
    iput v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    .line 433
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    .line 434
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    .line 436
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->setBackgroundColor(I)V

    .line 438
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iput v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    .line 444
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    .line 446
    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    .line 447
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;

    invoke-direct {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->w:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 451
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 453
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 456
    invoke-virtual {p0, v8, v7}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    .line 459
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    const-string v1, "mmVastVideoView_backgroundFrame"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 462
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 465
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getMoatIdentifiers()Ljava/util/Map;

    move-result-object v4

    .line 470
    :goto_1
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 471
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    const-string v1, "mmVastVideoView_videoView"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setTag(Ljava/lang/Object;)V

    .line 473
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v4, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 476
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 478
    const/4 v1, 0x3

    sget v4, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 481
    :goto_2
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    .line 484
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    const-string v1, "mmVastVideoView_endCardContainer"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 487
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->u:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 490
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->w:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 491
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 492
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->u:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 494
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 497
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    .line 501
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 503
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    .line 504
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_close:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    const-string v1, "mmVastVideoView_closeButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 515
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 516
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 518
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 519
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 521
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_skip:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    const-string v1, "mmVastVideoView_skipButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 527
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    .line 528
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_opacity:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x106000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    const-string v1, "mmVastVideoView_countdown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 535
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 536
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 538
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 541
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    .line 545
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_replay:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    const-string v1, "mmVastVideoView_replayButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 557
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 558
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 560
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 561
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 563
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 568
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 577
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    .line 578
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Landroid/content/Context;)V

    .line 583
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$Creative;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->B:Z

    .line 585
    iput v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    .line 586
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    .line 587
    return-void

    .line 441
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    goto/16 :goto_0

    :cond_3
    move-object v4, v6

    .line 468
    goto/16 :goto_1

    :cond_4
    move-object v0, v7

    goto/16 :goto_2
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 4

    .prologue
    .line 1928
    const/high16 v0, -0x1000000

    .line 1929
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1931
    :try_start_0
    iget-object v1, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1937
    :cond_0
    :goto_0
    return v0

    .line 1932
    :catch_0
    move-exception v1

    .line 1933
    sget-object v1, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hex color format specified = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;",
            ">;)",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x320

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 829
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    return-object v2

    .line 833
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v3

    .line 835
    const/16 v7, 0x190

    .line 838
    const-string v1, "wifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    const/16 v0, 0x4b0

    move v1, v0

    .line 844
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    const-string v0, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using bit rate range "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " inclusive for network connectivity type = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    .line 852
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 853
    const-string v3, "progressive"

    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 854
    const-string v3, "video/mp4"

    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 855
    iget v3, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-lt v3, v7, :cond_5

    iget v3, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-gt v3, v1, :cond_5

    move v6, v5

    .line 857
    :goto_2
    if-eqz v2, :cond_3

    iget v3, v2, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    iget v11, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-ge v3, v11, :cond_6

    :cond_3
    move v3, v5

    .line 860
    :goto_3
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    :goto_4
    move-object v2, v0

    .line 864
    goto :goto_1

    .line 840
    :cond_4
    const-string v1, "lte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    .line 841
    goto :goto_0

    :cond_5
    move v6, v4

    .line 855
    goto :goto_2

    :cond_6
    move v3, v4

    .line 857
    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->x:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2169
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 2170
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2171
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 2172
    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v4, :cond_1

    .line 2173
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    .line 2174
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2176
    if-eqz v0, :cond_1

    .line 2177
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2185
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1507
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1510
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 1511
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1512
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    if-eqz v3, :cond_0

    .line 1515
    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    .line 1516
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a(I)Z

    .line 1507
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1520
    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 1525
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMax()I

    move-result v1

    .line 1526
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMin()I

    move-result v0

    .line 1530
    if-le v0, v1, :cond_0

    move v0, v1

    .line 1535
    :cond_0
    iget v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->y:I

    .line 1536
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1539
    sub-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 1541
    if-lez v0, :cond_1

    .line 1542
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$16;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$16;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;I)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1559
    :goto_0
    return-void

    .line 1551
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->c:Z

    .line 1552
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$17;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$17;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 733
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 735
    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    move-result-object v2

    .line 737
    if-eqz v2, :cond_0

    .line 738
    iput-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->D:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    .line 739
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->D:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    if-eqz v0, :cond_6

    .line 749
    invoke-virtual {p1, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 750
    if-nez v0, :cond_3

    .line 751
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "Cannot access video cache directory. External storage is not available."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    .line 824
    :cond_2
    :goto_0
    return-void

    .line 759
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_mm_video_cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 763
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 765
    if-eqz v2, :cond_5

    .line 766
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 767
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 768
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0x2932e00

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 772
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 766
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 779
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->D:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$4;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$4;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0, v10, v1, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    .line 808
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->g()V

    .line 811
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->f()V

    .line 812
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->d()V

    .line 813
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->e()V

    goto :goto_0

    .line 817
    :cond_6
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 818
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "VAST init failed because it did not contain a compatible media file."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    goto/16 :goto_0
.end method

.method private a(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1398
    const-string v0, "MmJsBridge.vast.enableWebOverlay"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    const-string v0, "MmJsBridge.vast.setDuration"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1402
    const-string v0, "MmJsBridge.vast.setState"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    :cond_0
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V
    .locals 3

    .prologue
    .line 1756
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing tracking url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1760
    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .line 1761
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V
    .locals 1

    .prologue
    .line 2026
    if-eqz p1, :cond_0

    .line 2028
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$24;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2040
    :cond_0
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 949
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$6;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->o()V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/MMWebView;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1091
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$10;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$10;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1156
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "mmVastVideoView_companionWebView"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setTag(Ljava/lang/Object;)V

    .line 1158
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2071
    if-eqz p1, :cond_2

    .line 2072
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2073
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2074
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2075
    sget-object v2, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 2081
    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2046
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2048
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$25;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2065
    :cond_0
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$Creative;)Z
    .locals 1

    .prologue
    .line 2191
    const/4 v0, 0x0

    .line 2193
    if-eqz p1, :cond_0

    .line 2194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2196
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->e(Ljava/util/List;)Z

    move-result v0

    .line 2199
    :cond_0
    return v0
.end method

.method private a(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z
    .locals 1

    .prologue
    .line 2106
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    .line 2107
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2106
    :goto_0
    return v0

    .line 2107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/VASTVideoView;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/video/VASTVideoView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1803
    .line 1804
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1805
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1809
    :try_start_0
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1810
    const-string v1, "%"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1813
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1851
    :cond_0
    :goto_0
    return v0

    .line 1820
    :cond_1
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1821
    array-length v4, v3

    if-gt v4, v5, :cond_3

    .line 1823
    array-length v4, v3

    if-ne v4, v5, :cond_4

    .line 1824
    const/4 v1, 0x0

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1825
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1828
    :goto_1
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1829
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1830
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0x36ee80

    mul-int/2addr v4, v5

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0xea60

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget-object v3, v3, v5

    .line 1831
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_0

    .line 1834
    :cond_2
    sget-object v2, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VAST time format invalid parse value was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1845
    :catch_0
    move-exception v2

    .line 1846
    :goto_2
    sget-object v2, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VAST time format invalid parse value was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1840
    :cond_3
    :try_start_2
    sget-object v1, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VAST time format invalid parse value was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1845
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2

    :cond_4
    move v7, v1

    move-object v1, v2

    move v2, v7

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 594
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 597
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 1594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1597
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1599
    if-eqz v0, :cond_0

    .line 1600
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1603
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1604
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    .line 1606
    if-eqz v0, :cond_1

    .line 1607
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1610
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    move-object v1, v0

    .line 1611
    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    .line 1613
    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v3

    .line 1614
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1615
    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1616
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lt p1, v3, :cond_2

    .line 1617
    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V

    goto :goto_0

    .line 1621
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1622
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Progress event could not be fired because the url is empty. offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1631
    :cond_5
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1632
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Progress event could not be fired because the time offset is invalid. url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1640
    :cond_7
    return-void
.end method

.method private b(II)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1566
    div-int/lit8 v1, p2, 0x4

    .line 1568
    if-lt p1, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    if-ge v0, v2, :cond_0

    .line 1569
    iput v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    .line 1571
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1572
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1575
    :cond_0
    mul-int/lit8 v0, v1, 0x2

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    if-ge v0, v3, :cond_1

    .line 1576
    iput v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    .line 1578
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1579
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1582
    :cond_1
    mul-int/lit8 v0, v1, 0x3

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    if-ge v0, v4, :cond_2

    .line 1583
    iput v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->z:I

    .line 1585
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1586
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1588
    :cond_2
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1736
    if-eqz p1, :cond_0

    .line 1737
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$20;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$20;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1751
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 613
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 614
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    if-eqz v0, :cond_3

    .line 627
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 633
    :cond_4
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v0, :cond_5

    .line 635
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    .line 2114
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    const/4 v0, 0x1

    .line 2119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    .line 873
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$5;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$5;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 940
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "mmVastVideoView_overlayWebView"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setTag(Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    .line 944
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b()V

    return-void
.end method

.method private d(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2205
    const/4 v0, 0x0

    .line 2207
    if-eqz p1, :cond_1

    .line 2208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 2209
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->e(Ljava/util/List;)Z

    move-result v0

    .line 2211
    if-eqz v0, :cond_0

    .line 2217
    :cond_1
    return v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 971
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 972
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 973
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 974
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    .line 975
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->width:Ljava/lang/Integer;

    .line 976
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_1

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->height:Ljava/lang/Integer;

    .line 977
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xfa

    if-lt v4, v5, :cond_1

    .line 979
    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 980
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/millennialmedia/internal/video/VASTVideoView;->b:Ljava/util/List;

    iget-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 981
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 982
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 984
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 986
    :cond_4
    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    .line 998
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eq v0, v1, :cond_0

    .line 1004
    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_7

    .line 1005
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 1006
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1008
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/lang/String;)V

    .line 1010
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1014
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$7;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    :cond_7
    :goto_0
    return-void

    .line 1023
    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 1024
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1026
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1032
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$8;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1041
    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 1042
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1044
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$9;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->i()V

    return-void
.end method

.method private e(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$Creative;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2223
    const/4 v1, 0x0

    .line 2225
    if-eqz p1, :cond_1

    .line 2226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 2227
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2228
    const/4 v0, 0x1

    .line 2234
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    .line 1166
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1168
    const-string v2, "mmVastVideoView_backgroundImageView"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1169
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1170
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1172
    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$11;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$Background;Landroid/widget/ImageView;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/millennialmedia/internal/video/VASTVideoView$12;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$12;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1257
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v2, "mmVastVideoView_backgroundWebView"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setTag(Ljava/lang/Object;)V

    .line 1259
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1260
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->l()V

    return-void
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 1268
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1269
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$13;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$13;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1279
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1280
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1282
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 1284
    const/4 v6, 0x3

    if-ge v1, v6, :cond_3

    .line 1285
    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 1286
    invoke-static {v6}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 1287
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "image/png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1289
    add-int/lit8 v1, v1, 0x1

    .line 1291
    new-instance v6, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V

    .line 1292
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1294
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1297
    invoke-virtual {v7, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1300
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v0

    invoke-direct {v6, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1303
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v0, v1

    move v1, v0

    .line 1313
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1299
    goto :goto_1

    .line 1315
    :cond_3
    return-void
.end method

.method static synthetic g(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->k()V

    return-void
.end method

.method private getMoatIdentifiers()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->moatExtension:Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;

    .line 2242
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2243
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 2244
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->moatExtension:Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;

    if-eqz v3, :cond_3

    .line 2245
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->moatExtension:Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;

    :goto_1
    move-object v1, v0

    .line 2247
    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2251
    :cond_1
    if-nez v1, :cond_2

    .line 2252
    const/4 v0, 0x0

    .line 2263
    :goto_2
    return-object v0

    .line 2255
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2256
    const-string v2, "level1"

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level1:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2257
    const-string v2, "level2"

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level2:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2258
    const-string v2, "level3"

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level3:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2259
    const-string v2, "level4"

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level4:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2260
    const-string v2, "slicer1"

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->slicer1:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2261
    const-string v2, "slicer2"

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->slicer2:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private getWrapperCompanionAdTracking()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2160
    :goto_0
    return-object v0

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 2140
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 2144
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 2145
    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 2149
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    .line 2150
    iget-object v5, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-nez v5, :cond_3

    .line 2153
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2160
    goto :goto_0
.end method

.method private getWrapperVideoClicks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2088
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2089
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 2090
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2091
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 2092
    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    if-eqz v4, :cond_1

    .line 2093
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2100
    :cond_2
    return-object v1
.end method

.method private h()V
    .locals 4

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    .line 1321
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperVideoClicks()Ljava/util/List;

    move-result-object v1

    .line 1323
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperVideoClicks()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$14;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j()V

    return-void
.end method

.method static synthetic i(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$18;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$18;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    return-void
.end method

.method static synthetic j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->impressions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->w:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 1769
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$21;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$21;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1798
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1857
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    .line 1859
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->e:I

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->e:I

    .line 1867
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    .line 1869
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1870
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1872
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->restart()V

    .line 1873
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_0

    .line 1879
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1880
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->videoSkipped()V

    .line 1884
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->m()V

    .line 1885
    return-void
.end method

.method static synthetic l(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->h()V

    return-void
.end method

.method static synthetic m(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1890
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    .line 1891
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1893
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1895
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1896
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, v2

    .line 1899
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1902
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 1903
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1905
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1907
    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1913
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    .line 1917
    :goto_1
    return-void

    .line 1915
    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b()V

    goto :goto_1
.end method

.method static synthetic n(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->p()V

    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1976
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$22;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$22;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1985
    return-void
.end method

.method static synthetic p(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->E:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_0

    .line 1992
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperCompanionAdTracking()Ljava/util/List;

    move-result-object v0

    .line 1994
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$23;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$23;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2021
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method static synthetic r(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->m()V

    return-void
.end method

.method static synthetic s(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private setVideoState(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1384
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->isJSBridgeReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->isJSBridgeReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1393
    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->s:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    return-object v0
.end method

.method static synthetic u(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->F:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->c:Z

    return v0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 2

    .prologue
    .line 1728
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onBufferingUpdate"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    .prologue
    .line 1446
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_1

    .line 1451
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1452
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1455
    :cond_1
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    .line 1458
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->A:Z

    if-nez v0, :cond_2

    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->A:Z

    .line 1460
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_2

    .line 1461
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    new-instance v1, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    const-string v2, "IncentiveVideoComplete"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    .line 1466
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$15;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$15;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1472
    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1683
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$19;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$19;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1711
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1716
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.fireErrorEvent"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Video playback error occurred."

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.fireErrorEvent"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Video playback error occurred."

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1722
    :cond_3
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1668
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onMuted"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1435
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_0
    const-string v0, "paused"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1353
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->skipOffset:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->y:I

    .line 1359
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->f:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onLoaded()V

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->isJSBridgeReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->isJSBridgeReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    :cond_3
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 1

    .prologue
    .line 1478
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->a(I)V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->a(I)V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1488
    invoke-direct {p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(I)V

    .line 1492
    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->c:Z

    if-nez v0, :cond_3

    .line 1493
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(II)V

    .line 1496
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->B:Z

    if-eqz v0, :cond_4

    .line 1497
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(II)V

    .line 1498
    invoke-direct {p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    :cond_4
    monitor-exit p0

    return-void

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1376
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onReadyToStart"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1659
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onSeek"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_0
    return-void
.end method

.method public declared-synchronized onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_0
    const-string v0, "playing"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_1

    .line 1417
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V

    .line 1418
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->C:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :cond_1
    monitor-exit p0

    return-void

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 1426
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 1677
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1944
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->x:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->x:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete video asset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->x:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 1952
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1953
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->shutdown()V

    .line 1954
    iput-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1956
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1957
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->shutdown()V

    .line 1958
    iput-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->q:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1960
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    .line 1961
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->shutdown()V

    .line 1962
    iput-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->r:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1964
    :cond_3
    return-void
.end method

.method public updateComponentVisibility()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 645
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 646
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 658
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVisibility(I)V

    .line 669
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->c()V

    .line 670
    return-void

    :cond_2
    move v0, v2

    .line 646
    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 655
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v2, v3, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 660
    :cond_4
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 661
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->p:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_2
.end method

.method public updateLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 676
    .line 678
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    if-eq v2, v0, :cond_0

    .line 683
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 686
    const/4 v3, 0x3

    sget v4, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 688
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    move v2, v0

    .line 704
    :goto_0
    if-eqz v2, :cond_3

    .line 705
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 706
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 707
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 708
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v0

    invoke-direct {v4, v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 711
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 718
    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    if-ne v2, v0, :cond_4

    .line 696
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 699
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->h:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 707
    goto :goto_1

    .line 715
    :cond_2
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 727
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->G:I

    .line 728
    return-void

    :cond_4
    move v2, v1

    goto :goto_0
.end method
