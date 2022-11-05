.class public Lcom/revmob/FullscreenActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static h:Ljava/lang/Boolean;


# instance fields
.field private A:I

.field private B:Landroid/media/AudioManager;

.field private C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private D:D

.field private E:D

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Ljava/lang/Boolean;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Landroid/widget/RelativeLayout$LayoutParams;

.field private Q:Landroid/widget/RelativeLayout$LayoutParams;

.field private R:Landroid/widget/RelativeLayout$LayoutParams;

.field private S:D

.field private T:I

.field private U:D

.field private V:D

.field private W:D

.field private X:I

.field public a:Lcom/revmob/ads/interstitial/b/g;

.field public b:Lcom/revmob/ads/interstitial/a/b;

.field public c:Lcom/revmob/RevMobAdsListener;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Z

.field public f:Ljava/lang/Boolean;

.field public g:Z

.field private i:Lcom/revmob/ads/interstitial/a;

.field private j:Landroid/widget/VideoView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout$LayoutParams;

.field private o:Landroid/widget/RelativeLayout$LayoutParams;

.field private p:Landroid/widget/RelativeLayout$LayoutParams;

.field private q:Landroid/util/DisplayMetrics;

.field private r:Landroid/widget/ImageView;

.field private s:Z

.field private t:Z

.field private u:Landroid/hardware/SensorManager;

.field private v:Landroid/hardware/Sensor;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->q:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    iput-boolean v2, p0, Lcom/revmob/FullscreenActivity;->t:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput v2, p0, Lcom/revmob/FullscreenActivity;->w:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->f:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->J:Ljava/lang/Boolean;

    iput-wide v4, p0, Lcom/revmob/FullscreenActivity;->U:D

    iput-wide v4, p0, Lcom/revmob/FullscreenActivity;->V:D

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->W:D

    iput v2, p0, Lcom/revmob/FullscreenActivity;->X:I

    iput-boolean v2, p0, Lcom/revmob/FullscreenActivity;->g:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/revmob/FullscreenActivity;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-class v0, Lcom/revmob/FullscreenActivity;

    invoke-static {p0, v0}, Lcom/revmob/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/revmob/FullscreenActivity;->h:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/revmob/FullscreenActivity;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/revmob/FullscreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->j()V

    return-void
.end method

.method private a(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_7

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->A:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-le v0, v1, :cond_3

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->x:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_3
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->y:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_3

    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->A:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-ge v0, v1, :cond_b

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_4
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->x:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_4

    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_4

    :cond_b
    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_6
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->y:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    if-ne v0, v8, :cond_c

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_6

    :cond_e
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_6
.end method

.method private b(Z)V
    .locals 12

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/16 v9, 0xe

    const/16 v8, 0xd

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const-wide v4, 0x3fc999999999999aL    # 0.2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private c(Z)V
    .locals 11

    const/16 v10, 0xe

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide v4, 0x3fc999999999999aL    # 0.2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->M:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->M:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->M:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->M:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private i()V
    .locals 9

    const/16 v5, 0x30

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->i()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->Q()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->z:I

    invoke-virtual {v0, v1}, Lcom/revmob/ads/interstitial/a/b;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget v2, p0, Lcom/revmob/FullscreenActivity;->z:I

    invoke-virtual {v1, v2}, Lcom/revmob/ads/interstitial/a/b;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->p:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->p:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->i()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->x()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->w()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->E:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/revmob/FullscreenActivity;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    :goto_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->y:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_1
    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->l()V

    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->k()V

    return-void

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/revmob/FullscreenActivity;->E:D

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->D:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->U:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->V:D

    iget-wide v4, p0, Lcom/revmob/FullscreenActivity;->W:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget v4, p0, Lcom/revmob/FullscreenActivity;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->l()V

    goto/16 :goto_1
.end method

.method private j()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/revmob/ads/interstitial/b/a;

    invoke-direct {v0, p0}, Lcom/revmob/ads/interstitial/b/a;-><init>(Lcom/revmob/FullscreenActivity;)V

    new-instance v1, Lcom/revmob/ads/interstitial/a;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-direct {v1, p0, v2, v0, p0}, Lcom/revmob/ads/interstitial/a;-><init>(Landroid/app/Activity;Lcom/revmob/ads/interstitial/a/b;Lcom/revmob/ads/interstitial/b/a;Lcom/revmob/FullscreenActivity;)V

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->j:Landroid/widget/VideoView;

    return-void
.end method

.method private k()V
    .locals 7

    const/16 v6, 0x14

    const/16 v5, 0xb

    const/4 v4, 0x6

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/revmob/ads/a/g;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/f;

    invoke-direct {v1, p0}, Lcom/revmob/f;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->A:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->A:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->Q()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/revmob/FullscreenActivity;->z:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {p0, v6}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v6}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/revmob/internal/p;

    invoke-direct {v0}, Lcom/revmob/internal/p;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/revmob/internal/p;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/a/b;->d:Ljava/lang/String;

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "playSoundOnShow"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "playSoundOnShow"

    invoke-static {v0, v4, v1, v4, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->C()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->D()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->E()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->J:Ljava/lang/Boolean;

    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/revmob/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const-wide v2, 0x3fc5c28f5c28f5c3L    # 0.17

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v1, p0, Lcom/revmob/FullscreenActivity;->K:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->O:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/revmob/FullscreenActivity;->z:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->D()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    new-instance v2, Lcom/revmob/c;

    invoke-direct {v2, p0}, Lcom/revmob/c;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->P:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->H()I

    move-result v1

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->I()I

    move-result v2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->J()I

    move-result v3

    iget-object v4, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v4}, Lcom/revmob/ads/interstitial/a/b;->K()I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v5

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/revmob/FullscreenActivity;->S:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iget-object v6, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->Q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->k()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->K:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v2, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/FullscreenActivity;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->o:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedPreRollDisplayed()V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->z()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->L:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->y()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->K:I

    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    iget v1, p0, Lcom/revmob/FullscreenActivity;->L:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/FullscreenActivity;->O:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->C()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->j()V

    goto :goto_2
.end method

.method public final b()V
    .locals 10

    const-wide v4, 0x3fc999999999999aL    # 0.2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->g()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->A()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->N:I

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->B()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->M:I

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->y:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/revmob/FullscreenActivity;->M:I

    iget v3, p0, Lcom/revmob/FullscreenActivity;->N:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->R:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->R:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v4, p0, Lcom/revmob/FullscreenActivity;->M:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    iget v3, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/revmob/FullscreenActivity;->G:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->E()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->G:Landroid/widget/ImageView;

    new-instance v3, Lcom/revmob/d;

    invoke-direct {v3, p0}, Lcom/revmob/d;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->R:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->G()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->L()I

    move-result v2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->M()I

    move-result v3

    iget-object v4, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v4}, Lcom/revmob/ads/interstitial/a/b;->N()I

    move-result v4

    iget-object v5, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v5}, Lcom/revmob/ads/interstitial/a/b;->O()I

    move-result v5

    mul-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/revmob/FullscreenActivity;->S:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/FullscreenActivity;->N:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->B:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->j()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/revmob/g;

    invoke-direct {v0, p0}, Lcom/revmob/g;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->j:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->finish()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/revmob/FullscreenActivity;->w:I

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->w:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    :cond_0
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1, v0}, Lcom/revmob/ads/interstitial/a/b;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/interstitial/a/b;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->r:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    invoke-interface {v1}, Lcom/revmob/ads/interstitial/b/g;->e()V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->Q()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v7}, Lcom/revmob/FullscreenActivity;->a(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v6}, Lcom/revmob/FullscreenActivity;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->C()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v6}, Lcom/revmob/FullscreenActivity;->b(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->D()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v7}, Lcom/revmob/FullscreenActivity;->b(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v6}, Lcom/revmob/FullscreenActivity;->c(Z)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v7}, Lcom/revmob/FullscreenActivity;->c(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v4, 0x400

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    const-string v0, "videoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->w:I

    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_4

    invoke-virtual {p0, v7}, Lcom/revmob/FullscreenActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->x:I

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->y:I

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/revmob/FullscreenActivity;->z:I

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->q:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->q:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/revmob/FullscreenActivity;->T:I

    iput-wide v2, p0, Lcom/revmob/FullscreenActivity;->S:D

    iget v0, p0, Lcom/revmob/FullscreenActivity;->T:I

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    iget v4, p0, Lcom/revmob/FullscreenActivity;->T:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->S:D

    :cond_0
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "com.revmob.ads.fullscreen.fetchId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "followAppOrientation"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/revmob/FullscreenActivity;->e:Z

    const-string v4, "isRewarded"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/revmob/FullscreenActivity;->f:Ljava/lang/Boolean;

    :try_start_0
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/interstitial/a/b;

    :goto_2
    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->Q()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->Q()D

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/revmob/FullscreenActivity;->W:D

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->e()Lcom/revmob/RevMobAdsListener;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->R()I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->X:I

    iget v0, p0, Lcom/revmob/FullscreenActivity;->X:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/revmob/FullscreenActivity;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fullscreen loaded - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v1, v1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/revmob/ads/interstitial/b/h;

    invoke-direct {v0, p0}, Lcom/revmob/ads/interstitial/b/h;-><init>(Lcom/revmob/FullscreenActivity;)V

    new-instance v1, Lcom/revmob/internal/s;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v3, v3, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;Ljava/lang/String;)V

    new-instance v0, Lcom/revmob/ads/interstitial/b/i;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/revmob/ads/interstitial/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/s;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    :goto_5
    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->i()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_6
    return-void

    :cond_3
    iput v8, p0, Lcom/revmob/FullscreenActivity;->w:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v7}, Lcom/revmob/FullscreenActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_f

    :try_start_1
    invoke-static {v0}, Lcom/revmob/ads/interstitial/a/b;->a(Ljava/lang/String;)Lcom/revmob/ads/interstitial/a/b;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    move-wide v0, v2

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error on create Fullscreen Ad."

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    const-string v2, "Unexpected error on create Fullscreen Ad."

    invoke-virtual {v1, v2}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/a/b;->d:Ljava/lang/String;

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "onCreate"

    invoke-static {v0, v1, v2, v6, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->finish()V

    goto :goto_6

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/revmob/ads/interstitial/b/d;

    invoke-direct {v0, p0}, Lcom/revmob/ads/interstitial/b/d;-><init>(Lcom/revmob/FullscreenActivity;)V

    new-instance v1, Lcom/revmob/internal/s;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v3, v3, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;Ljava/lang/String;)V

    new-instance v0, Lcom/revmob/ads/interstitial/b/i;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/revmob/ads/interstitial/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/s;)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->b()Lcom/revmob/RevMobParallaxMode;

    move-result-object v0

    sget-object v1, Lcom/revmob/RevMobParallaxMode;->DEFAULT:Lcom/revmob/RevMobParallaxMode;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/FullscreenActivity;->t:Z

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/FullscreenActivity;->s:Z

    new-instance v3, Lcom/revmob/ads/interstitial/b/a;

    invoke-direct {v3, p0}, Lcom/revmob/ads/interstitial/b/a;-><init>(Lcom/revmob/FullscreenActivity;)V

    new-instance v0, Lcom/revmob/ads/interstitial/b/e;

    iget-object v2, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-boolean v4, p0, Lcom/revmob/FullscreenActivity;->t:Z

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->k()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/revmob/ads/interstitial/b/e;-><init>(Landroid/app/Activity;Lcom/revmob/ads/interstitial/a/b;Lcom/revmob/ads/interstitial/b/a;ZI)V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    goto/16 :goto_5

    :cond_c
    new-instance v0, Lcom/revmob/a;

    invoke-direct {v0}, Lcom/revmob/a;-><init>()V

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->B:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->B:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v7, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->finish()V

    goto/16 :goto_6

    :cond_d
    const-string v0, "marketURL"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/revmob/ads/interstitial/b/i;

    const/4 v2, 0x0

    new-instance v3, Lcom/revmob/e;

    invoke-direct {v3, p0}, Lcom/revmob/e;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/revmob/ads/interstitial/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/s;)V

    iput-object v1, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    invoke-direct {p0}, Lcom/revmob/FullscreenActivity;->i()V

    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->d()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :cond_e
    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "onCreate"

    invoke-static {v0, v6, v1, v6, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    move-object v0, v6

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a/b;->b(Lcom/revmob/ads/interstitial/a/b;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    :cond_0
    invoke-virtual {p0}, Lcom/revmob/FullscreenActivity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->u:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->u:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/revmob/FullscreenActivity;->w:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->t:Z

    if-eqz v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->u:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->u:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/FullscreenActivity;->v:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->v:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->u:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/revmob/FullscreenActivity;->v:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/revmob/b;

    invoke-direct {v0, p0}, Lcom/revmob/b;-><init>(Lcom/revmob/FullscreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/revmob/FullscreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_0

    const-string v0, "videoPosition"

    iget v1, p0, Lcom/revmob/FullscreenActivity;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/FullscreenActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Lcom/revmob/ads/interstitial/b/e;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/interstitial/b/e;->a(II)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/revmob/FullscreenActivity;->w:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/revmob/FullscreenActivity;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/revmob/FullscreenActivity;->i:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    :cond_0
    return-void
.end method
