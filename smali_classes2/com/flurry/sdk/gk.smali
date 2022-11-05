.class public Lcom/flurry/sdk/gk;
.super Lcom/flurry/sdk/gj;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/Boolean;

.field private E:Ljava/lang/Boolean;

.field private F:Lcom/flurry/sdk/gz$a;

.field private f:Z

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/content/Context;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/ProgressBar;

.field private o:Lcom/flurry/sdk/r;

.field private p:Lcom/flurry/sdk/fn;

.field private q:Ljava/lang/String;

.field private r:Lcom/flurry/sdk/jr;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/flurry/sdk/gk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gk;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/gj;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 56
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 79
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->v:Z

    .line 80
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->w:Z

    .line 81
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->x:Z

    .line 82
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->y:Z

    .line 83
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->z:Z

    .line 84
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->A:Z

    .line 85
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->B:Z

    .line 87
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->C:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->D:Ljava/lang/Boolean;

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->E:Ljava/lang/Boolean;

    .line 782
    new-instance v0, Lcom/flurry/sdk/gk$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gk$5;-><init>(Lcom/flurry/sdk/gk;)V

    iput-object v0, p0, Lcom/flurry/sdk/gk;->F:Lcom/flurry/sdk/gz$a;

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/flurry/sdk/gu;

    sget-object v2, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 2078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 1154
    invoke-virtual {v1}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v3

    .line 95
    invoke-interface {p2}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/gu;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gj$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 3071
    iput-object p0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    .line 99
    :cond_0
    new-instance v0, Lcom/flurry/sdk/fn;

    invoke-direct {v0}, Lcom/flurry/sdk/fn;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gk;->p:Lcom/flurry/sdk/fn;

    .line 100
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->r:Lcom/flurry/sdk/jr;

    .line 101
    iput-object p2, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->getServerParamInfo()V

    .line 105
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->E()V

    .line 107
    const-string v0, "clickToCall"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->s:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/gk;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 109
    const-string v0, "callToAction"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->s:Ljava/lang/String;

    .line 3659
    :cond_1
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 3660
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 4290
    iget-object v0, v0, Lcom/flurry/sdk/hi;->d:Landroid/graphics/Bitmap;

    .line 3661
    iput-object v0, p0, Lcom/flurry/sdk/gk;->g:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->initLayout()V

    .line 114
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 376
    :cond_0
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 517
    iget-object v0, p0, Lcom/flurry/sdk/gk;->r:Lcom/flurry/sdk/jr;

    .line 30079
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 517
    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/flurry/sdk/gk;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gk;->r:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->b()Lcom/flurry/sdk/jr$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jr$a;->c:Lcom/flurry/sdk/jr$a;

    if-ne v0, v1, :cond_1

    .line 519
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 520
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gk;->setAutoPlay(Z)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gk;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gk;->r:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->b()Lcom/flurry/sdk/jr$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jr$a;->d:Lcom/flurry/sdk/jr$a;

    if-ne v0, v1, :cond_2

    .line 523
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 524
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gk;->setAutoPlay(Z)V

    goto :goto_0

    .line 527
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 528
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gk;->setAutoPlay(Z)V

    goto :goto_0
.end method

.method private F()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 666
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 30090
    iput-boolean v2, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 31034
    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 669
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 670
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->y:Z

    .line 672
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->A:Z

    .line 673
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->A:Z

    .line 31081
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v1

    .line 31138
    iput-boolean v0, v1, Lcom/flurry/sdk/gp;->n:Z

    .line 31083
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 674
    iget-object v0, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 678
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->o()V

    .line 679
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 31288
    iget-object v0, v0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 679
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 683
    iget-object v0, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 686
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->D()V

    .line 687
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->requestLayout()V

    .line 688
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 774
    if-eqz p0, :cond_0

    .line 775
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->F()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    if-nez p0, :cond_0

    .line 734
    :goto_0
    return v0

    .line 727
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 728
    const/high16 v1, 0x10800000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/gk;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/gk;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/gk;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 33078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 32154
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 754
    iget-object v2, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    iget-object v0, v0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    .line 759
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->y:Z

    .line 347
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->F()V

    .line 348
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 34078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 33154
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 765
    iget-object v2, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v0, v0, Lcom/flurry/sdk/de;->f:Ljava/util/Map;

    .line 770
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/sdk/gk;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->z:Z

    return v0
.end method

.method static synthetic f(Lcom/flurry/sdk/gk;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/flurry/sdk/gk;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->C:Z

    return v0
.end method

.method private getServerParamInfo()V
    .locals 2

    .prologue
    .line 534
    const-string v0, "videoUrl"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gk;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 536
    if-nez v0, :cond_0

    .line 538
    const-string v0, "vastAd"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gk;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 540
    :cond_0
    if-eqz v0, :cond_1

    .line 541
    const-string v1, "autoplayWifi"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gk;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/gk;->D:Ljava/lang/Boolean;

    .line 542
    const-string v1, "autoplayCell"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gk;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gk;->E:Ljava/lang/Boolean;

    .line 544
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/gk;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->B:Z

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/gk;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method static synthetic j(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->D()V

    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 353
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/gj$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 308
    sget-object v0, Lcom/flurry/sdk/gj$a;->b:Lcom/flurry/sdk/gj$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->w()V

    .line 311
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->w:Z

    .line 313
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gk;->u:I

    .line 318
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v1, "ad_object_legacy"

    iget-object v2, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    instance-of v2, v2, Lcom/flurry/sdk/v;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    const-string v1, "ad_object_id"

    iget-object v2, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, "url"

    iget-object v2, p0, Lcom/flurry/sdk/gk;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "close_ad"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flurry/sdk/gk;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    sget-object v0, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->C()V

    .line 327
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->v:Z

    .line 328
    iput-boolean v3, p0, Lcom/flurry/sdk/gk;->w:Z

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->f()V

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 16284
    iput-boolean v3, v0, Lcom/flurry/sdk/gu;->f:Z

    .line 332
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 17086
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 333
    if-nez v1, :cond_3

    .line 18030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 334
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gk;->a(I)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 18292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 337
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 19292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 337
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 20292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 338
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->suspend()V

    .line 340
    :cond_5
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->d()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->E()V

    .line 178
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->D()V

    .line 179
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->f:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 6030
    iget v3, v0, Lcom/flurry/sdk/gp;->a:I

    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->A:Z

    if-nez v0, :cond_2

    .line 6402
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->B:Z

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    .line 187
    :goto_0
    if-nez v0, :cond_2

    .line 188
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gk;->a(I)V

    .line 191
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->B:Z

    if-eqz v0, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->y:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->q()Z

    move-result v0

    if-nez v0, :cond_8

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_5

    .line 193
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->d()V

    .line 194
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->x:Z

    .line 195
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->B:Z

    .line 249
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 12079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 252
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 13079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 255
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 6402
    goto :goto_0

    .line 199
    :cond_8
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->v:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->q()Z

    move-result v0

    if-nez v0, :cond_9

    .line 200
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->v:Z

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 7292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 201
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gk;->a(I)V

    .line 7361
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 7362
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_9
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->z:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 8292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 206
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->w()V

    goto :goto_1

    .line 209
    :cond_a
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->C:Z

    if-eqz v0, :cond_b

    .line 210
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gk;->a(I)V

    .line 211
    iput-boolean v1, p0, Lcom/flurry/sdk/gk;->C:Z

    goto :goto_1

    .line 213
    :cond_b
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->A:Z

    if-eqz v0, :cond_e

    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 9292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 215
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 217
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 10292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 217
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->f()V

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 221
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->F()V

    .line 223
    :cond_d
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->y:Z

    goto/16 :goto_1

    .line 225
    :cond_e
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 10341
    iget v0, v0, Lcom/flurry/sdk/gu;->e:I

    .line 225
    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->y:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->v:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->x:Z

    if-nez v0, :cond_5

    .line 10718
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 230
    if-nez v0, :cond_f

    .line 231
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getVideoPosition()I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->w()V

    .line 233
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gk;->a(I)V

    .line 234
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->w()V

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 11288
    iget-object v0, v0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 11345
    const/4 v1, -0x1

    iput v1, v0, Lcom/flurry/sdk/gu;->e:I

    .line 245
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->requestLayout()V

    goto/16 :goto_1

    .line 242
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->o()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gj;->a(Ljava/lang/String;FF)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->y:Z

    .line 261
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gk$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gk$1;-><init>(Lcom/flurry/sdk/gk;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 14468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 300
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/flurry/sdk/gj;->b()V

    .line 157
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 265
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gk;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Completed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 13086
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 268
    if-nez v1, :cond_0

    .line 269
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gk;->b(I)Ljava/util/Map;

    move-result-object v1

    .line 270
    const-string v2, "doNotRemoveAssets"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v2, Lcom/flurry/sdk/bc;->j:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 272
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/gk;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BeaconTest: Video completed event fired, adObj: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 13090
    :cond_0
    iput-boolean v5, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 14034
    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 277
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 278
    iput-boolean v5, p0, Lcom/flurry/sdk/gk;->y:Z

    .line 280
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->v()V

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->k()V

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->F()V

    .line 285
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 15159
    iget-object v1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v1, :cond_0

    .line 15160
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 16138
    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    .line 16139
    :goto_0
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gw;->seekTo(I)V

    .line 16140
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->start()V

    .line 304
    :cond_0
    return-void

    .line 16138
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->v:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->w:Z

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->w:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "Testing"

    const-string v1, "Showing controller now..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 5188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 150
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/flurry/sdk/gk;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->f:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->A:Z

    return v0
.end method

.method public initLayout()V
    .locals 12

    .prologue
    const/16 v7, 0x11

    const/4 v11, -0x2

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 407
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 410
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 413
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 418
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    .line 420
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    iget-object v3, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 23288
    iget-object v4, v4, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 423
    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 429
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    .line 432
    iget-object v3, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v3, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23502
    const-string v3, "secHqImage"

    invoke-direct {p0, v3}, Lcom/flurry/sdk/gk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/gk;->t:Ljava/lang/String;

    .line 23504
    iget-object v3, p0, Lcom/flurry/sdk/gk;->t:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23505
    iget-object v3, p0, Lcom/flurry/sdk/gk;->p:Lcom/flurry/sdk/fn;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v5}, Lcom/flurry/sdk/r;->e()I

    move-result v5

    iget-object v6, p0, Lcom/flurry/sdk/gk;->t:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/flurry/sdk/fn;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    .line 24547
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    .line 24548
    iget-object v3, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 24549
    iget-object v3, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 24550
    iget-object v3, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/flurry/sdk/gk;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24551
    iget-object v3, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    new-instance v4, Lcom/flurry/sdk/gk$2;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/gk$2;-><init>(Lcom/flurry/sdk/gk;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24570
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24571
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 24572
    iget-object v4, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    .line 24640
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0xc8

    .line 24642
    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v3, v9, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24643
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    .line 24644
    iget-object v4, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 24646
    iget-object v4, p0, Lcom/flurry/sdk/gk;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    .line 24803
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->t()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 24804
    iget-object v6, p0, Lcom/flurry/sdk/gk;->p:Lcom/flurry/sdk/fn;

    iget-object v7, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v7}, Lcom/flurry/sdk/r;->e()I

    move-result v7

    invoke-virtual {v6, v5, v7, v4}, Lcom/flurry/sdk/fn;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 24647
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24648
    iget-object v4, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    .line 25578
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/flurry/sdk/gk;->l:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    .line 25580
    iget-object v5, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flurry/sdk/gk;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25581
    iget-object v5, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 25582
    iget-object v5, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 25584
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 25585
    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 25586
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 25587
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 25589
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25590
    const/16 v7, 0x10

    if-ge v6, v7, :cond_4

    .line 25591
    iget-object v6, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25596
    :goto_2
    iget-object v5, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    new-instance v6, Lcom/flurry/sdk/gk$3;

    invoke-direct {v6, p0}, Lcom/flurry/sdk/gk$3;-><init>(Lcom/flurry/sdk/gk;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25603
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25604
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 25605
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25606
    iget-object v6, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 25607
    iget-object v6, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24650
    iget-object v4, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25654
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    .line 25655
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->C()V

    .line 447
    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->q()Z

    move-result v2

    if-nez v2, :cond_5

    .line 449
    iget-object v2, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 26288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 449
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->o()V

    .line 454
    iget-object v2, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 496
    :goto_3
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/gk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v0, p0, Lcom/flurry/sdk/gk;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->requestLayout()V

    .line 499
    return-void

    .line 23508
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v3

    .line 24251
    iget-object v3, v3, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 23508
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    const-string v4, "previewImageFromVideo"

    invoke-static {v3, v4}, Lcom/flurry/sdk/ab;->c(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 23509
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23510
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 23511
    iget-object v4, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 24807
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    .line 25251
    iget-object v4, v4, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 24807
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    const-string v6, "previewImageFromVideo"

    invoke-static {v4, v6}, Lcom/flurry/sdk/ab;->c(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 24808
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 24809
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 24811
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v6

    new-instance v7, Lcom/flurry/sdk/gk$6;

    invoke-direct {v7, p0, v5, v4}, Lcom/flurry/sdk/gk$6;-><init>(Lcom/flurry/sdk/gk;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 25593
    :cond_4
    iget-object v6, p0, Lcom/flurry/sdk/gk;->j:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 456
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->q()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 458
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->d()V

    goto :goto_3

    .line 26718
    :cond_6
    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 460
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getVideoPosition()I

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->y:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->q()Z

    move-result v2

    if-nez v2, :cond_7

    .line 462
    iget-object v2, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 27288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 462
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 466
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 27718
    :cond_7
    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 469
    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getVideoPosition()I

    move-result v2

    if-lez v2, :cond_9

    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->y:Z

    if-nez v2, :cond_9

    .line 472
    iget-object v2, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 473
    iget-object v2, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 28288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 475
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 476
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 477
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 479
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->z:Z

    goto/16 :goto_3

    .line 28718
    :cond_9
    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 481
    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->getVideoPosition()I

    move-result v2

    if-ltz v2, :cond_a

    iget-boolean v2, p0, Lcom/flurry/sdk/gk;->y:Z

    if-nez v2, :cond_a

    .line 484
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->F()V

    goto/16 :goto_3

    .line 488
    :cond_a
    iget-object v2, p0, Lcom/flurry/sdk/gk;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 489
    iget-object v2, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 29288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 489
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 491
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 492
    iget-object v2, p0, Lcom/flurry/sdk/gk;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v2, p0, Lcom/flurry/sdk/gk;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 705
    .line 31718
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->f:Z

    .line 705
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->A:Z

    if-nez v0, :cond_0

    .line 706
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gk$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gk$4;-><init>(Lcom/flurry/sdk/gk;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 714
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final n()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->w:Z

    .line 380
    iput-boolean v3, p0, Lcom/flurry/sdk/gk;->x:Z

    .line 382
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 20345
    const/4 v1, -0x1

    iput v1, v0, Lcom/flurry/sdk/gu;->e:I

    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 21292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 385
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    .line 22292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 386
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->f()V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->d()V

    .line 390
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->x:Z

    .line 391
    iput-boolean v2, p0, Lcom/flurry/sdk/gk;->B:Z

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gk;->o:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/au;->b(Z)V

    .line 394
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 358
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 739
    iget-boolean v0, p0, Lcom/flurry/sdk/gk;->w:Z

    if-nez v0, :cond_0

    .line 740
    invoke-super {p0, p1}, Lcom/flurry/sdk/gj;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 742
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 743
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 744
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 745
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->requestLayout()V

    .line 749
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gk;->v:Z

    .line 136
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/flurry/sdk/gk;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/flurry/sdk/gk;->q:Ljava/lang/String;

    .line 118
    return-void
.end method
