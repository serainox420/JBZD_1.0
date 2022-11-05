.class Lcom/adcolony/sdk/av;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/av$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/io/FileInputStream;

.field private K:Lcom/adcolony/sdk/z;

.field private L:Lcom/adcolony/sdk/c;

.field private M:Landroid/view/Surface;

.field private N:Landroid/graphics/SurfaceTexture;

.field private O:Landroid/graphics/RectF;

.field private P:Lcom/adcolony/sdk/av$a;

.field private Q:Landroid/widget/ProgressBar;

.field private R:Lorg/json/JSONObject;

.field private S:Ljava/util/concurrent/ExecutorService;

.field a:I

.field b:Z

.field c:Z

.field d:Landroid/content/Context;

.field e:Landroid/media/MediaPlayer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:D

.field private x:D

.field private y:J

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v1, p0, Lcom/adcolony/sdk/av;->t:Z

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->u:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->v:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->O:Landroid/graphics/RectF;

    .line 90
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/av;->S:Ljava/util/concurrent/ExecutorService;

    .line 107
    iput-object p4, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    .line 108
    iput-object p2, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    .line 109
    iput p3, p0, Lcom/adcolony/sdk/av;->j:I

    .line 110
    iput-object p1, p0, Lcom/adcolony/sdk/av;->d:Landroid/content/Context;

    .line 112
    invoke-virtual {p0, p0}, Lcom/adcolony/sdk/av;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;D)D
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/adcolony/sdk/av;->w:D

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->q:F

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->s:I

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/adcolony/sdk/av;->y:J

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/av$a;)Lcom/adcolony/sdk/av$a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/av;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/adcolony/sdk/av;->z:Z

    return p1
.end method

.method private a(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/av;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 277
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 278
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adcolony/sdk/av;D)D
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/adcolony/sdk/av;->x:D

    return-wide p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/av;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->o:F

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/av;->b(Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 698
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->f:I

    .line 699
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->g:I

    .line 700
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->h:I

    .line 701
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->i:I

    .line 703
    invoke-virtual {p0}, Lcom/adcolony/sdk/av;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 704
    iget v1, p0, Lcom/adcolony/sdk/av;->f:I

    iget v2, p0, Lcom/adcolony/sdk/av;->g:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 705
    iget v1, p0, Lcom/adcolony/sdk/av;->h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 706
    iget v1, p0, Lcom/adcolony/sdk/av;->i:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 707
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/av;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/av;->o:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lcom/adcolony/sdk/av;->o:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 712
    iget-object v1, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->k:I

    iget v2, p0, Lcom/adcolony/sdk/av;->o:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 713
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 714
    iget-object v1, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/av$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->C:Z

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/av;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/adcolony/sdk/av;->F:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/av;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->m:F

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/av;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/adcolony/sdk/av;->y:J

    return-wide v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/av;->c(Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method private c(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 727
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 728
    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/av;->setVisibility(I)V

    .line 731
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/av$a;->setVisibility(I)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/av;->setVisibility(I)V

    .line 739
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/av$a;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adcolony/sdk/av;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/adcolony/sdk/av;->t:Z

    return p1
.end method

.method static synthetic d(Lcom/adcolony/sdk/av;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->n:F

    return p1
.end method

.method static synthetic d(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->F:Z

    return v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/z;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->B:Z

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    .line 761
    :goto_0
    return v0

    .line 759
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "volume"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->e(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 760
    iget-object v1, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 761
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/adcolony/sdk/av;)D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/adcolony/sdk/av;->w:D

    return-wide v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/av;F)F
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adcolony/sdk/av;->p:F

    return p1
.end method

.method static synthetic e(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/av;->d(Lcom/adcolony/sdk/z;)Z

    move-result v0

    return v0
.end method

.method private e(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 838
    iget-boolean v2, p0, Lcom/adcolony/sdk/av;->B:Z

    if-nez v2, :cond_0

    .line 858
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-boolean v2, p0, Lcom/adcolony/sdk/av;->b:Z

    if-eqz v2, :cond_1

    .line 846
    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->b:Z

    .line 849
    :cond_1
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "time"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 850
    iget-object v2, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 852
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 853
    const-string v2, "id"

    iget v3, p0, Lcom/adcolony/sdk/av;->j:I

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 854
    const-string v2, "ad_session_id"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    const-string v2, "success"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 856
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 858
    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 448
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 449
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->b:Z

    .line 454
    return-void
.end method

.method static synthetic f(Lcom/adcolony/sdk/av;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Lcom/adcolony/sdk/av$7;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/av$7;-><init>(Lcom/adcolony/sdk/av;)V

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/av;->S:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 669
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->f()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->E:Z

    return v0
.end method

.method static synthetic h(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->t:Z

    return v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/av;)D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/adcolony/sdk/av;->x:D

    return-wide v0
.end method

.method static synthetic j(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->v:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic k(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->r:F

    return v0
.end method

.method static synthetic l(Lcom/adcolony/sdk/av;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->u:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic m(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->o:F

    return v0
.end method

.method static synthetic n(Lcom/adcolony/sdk/av;)Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method static synthetic o(Lcom/adcolony/sdk/av;)Lcom/adcolony/sdk/av$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    return-object v0
.end method

.method static synthetic p(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->m:F

    return v0
.end method

.method static synthetic q(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->n:F

    return v0
.end method

.method static synthetic r(Lcom/adcolony/sdk/av;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->O:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic s(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->q:F

    return v0
.end method

.method static synthetic t(Lcom/adcolony/sdk/av;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->z:Z

    return v0
.end method

.method static synthetic u(Lcom/adcolony/sdk/av;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic v(Lcom/adcolony/sdk/av;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->j:I

    return v0
.end method

.method static synthetic w(Lcom/adcolony/sdk/av;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/adcolony/sdk/av;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->p:F

    return v0
.end method

.method static synthetic y(Lcom/adcolony/sdk/av;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/av;->s:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adcolony/sdk/av;->N:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->C:Z

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/av;->S:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 125
    return-void
.end method

.method b()V
    .locals 8

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 134
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->f:I

    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->g:I

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->h:I

    .line 138
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->i:I

    .line 139
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "enable_timer"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->E:Z

    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "enable_progress"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->G:Z

    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "filepath"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/av;->H:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "video_width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->k:I

    .line 145
    iget-object v0, p0, Lcom/adcolony/sdk/av;->K:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "video_height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->l:I

    .line 146
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->j()F

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->r:F

    .line 148
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original video dimensions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/av;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/av;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 150
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/av;->setVisibility(I)V

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/av;->h:I

    iget v2, p0, Lcom/adcolony/sdk/av;->i:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    iget v1, p0, Lcom/adcolony/sdk/av;->f:I

    iget v2, p0, Lcom/adcolony/sdk/av;->g:I

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v1, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->G:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->Q:Landroid/widget/ProgressBar;

    .line 159
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->Q:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/adcolony/sdk/av;->r:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/adcolony/sdk/av;->r:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    .line 164
    iput-boolean v7, p0, Lcom/adcolony/sdk/av;->B:Z

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/av;->H:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->H:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->J:Ljava/io/FileInputStream;

    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->J:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 183
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 184
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.play"

    new-instance v2, Lcom/adcolony/sdk/av$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$1;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/av$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$2;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/av$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$3;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.pause"

    new-instance v2, Lcom/adcolony/sdk/av$4;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$4;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.seek_to_time"

    new-instance v2, Lcom/adcolony/sdk/av$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$5;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_volume"

    new-instance v2, Lcom/adcolony/sdk/av$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/av$6;-><init>(Lcom/adcolony/sdk/av;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.play"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.pause"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.seek_to_time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.set_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->D:Z

    .line 178
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "Failed to create/prepare MediaPlayer: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 189
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->f()V

    goto/16 :goto_1
.end method

.method c()V
    .locals 2

    .prologue
    .line 675
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "MediaPlayer stopped and released."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 677
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->B:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/av;->Q:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 687
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->b:Z

    .line 688
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 689
    return-void
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 771
    iget-boolean v1, p0, Lcom/adcolony/sdk/av;->B:Z

    if-nez v1, :cond_0

    .line 798
    :goto_0
    return v0

    .line 776
    :cond_0
    iget-boolean v1, p0, Lcom/adcolony/sdk/av;->A:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/adcolony/sdk/a;->o:Z

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 779
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->g()V

    .line 780
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "MediaPlayer is prepared - ADCVideoView play() called."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 797
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/av;->setWillNotDraw(Z)V

    .line 798
    const/4 v0, 0x1

    goto :goto_0

    .line 782
    :cond_2
    iget-boolean v1, p0, Lcom/adcolony/sdk/av;->b:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/adcolony/sdk/a;->o:Z

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 785
    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->A:Z

    .line 786
    iget-object v1, p0, Lcom/adcolony/sdk/av;->S:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 788
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->g()V

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/adcolony/sdk/av;->P:Lcom/adcolony/sdk/av$a;

    invoke-virtual {v1}, Lcom/adcolony/sdk/av$a;->invalidate()V

    goto :goto_1
.end method

.method e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 808
    iget-boolean v2, p0, Lcom/adcolony/sdk/av;->B:Z

    if-nez v2, :cond_0

    .line 810
    sget-object v1, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v2, "ADCVideoView pause() called while MediaPlayer is not prepared."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 827
    :goto_0
    return v0

    .line 814
    :cond_0
    iget-boolean v2, p0, Lcom/adcolony/sdk/av;->z:Z

    if-nez v2, :cond_1

    .line 816
    sget-object v1, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring ADCVideoView pause due to invalid MediaPlayer state."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->a:I

    .line 821
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/adcolony/sdk/av;->x:D

    .line 823
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 824
    iput-boolean v1, p0, Lcom/adcolony/sdk/av;->A:Z

    .line 825
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "Video view paused"

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    move v0, v1

    .line 827
    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->b:Z

    .line 514
    iget-wide v0, p0, Lcom/adcolony/sdk/av;->x:D

    iput-wide v0, p0, Lcom/adcolony/sdk/av;->w:D

    .line 517
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/av;->j:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 518
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 519
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 520
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    const-string v1, "elapsed"

    iget-wide v2, p0, Lcom/adcolony/sdk/av;->w:D

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 521
    iget-object v0, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/adcolony/sdk/av;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 523
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "VideoView.on_progress"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->l:I

    iget-object v3, p0, Lcom/adcolony/sdk/av;->R:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 524
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/adcolony/sdk/av;->f()V

    .line 463
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "MediaPlayer error: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/u;->a(I)Lcom/adcolony/sdk/u;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 418
    iget v0, p0, Lcom/adcolony/sdk/av;->h:I

    int-to-double v0, v0

    iget v2, p0, Lcom/adcolony/sdk/av;->k:I

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 419
    iget v0, p0, Lcom/adcolony/sdk/av;->i:I

    int-to-double v0, v0

    iget v4, p0, Lcom/adcolony/sdk/av;->l:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 420
    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 422
    :goto_0
    iget v2, p0, Lcom/adcolony/sdk/av;->k:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 423
    iget v3, p0, Lcom/adcolony/sdk/av;->l:I

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v1, v0

    .line 425
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v3, "setMeasuredDimension to "

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->a(I)Lcom/adcolony/sdk/u;

    move-result-object v0

    const-string v3, " by "

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    .line 427
    invoke-virtual {p0, v2, v1}, Lcom/adcolony/sdk/av;->setMeasuredDimension(II)V

    .line 430
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->D:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/adcolony/sdk/av;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 433
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 434
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 435
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 436
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/av;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 420
    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/av;->B:Z

    .line 478
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->G:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->D:Z

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->k:I

    .line 487
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/av;->l:I

    .line 488
    iget v0, p0, Lcom/adcolony/sdk/av;->k:I

    iget v1, p0, Lcom/adcolony/sdk/av;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/av;->onMeasure(II)V

    .line 489
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "MediaPlayer getVideoWidth = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    .line 490
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "MediaPlayer getVideoHeight = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    .line 493
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 494
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/av;->j:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 495
    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v2, v2, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 496
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "ADCVideoView is prepared"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 500
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "VideoView.on_ready"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 501
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 295
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Null texture provided by system\'s onSurfaceTextureAvailable."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/adcolony/sdk/av;->M:Landroid/view/Surface;

    .line 300
    iget-object v0, p0, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adcolony/sdk/av;->M:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 301
    iput-object p1, p0, Lcom/adcolony/sdk/av;->N:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Lcom/adcolony/sdk/av;->N:Landroid/graphics/SurfaceTexture;

    .line 320
    iget-boolean v0, p0, Lcom/adcolony/sdk/av;->C:Z

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/adcolony/sdk/av;->N:Landroid/graphics/SurfaceTexture;

    .line 335
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/adcolony/sdk/av;->N:Landroid/graphics/SurfaceTexture;

    .line 311
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 349
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 359
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 360
    const-string v5, "view_id"

    iget v6, p0, Lcom/adcolony/sdk/av;->j:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 361
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    const-string v5, "container_x"

    iget v6, p0, Lcom/adcolony/sdk/av;->f:I

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 363
    const-string v5, "container_y"

    iget v6, p0, Lcom/adcolony/sdk/av;->g:I

    add-int/2addr v6, v3

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 364
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 365
    const-string v2, "view_y"

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 366
    const-string v2, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 369
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 408
    goto :goto_0

    .line 372
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 375
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 376
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/av;->f:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 377
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/av;->g:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 378
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 379
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 380
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 383
    :pswitch_3
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 385
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 387
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 390
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 391
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/av;->f:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 392
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/av;->g:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 393
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 394
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 395
    iget-object v0, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_2

    .line 397
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/av;->I:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 399
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 402
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 405
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/av;->L:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
