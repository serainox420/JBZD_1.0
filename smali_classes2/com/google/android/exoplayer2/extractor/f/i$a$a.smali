.class final Lcom/google/android/exoplayer2/extractor/f/i$a$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/google/android/exoplayer2/util/j$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/f/i$1;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/f/i$a$a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 502
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->f:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->f:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->g:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->g:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->h:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->h:Z

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->j:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->j:Z

    if-ne v1, v2, :cond_4

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->d:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->d:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->d:I

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->d:I

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->c:Lcom/google/android/exoplayer2/util/j$b;

    iget v1, v1, Lcom/google/android/exoplayer2/util/j$b;->h:I

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->c:Lcom/google/android/exoplayer2/util/j$b;

    iget v1, v1, Lcom/google/android/exoplayer2/util/j$b;->h:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->m:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->m:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->n:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->n:I

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->c:Lcom/google/android/exoplayer2/util/j$b;

    iget v1, v1, Lcom/google/android/exoplayer2/util/j$b;->h:I

    if-ne v1, v0, :cond_3

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->c:Lcom/google/android/exoplayer2/util/j$b;

    iget v1, v1, Lcom/google/android/exoplayer2/util/j$b;->h:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->o:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->o:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->p:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->p:I

    if-ne v1, v2, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->k:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->k:Z

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->k:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->k:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->l:I

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->l:I

    if-eq v1, v2, :cond_5

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/f/i$a$a;Lcom/google/android/exoplayer2/extractor/f/i$a$a;)Z
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a(Lcom/google/android/exoplayer2/extractor/f/i$a$a;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->b:Z

    .line 466
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a:Z

    .line 467
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 470
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->e:I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->b:Z

    .line 472
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/j$b;IIIIZZZZIIIII)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 478
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->c:Lcom/google/android/exoplayer2/util/j$b;

    .line 479
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->d:I

    .line 480
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->e:I

    .line 481
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->f:I

    .line 482
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->g:I

    .line 483
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->h:Z

    .line 484
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->i:Z

    .line 485
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->j:Z

    .line 486
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->k:Z

    .line 487
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->l:I

    .line 488
    iput p11, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->m:I

    .line 489
    iput p12, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->n:I

    .line 490
    iput p13, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->o:I

    .line 491
    iput p14, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->p:I

    .line 492
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->a:Z

    .line 493
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->b:Z

    .line 494
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->e:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/i$a$a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
