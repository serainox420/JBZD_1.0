.class public Lcom/flurry/sdk/gh;
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

.field private static f:I


# instance fields
.field private g:Z

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/content/Context;

.field private n:Lcom/flurry/sdk/fn;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcom/flurry/sdk/r;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/view/GestureDetector;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gh;->e:Ljava/lang/String;

    .line 51
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gh;->f:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gj;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 52
    iput-boolean v7, p0, Lcom/flurry/sdk/gh;->g:Z

    .line 72
    iput-boolean v7, p0, Lcom/flurry/sdk/gh;->v:Z

    .line 73
    iput-boolean v7, p0, Lcom/flurry/sdk/gh;->w:Z

    .line 77
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v6

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/flurry/sdk/gu;

    sget-object v2, Lcom/flurry/sdk/gj$a;->b:Lcom/flurry/sdk/gj$a;

    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 2078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 1154
    invoke-virtual {v1}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v3

    .line 80
    invoke-interface {p2}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    .line 2142
    iget-boolean v5, v6, Lcom/flurry/sdk/gp;->m:Z

    move-object v1, p1

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/gu;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gj$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 3071
    iput-object p0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    .line 85
    iput-object p1, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    .line 86
    iput-boolean v8, p0, Lcom/flurry/sdk/gh;->g:Z

    .line 87
    iput-object p4, p0, Lcom/flurry/sdk/gh;->t:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/flurry/sdk/fn;

    invoke-direct {v0}, Lcom/flurry/sdk/fn;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gh;->n:Lcom/flurry/sdk/fn;

    .line 90
    iget-boolean v0, p0, Lcom/flurry/sdk/gh;->g:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->setAutoPlay(Z)V

    .line 3086
    iget-boolean v0, v6, Lcom/flurry/sdk/gp;->g:Z

    .line 92
    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 3284
    iput-boolean v8, v0, Lcom/flurry/sdk/gu;->f:Z

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 4188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 94
    invoke-virtual {v0, v7}, Lcom/flurry/sdk/gv;->setVisibility(I)V

    .line 101
    :goto_0
    const-string v0, "clickToCall"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gh;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gh;->u:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/gh;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    const-string v0, "callToAction"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gh;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gh;->u:Ljava/lang/String;

    .line 6504
    :cond_1
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 6505
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 7298
    iget-object v0, v0, Lcom/flurry/sdk/hi;->e:Landroid/graphics/Bitmap;

    .line 6506
    iput-object v0, p0, Lcom/flurry/sdk/gh;->h:Landroid/graphics/Bitmap;

    .line 107
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 5188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 97
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 6188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 98
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gv;->setVisibility(I)V

    goto :goto_0
.end method

.method private C()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->w:Z

    .line 320
    iget-object v0, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 18288
    iget-object v0, v0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 19188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 325
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gv;->setVisibility(I)V

    .line 327
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->D()V

    .line 328
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->requestLayout()V

    .line 329
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 500
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 31188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 629
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->d()V

    .line 630
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 32188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 630
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->e()V

    .line 631
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 33188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 631
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 632
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 34188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 632
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 633
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gh;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->C()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gh;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/gh;->s:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/gh;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 31078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 30154
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    .line 619
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 620
    iget-object v2, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    iget-object v0, v0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    .line 625
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/gj$a;)V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 20292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 527
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->w()V

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v1}, Lcom/flurry/sdk/gu;->b()I

    move-result v1

    .line 21086
    iget-boolean v2, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 534
    if-nez v2, :cond_2

    .line 535
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 22034
    iput v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->z()V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Z)V

    .line 544
    invoke-static {}, Lcom/flurry/sdk/gh;->x()V

    .line 545
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->z()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 11086
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 179
    if-nez v1, :cond_2

    .line 12030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 181
    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gh;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    .line 182
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gh;->v:Z

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->a(I)V

    .line 184
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->E()V

    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 12079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 194
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 13079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->D()V

    .line 197
    return-void

    .line 187
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/gh;->w:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->C()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gj;->a(Ljava/lang/String;FF)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->w:Z

    .line 203
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gh$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gh$1;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 14468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 245
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/flurry/sdk/gj;->b()V

    .line 160
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 207
    sget-object v0, Lcom/flurry/sdk/gh;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video Completed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 13086
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 211
    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 13292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 212
    invoke-virtual {v1}, Lcom/flurry/sdk/gw;->suspend()V

    .line 14034
    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 215
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gh;->b(I)Ljava/util/Map;

    move-result-object v1

    .line 216
    const-string v2, "doNotRemoveAssets"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v2, Lcom/flurry/sdk/bc;->j:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 218
    sget-object v1, Lcom/flurry/sdk/gh;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeaconTest: Video completed event fired, adObj: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14090
    :cond_0
    iput-boolean v4, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 222
    iput-boolean v4, p0, Lcom/flurry/sdk/gh;->w:Z

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->k()V

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->v()V

    .line 228
    iget-object v0, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->C()V

    .line 231
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 8142
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->m:Z

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->g()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->h()V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 8188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 131
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 132
    return-void
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/gh;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/flurry/sdk/gh;->g:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public initLayout()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    .line 267
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 271
    iget-object v4, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 15288
    iget-object v5, v5, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 271
    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v3, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    .line 15391
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x2bc

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 15395
    const-string v5, "secHqImage"

    invoke-direct {p0, v5}, Lcom/flurry/sdk/gh;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15397
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    .line 15399
    iget-object v6, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    .line 15673
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->t()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15674
    iget-object v7, p0, Lcom/flurry/sdk/gh;->n:Lcom/flurry/sdk/fn;

    iget-object v8, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    invoke-interface {v8}, Lcom/flurry/sdk/r;->e()I

    move-result v8

    invoke-virtual {v7, v6, v8, v5}, Lcom/flurry/sdk/fn;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 15400
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 15401
    iget-object v5, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15402
    iget-object v5, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    .line 16410
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    .line 16411
    iget-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 16412
    iget-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 16413
    iget-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16414
    iget-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 16416
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16417
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 16418
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 16419
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 16420
    const/16 v7, 0x5a

    invoke-static {v7}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static {v8}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 16422
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16423
    const/16 v8, 0x10

    if-ge v7, v8, :cond_4

    .line 16424
    iget-object v7, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16429
    :goto_1
    iget-object v6, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    new-instance v7, Lcom/flurry/sdk/gh$5;

    invoke-direct {v7, p0}, Lcom/flurry/sdk/gh$5;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16439
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16440
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16441
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16443
    iget-object v7, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 16445
    iget-object v7, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    sget v8, Lcom/flurry/sdk/gh;->f:I

    sget v9, Lcom/flurry/sdk/gh;->f:I

    sget v10, Lcom/flurry/sdk/gh;->f:I

    sget v11, Lcom/flurry/sdk/gh;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 16447
    iget-object v7, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15404
    iget-object v5, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v3, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    .line 17306
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 17309
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    .line 17310
    iget-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17311
    iget-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/16 v9, 0xa

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 17312
    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 17313
    iget-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    .line 17334
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    .line 17335
    iget-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 17336
    iget-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17337
    iget-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 17338
    iget-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 17340
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 17341
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17342
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17343
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 17344
    const/16 v7, 0x50

    invoke-static {v7}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v7

    const/16 v8, 0x28

    invoke-static {v8}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 17346
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17347
    const/16 v8, 0x10

    if-ge v7, v8, :cond_5

    .line 17348
    iget-object v7, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17354
    :goto_2
    iget-object v6, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    new-instance v7, Lcom/flurry/sdk/gh$3;

    invoke-direct {v7, p0}, Lcom/flurry/sdk/gh$3;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17361
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17362
    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17363
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17364
    iget-object v7, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 17365
    iget-object v7, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17314
    iget-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    .line 17369
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    .line 17370
    iget-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 17371
    iget-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 17372
    iget-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/flurry/sdk/gh;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17373
    iget-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 17374
    iget-object v6, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    new-instance v7, Lcom/flurry/sdk/gh$4;

    invoke-direct {v7, p0}, Lcom/flurry/sdk/gh$4;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17380
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17381
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17382
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17383
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17384
    iget-object v7, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 17385
    iget-object v7, p0, Lcom/flurry/sdk/gh;->l:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17315
    iget-object v5, p0, Lcom/flurry/sdk/gh;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17486
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    .line 17491
    iget-object v3, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    .line 17492
    iget-object v3, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v2}, Lcom/flurry/sdk/gh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v2, p0, Lcom/flurry/sdk/gh;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17643
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/flurry/sdk/gh;->m:Landroid/content/Context;

    new-instance v3, Lcom/flurry/sdk/gh$6;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/gh$6;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/flurry/sdk/gh;->s:Landroid/view/GestureDetector;

    .line 284
    iget-object v1, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/sdk/gh$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gh$2;-><init>(Lcom/flurry/sdk/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18086
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->g:Z

    .line 294
    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 18188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 295
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 296
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->C()V

    .line 298
    :cond_2
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->setBackgroundColor(I)V

    .line 300
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->requestLayout()V

    .line 301
    return-void

    .line 15677
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v5

    .line 16251
    iget-object v5, v5, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 15677
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v5

    const-string v7, "previewImageFromVideo"

    invoke-static {v5, v7}, Lcom/flurry/sdk/ab;->c(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 15678
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 15679
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 15681
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v7

    new-instance v8, Lcom/flurry/sdk/gh$7;

    invoke-direct {v8, p0, v6, v5}, Lcom/flurry/sdk/gh$7;-><init>(Lcom/flurry/sdk/gh;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 16426
    :cond_4
    iget-object v7, p0, Lcom/flurry/sdk/gh;->k:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 17350
    :cond_5
    iget-object v7, p0, Lcom/flurry/sdk/gh;->j:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 9130
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/gp;->m:Z

    .line 166
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 167
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 10130
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/sdk/gp;->m:Z

    .line 173
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 174
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "Testing"

    const-string v1, "Resize clicked switch to stream mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    check-cast v0, Lcom/flurry/sdk/x;

    .line 19695
    iget-object v0, v0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    .line 518
    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->v:Z

    .line 520
    sget-object v0, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v1}, Lcom/flurry/sdk/gu;->b()I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/gj$a;)V

    .line 523
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 609
    invoke-super {p0}, Lcom/flurry/sdk/gj;->onActivityPause()V

    .line 610
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 614
    invoke-super {p0}, Lcom/flurry/sdk/gj;->onActivityResume()V

    .line 615
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->q:Lcom/flurry/sdk/r;

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->m()V

    .line 551
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 565
    invoke-super {p0, p1}, Lcom/flurry/sdk/gj;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 567
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v1

    .line 568
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_3

    .line 569
    iget-object v2, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 22288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 569
    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 571
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 574
    iget-object v3, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23086
    iget-boolean v2, v1, Lcom/flurry/sdk/gp;->g:Z

    .line 576
    if-nez v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 23188
    iget-object v2, v2, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 578
    invoke-virtual {v2, v6}, Lcom/flurry/sdk/gv;->b(I)V

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 25086
    :goto_0
    iget-boolean v1, v1, Lcom/flurry/sdk/gp;->g:Z

    .line 598
    if-nez v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 25303
    iget-object v2, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v2, :cond_1

    .line 25304
    iget-object v0, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->d()Z

    move-result v0

    .line 599
    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 25636
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 26188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 25636
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->f()V

    .line 25637
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 27188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 25637
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->c()V

    .line 25638
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 28188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 25638
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 25639
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 29188
    iget-object v0, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 25639
    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 605
    :cond_2
    :goto_1
    return-void

    .line 583
    :cond_3
    iget-object v2, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 23288
    iget-object v2, v2, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 583
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 584
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x2bc

    invoke-direct {v2, v5, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 587
    iget-object v3, p0, Lcom/flurry/sdk/gh;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v2, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 24086
    iget-boolean v2, v1, Lcom/flurry/sdk/gp;->g:Z

    .line 590
    if-nez v2, :cond_4

    .line 592
    iget-object v2, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 24188
    iget-object v2, v2, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 592
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gv;->b(I)V

    .line 595
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/gh;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gu;

    .line 29292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 601
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/flurry/sdk/gh;->E()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/flurry/sdk/gj;->onDetachedFromWindow()V

    .line 561
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/flurry/sdk/gh;->t:Ljava/lang/String;

    .line 151
    return-void
.end method
