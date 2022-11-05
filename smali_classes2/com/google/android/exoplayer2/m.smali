.class public Lcom/google/android/exoplayer2/m;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/m$a;,
        Lcom/google/android/exoplayer2/m$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/d;

.field private final b:[Lcom/google/android/exoplayer2/j;

.field private final c:Lcom/google/android/exoplayer2/m$a;

.field private final d:Landroid/os/Handler;

.field private final e:I

.field private final f:I

.field private g:Lcom/google/android/exoplayer2/Format;

.field private h:Lcom/google/android/exoplayer2/Format;

.field private i:Landroid/view/Surface;

.field private j:Z

.field private k:I

.field private l:Landroid/view/SurfaceHolder;

.field private m:Landroid/view/TextureView;

.field private n:Lcom/google/android/exoplayer2/text/j$a;

.field private o:Lcom/google/android/exoplayer2/metadata/d$a;

.field private p:Lcom/google/android/exoplayer2/m$b;

.field private q:Lcom/google/android/exoplayer2/audio/d;

.field private r:Lcom/google/android/exoplayer2/c/e;

.field private s:Lcom/google/android/exoplayer2/a/d;

.field private t:Lcom/google/android/exoplayer2/a/d;

.field private u:I

.field private v:I

.field private w:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b/h;",
            "Lcom/google/android/exoplayer2/i;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/m;->d:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/google/android/exoplayer2/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/m$a;-><init>(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/m$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    .line 157
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v3, p0, Lcom/google/android/exoplayer2/m;->d:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;IJLjava/util/ArrayList;)V

    .line 160
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/j;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/m;->b:[Lcom/google/android/exoplayer2/j;

    .line 163
    const/4 v2, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    iget-object v3, p0, Lcom/google/android/exoplayer2/m;->b:[Lcom/google/android/exoplayer2/j;

    array-length v4, v3

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 166
    invoke-interface {v5}, Lcom/google/android/exoplayer2/j;->a()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 165
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_1

    .line 171
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/m;->e:I

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/m;->f:I

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/m;->w:F

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/m;->u:I

    .line 181
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/m;->v:I

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/m;->k:I

    .line 185
    new-instance v0, Lcom/google/android/exoplayer2/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/m;->b:[Lcom/google/android/exoplayer2/j;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/f;-><init>([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    .line 186
    return-void

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/m;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/m;->u:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->g:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->s:Lcom/google/android/exoplayer2/a/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->r:Lcom/google/android/exoplayer2/c/e;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;IJLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v7, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;ILcom/google/android/exoplayer2/c/e;JLjava/util/ArrayList;)V

    .line 627
    iget-object v7, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    .line 628
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/m;->n()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v9, p7

    .line 627
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;ILcom/google/android/exoplayer2/audio/d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Ljava/util/ArrayList;)V

    .line 629
    iget-object v6, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/text/j$a;Ljava/util/ArrayList;)V

    .line 630
    iget-object v6, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/metadata/d$a;Ljava/util/ArrayList;)V

    .line 631
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/google/android/exoplayer2/m;->a(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 632
    return-void
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 823
    iget v1, p0, Lcom/google/android/exoplayer2/m;->e:I

    new-array v3, v1, [Lcom/google/android/exoplayer2/d$c;

    .line 825
    iget-object v4, p0, Lcom/google/android/exoplayer2/m;->b:[Lcom/google/android/exoplayer2/j;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 826
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->a()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 827
    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lcom/google/android/exoplayer2/d$c;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8, p1}, Lcom/google/android/exoplayer2/d$c;-><init>(Lcom/google/android/exoplayer2/d$b;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    .line 825
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    .line 832
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m;->j:Z

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/d;->b([Lcom/google/android/exoplayer2/d$c;)V

    .line 840
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    .line 841
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/m;->j:Z

    .line 842
    return-void

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/d;->a([Lcom/google/android/exoplayer2/d$c;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/m;Landroid/view/Surface;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->h:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->t:Lcom/google/android/exoplayer2/a/d;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m$b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->p:Lcom/google/android/exoplayer2/m$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/m;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->q:Lcom/google/android/exoplayer2/audio/d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/text/j$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->n:Lcom/google/android/exoplayer2/text/j$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/metadata/d$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->o:Lcom/google/android/exoplayer2/metadata/d$a;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->m:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->m:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    if-eq v0, v1, :cond_2

    .line 808
    const-string v0, "SimpleExoPlayer"

    const-string v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/m;->m:Landroid/view/TextureView;

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->l:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->l:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 816
    iput-object v2, p0, Lcom/google/android/exoplayer2/m;->l:Landroid/view/SurfaceHolder;

    .line 818
    :cond_1
    return-void

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->m:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->a()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->a(I)I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 326
    iput p1, p0, Lcom/google/android/exoplayer2/m;->w:F

    .line 327
    iget v1, p0, Lcom/google/android/exoplayer2/m;->f:I

    new-array v3, v1, [Lcom/google/android/exoplayer2/d$c;

    .line 329
    iget-object v4, p0, Lcom/google/android/exoplayer2/m;->b:[Lcom/google/android/exoplayer2/j;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 330
    invoke-interface {v6}, Lcom/google/android/exoplayer2/j;->a()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 331
    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lcom/google/android/exoplayer2/d$c;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lcom/google/android/exoplayer2/d$c;-><init>(Lcom/google/android/exoplayer2/d$b;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    .line 329
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/d;->a([Lcom/google/android/exoplayer2/d$c;)V

    .line 335
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/d;->a(IJ)V

    .line 520
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/d;->a(J)V

    .line 515
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/metadata/d$a;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lcom/google/android/exoplayer2/metadata/d$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v0, Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/exoplayer2/metadata/d;-><init>(Lcom/google/android/exoplayer2/metadata/d$a;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/exoplayer2/text/j$a;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lcom/google/android/exoplayer2/text/j$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/google/android/exoplayer2/text/j;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/exoplayer2/text/j;-><init>(Lcom/google/android/exoplayer2/text/j$a;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;ILcom/google/android/exoplayer2/audio/d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;I",
            "Lcom/google/android/exoplayer2/audio/d;",
            "[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lcom/google/android/exoplayer2/audio/g;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/b;->a:Lcom/google/android/exoplayer2/mediacodec/b;

    const/4 v3, 0x1

    .line 697
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/b;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/b;

    move-result-object v6

    move-object v2, p3

    move-object v4, p2

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/g;-><init>(Lcom/google/android/exoplayer2/mediacodec/b;Lcom/google/android/exoplayer2/drm/a;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/d;Lcom/google/android/exoplayer2/audio/b;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 696
    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    if-nez p4, :cond_0

    .line 751
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 703
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 704
    add-int/lit8 v2, v2, -0x1

    .line 708
    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 709
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 710
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/exoplayer2/audio/d;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-class v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 712
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object p6, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 714
    add-int/lit8 v1, v2, 0x1

    :try_start_1
    invoke-virtual {p7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 715
    const-string v0, "SimpleExoPlayer"

    const-string v2, "Loaded LibopusAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v1

    .line 723
    :goto_1
    :try_start_2
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 724
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 725
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/exoplayer2/audio/d;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-class v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 727
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object p6, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 729
    add-int/lit8 v1, v2, 0x1

    :try_start_3
    invoke-virtual {p7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 730
    const-string v0, "SimpleExoPlayer"

    const-string v2, "Loaded LibflacAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 738
    :goto_2
    :try_start_4
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 739
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 740
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/exoplayer2/audio/d;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 742
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p6, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/j;

    .line 744
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 745
    const-string v0, "SimpleExoPlayer"

    const-string v1, "Loaded FfmpegAudioRenderer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 746
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 716
    :catch_1
    move-exception v0

    move v0, v2

    :goto_3
    move v2, v0

    .line 720
    goto :goto_1

    .line 718
    :catch_2
    move-exception v0

    .line 719
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 731
    :catch_3
    move-exception v0

    move v0, v2

    :goto_4
    move v1, v0

    .line 735
    goto :goto_2

    .line 733
    :catch_4
    move-exception v0

    .line 734
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 748
    :catch_5
    move-exception v0

    .line 749
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 731
    :catch_6
    move-exception v0

    move v0, v1

    goto :goto_4

    .line 716
    :catch_7
    move-exception v0

    move v0, v1

    goto :goto_3
.end method

.method protected a(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/a;ILcom/google/android/exoplayer2/c/e;JLjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;I",
            "Lcom/google/android/exoplayer2/c/e;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v3, Lcom/google/android/exoplayer2/c/c;

    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/b;->a:Lcom/google/android/exoplayer2/mediacodec/b;

    const/4 v9, 0x0

    const/16 v12, 0x32

    move-object v4, p1

    move-wide/from16 v6, p6

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/c/c;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/b;JLcom/google/android/exoplayer2/drm/a;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/c/e;I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    if-nez p4, :cond_0

    .line 677
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 659
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 660
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .line 664
    :goto_1
    :try_start_0
    const-string v2, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 665
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 666
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Lcom/google/android/exoplayer2/c/e;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 668
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x32

    .line 669
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 668
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/j;

    .line 670
    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    const-string v2, "SimpleExoPlayer"

    const-string v3, "Loaded LibvpxVideoRenderer."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v2

    goto :goto_0

    .line 674
    :catch_1
    move-exception v2

    .line 675
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m;->o()V

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    .line 240
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m;->o()V

    .line 250
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->l:Landroid/view/SurfaceHolder;

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/SurfaceHolder;)V

    .line 267
    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m;->o()V

    .line 277
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->m:Landroid/view/TextureView;

    .line 278
    if-nez p1, :cond_0

    .line 279
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Replacing existing SurfaceTextureListener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 285
    if-nez v1, :cond_2

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;Z)V

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->c:Lcom/google/android/exoplayer2/m$a;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 285
    :cond_2
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/exoplayer2/d$a;)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->a(Lcom/google/android/exoplayer2/d$a;)V

    .line 465
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/m$b;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->p:Lcom/google/android/exoplayer2/m$b;

    .line 422
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/g;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->a(Lcom/google/android/exoplayer2/source/g;)V

    .line 480
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/text/j$a;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/exoplayer2/m;->n:Lcom/google/android/exoplayer2/text/j$a;

    .line 449
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->a(Z)V

    .line 490
    return-void
.end method

.method public varargs a([Lcom/google/android/exoplayer2/d$c;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->a([Lcom/google/android/exoplayer2/d$c;)V

    .line 542
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/d$a;)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->b(Lcom/google/android/exoplayer2/d$a;)V

    .line 470
    return-void
.end method

.method public varargs b([Lcom/google/android/exoplayer2/d$c;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d;->b([Lcom/google/android/exoplayer2/d$c;)V

    .line 547
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->c()V

    .line 505
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->d()V

    .line 525
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->e()V

    .line 530
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m;->o()V

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 532
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m;->j:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 535
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/m;->i:Landroid/view/Surface;

    .line 537
    :cond_1
    return-void
.end method

.method public f()Lcom/google/android/exoplayer2/b/g;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->f()Lcom/google/android/exoplayer2/b/g;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/exoplayer2/n;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->g()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->h()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/m;->a:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->l()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/google/android/exoplayer2/m;->u:I

    return v0
.end method

.method protected n()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
