.class final Lcom/google/android/exoplayer2/source/b/j;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d$c;
.implements Lcom/google/android/exoplayer2/extractor/h;
.implements Lcom/google/android/exoplayer2/source/j;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/d$c;",
        "Lcom/google/android/exoplayer2/extractor/h;",
        "Lcom/google/android/exoplayer2/source/j;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/source/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/source/b/j$a;

.field private final c:Lcom/google/android/exoplayer2/source/b/c;

.field private final d:Lcom/google/android/exoplayer2/upstream/b;

.field private final e:Lcom/google/android/exoplayer2/Format;

.field private final f:I

.field private final g:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final h:Lcom/google/android/exoplayer2/source/a$a;

.field private final i:Lcom/google/android/exoplayer2/source/b/c$b;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/d;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/source/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;

.field private final m:Landroid/os/Handler;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/google/android/exoplayer2/Format;

.field private r:I

.field private s:Z

.field private t:Lcom/google/android/exoplayer2/source/m;

.field private u:I

.field private v:[Z

.field private w:J

.field private x:J

.field private y:Z


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/b/j$a;Lcom/google/android/exoplayer2/source/b/c;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/a$a;)V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    .line 123
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    .line 124
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    .line 125
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/b/j;->d:Lcom/google/android/exoplayer2/upstream/b;

    .line 126
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/b/j;->e:Lcom/google/android/exoplayer2/Format;

    .line 127
    iput p8, p0, Lcom/google/android/exoplayer2/source/b/j;->f:I

    .line 128
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/source/b/c$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/b/c$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/source/b/j$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/b/j$1;-><init>(Lcom/google/android/exoplayer2/source/b/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->l:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->m:Landroid/os/Handler;

    .line 140
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    .line 141
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    .line 142
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 8

    .prologue
    .line 618
    if-nez p0, :cond_0

    .line 628
    :goto_0
    return-object p1

    .line 621
    :cond_0
    const/4 v2, 0x0

    .line 622
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->g(Ljava/lang/String;)I

    move-result v0

    .line 623
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v6, p0, Lcom/google/android/exoplayer2/Format;->w:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    goto :goto_0

    .line 625
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/b/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v0

    .line 653
    :cond_1
    const-string v1, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v2, v1

    .line 656
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/i;->h(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 658
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 663
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/b/j;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->h()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/a/c;)Z
    .locals 1

    .prologue
    .line 634
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/b/f;

    return v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/b/f;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 320
    iget v3, p1, Lcom/google/android/exoplayer2/source/b/f;->j:I

    move v1, v2

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->f()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 326
    :goto_1
    return v2

    .line 321
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 326
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/b/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aput-boolean p2, v0, p1

    .line 606
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/j;->p:I

    if-eqz p2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/j;->p:I

    .line 607
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->n:Z

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 502
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->i()V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b/j$a;->g()V

    goto :goto_0
.end method

.method private i()V
    .locals 14

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 544
    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v1, v5

    move v3, v2

    move v4, v5

    .line 547
    :goto_0
    if-ge v1, v8, :cond_4

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 550
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v6

    .line 559
    :goto_1
    if-le v0, v4, :cond_3

    move v3, v0

    move v0, v1

    .line 547
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 552
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 553
    const/4 v0, 0x2

    goto :goto_1

    .line 554
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 555
    goto :goto_1

    :cond_2
    move v0, v5

    .line 557
    goto :goto_1

    .line 562
    :cond_3
    if-ne v0, v4, :cond_9

    if-eq v3, v2, :cond_9

    move v0, v2

    move v3, v4

    .line 566
    goto :goto_2

    .line 570
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/c;->b()Lcom/google/android/exoplayer2/source/l;

    move-result-object v9

    .line 571
    iget v10, v9, Lcom/google/android/exoplayer2/source/l;->a:I

    .line 574
    iput v2, p0, Lcom/google/android/exoplayer2/source/b/j;->u:I

    .line 575
    new-array v0, v8, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    .line 578
    new-array v2, v8, [Lcom/google/android/exoplayer2/source/l;

    move v1, v5

    .line 579
    :goto_3
    if-ge v1, v8, :cond_8

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->g()Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 581
    if-ne v1, v3, :cond_6

    .line 582
    new-array v12, v10, [Lcom/google/android/exoplayer2/Format;

    move v0, v5

    .line 583
    :goto_4
    if-ge v0, v10, :cond_5

    .line 584
    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v12, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 586
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v0, v2, v1

    .line 587
    iput v1, p0, Lcom/google/android/exoplayer2/source/b/j;->u:I

    .line 579
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 589
    :cond_6
    if-ne v4, v6, :cond_7

    iget-object v0, v11, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 590
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->e:Lcom/google/android/exoplayer2/Format;

    .line 591
    :goto_6
    new-instance v12, Lcom/google/android/exoplayer2/source/l;

    new-array v13, v7, [Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    aput-object v0, v13, v5

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, v2, v1

    goto :goto_5

    .line 590
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 594
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->t:Lcom/google/android/exoplayer2/source/m;

    .line 595
    return-void

    :cond_9
    move v0, v3

    move v3, v4

    goto/16 :goto_2
.end method

.method private j()Z
    .locals 4

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(ILcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 8

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, -0x3

    .line 311
    :goto_0
    return v0

    .line 299
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/b/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    .line 303
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/f;->c:Lcom/google/android/exoplayer2/Format;

    .line 304
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/b/f;->d:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/f;->e:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/b/f;->f:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/a$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 309
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/b/j;->q:Lcom/google/android/exoplayer2/Format;

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/d;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJLjava/io/IOException;)I
    .locals 22

    .prologue
    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v2

    .line 413
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/a/c;)Z

    move-result v4

    .line 414
    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 415
    :goto_0
    const/16 v21, 0x0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/source/b/c;->a(Lcom/google/android/exoplayer2/source/a/c;ZLjava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    if-eqz v4, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/b/f;

    .line 419
    move-object/from16 v0, p1

    if-ne v2, v0, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    .line 424
    :cond_1
    const/16 v21, 0x1

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/a/c;->d:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a/c;->f:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 426
    invoke-virtual/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 430
    if-eqz v21, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    if-nez v2, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/b/j;->a(J)Z

    .line 436
    :goto_2
    const/4 v2, 0x2

    .line 438
    :goto_3
    return v2

    .line 414
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 419
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 434
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/b/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    goto :goto_2

    .line 438
    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/a/c;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public synthetic a(II)Lcom/google/android/exoplayer2/extractor/n;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/j;->b(II)Lcom/google/android/exoplayer2/extractor/d;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->n:Z

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method a(IJ)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    .line 317
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    iput p1, p0, Lcom/google/android/exoplayer2/source/b/j;->r:I

    move v1, v2

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d;->a(I)V

    .line 453
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 456
    :cond_0
    if-eqz p2, :cond_1

    .line 457
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->a()V

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 461
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJ)V
    .locals 20

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/b/c;->a(Lcom/google/android/exoplayer2/source/a/c;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/a/c;->d:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a/c;->f:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 384
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    if-nez v2, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/b/j;->a(J)Z

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/b/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJZ)V
    .locals 20

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/source/a/c;->d:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a/c;->f:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 397
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/a$a;->b(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 400
    if-nez p6, :cond_1

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 402
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 402
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/b/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 407
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b/c;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;J)V

    .line 280
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/a/c;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/a/c;JJZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/b/c;->a(Z)V

    .line 276
    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 17

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    const/4 v2, 0x0

    .line 367
    :goto_0
    return v2

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    move-wide/from16 p1, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/google/android/exoplayer2/source/b/c;->a(Lcom/google/android/exoplayer2/source/b/f;JLcom/google/android/exoplayer2/source/b/c$b;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/b/c$b;->b:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    iget-object v12, v3, Lcom/google/android/exoplayer2/source/b/c$b;->a:Lcom/google/android/exoplayer2/source/a/c;

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/b/c$b;->c:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b/j;->i:Lcom/google/android/exoplayer2/source/b/c$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/b/c$b;->a()V

    .line 345
    if-eqz v2, :cond_4

    .line 346
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    .line 347
    const/4 v2, 0x1

    goto :goto_0

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/b/f;

    goto :goto_1

    .line 350
    :cond_4
    if-nez v12, :cond_6

    .line 351
    if-eqz v3, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->b:Lcom/google/android/exoplayer2/source/b/j$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b/j$a;->a(Lcom/google/android/exoplayer2/source/b/a/a$a;)V

    .line 354
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 357
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/a/c;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    move-object v2, v12

    .line 359
    check-cast v2, Lcom/google/android/exoplayer2/source/b/f;

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/b/f;->a(Lcom/google/android/exoplayer2/source/b/j;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/b/j;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v12, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v14

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b/j;->h:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v5, v12, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/b/j;->a:I

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    iget v8, v12, Lcom/google/android/exoplayer2/source/a/c;->d:I

    iget-object v9, v12, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    iget-wide v10, v12, Lcom/google/android/exoplayer2/source/a/c;->f:J

    iget-wide v12, v12, Lcom/google/android/exoplayer2/source/a/c;->g:J

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZZ)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    move v1, v2

    .line 172
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 173
    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    .line 174
    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/exoplayer2/source/b/i;

    iget v0, v0, Lcom/google/android/exoplayer2/source/b/i;->a:I

    .line 175
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/source/b/j;->b(IZ)V

    .line 176
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 177
    aput-object v6, p3, v1

    .line 172
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v5, v2

    move v4, v2

    move-object v1, v6

    .line 183
    :goto_1
    array-length v0, p1

    if-ge v5, v0, :cond_3

    .line 184
    aget-object v0, p3, v5

    if-nez v0, :cond_9

    aget-object v0, p1, v5

    if-eqz v0, :cond_9

    .line 185
    aget-object v0, p1, v5

    .line 186
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/j;->t:Lcom/google/android/exoplayer2/source/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v4

    .line 187
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/source/b/j;->b(IZ)V

    .line 188
    iget v7, p0, Lcom/google/android/exoplayer2/source/b/j;->u:I

    if-ne v4, v7, :cond_8

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/b/c;->a(Lcom/google/android/exoplayer2/b/f;)V

    .line 192
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/source/b/i;

    invoke-direct {v1, p0, v4}, Lcom/google/android/exoplayer2/source/b/i;-><init>(Lcom/google/android/exoplayer2/source/b/j;I)V

    aput-object v1, p3, v5

    .line 193
    aput-boolean v3, p4, v5

    move-object v1, v0

    move v0, v3

    .line 183
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 197
    :cond_3
    if-eqz p5, :cond_6

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 201
    :goto_4
    if-ge v2, v3, :cond_5

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 201
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 206
    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 207
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/b/f;->a(J)V

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/c;->b()Lcom/google/android/exoplayer2/source/l;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/f;->c:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/l;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 209
    invoke-interface {v1}, Lcom/google/android/exoplayer2/b/f;->g()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 211
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/j;->b(J)V

    .line 216
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/j;->p:I

    if-nez v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/c;->c()V

    .line 218
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/b/j;->q:Lcom/google/android/exoplayer2/Format;

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    .line 224
    :cond_7
    return v4

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move v0, v4

    goto :goto_3
.end method

.method public b(II)Lcom/google/android/exoplayer2/extractor/d;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    .line 474
    :goto_0
    return-object v0

    .line 470
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->d:Lcom/google/android/exoplayer2/upstream/b;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/d;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    .line 471
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/extractor/d$c;)V

    .line 472
    iget v1, p0, Lcom/google/android/exoplayer2/source/b/j;->r:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(I)V

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->o:Z

    if-nez v0, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/j;->a(J)Z

    .line 148
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    .line 229
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    .line 230
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 232
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    .line 236
    :goto_0
    if-ge v1, v2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/j;->v:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/b/j;->b(II)Lcom/google/android/exoplayer2/extractor/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->n:Z

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->h()V

    .line 158
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    .line 375
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/f;->g:J

    goto :goto_0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b/j;->g()V

    .line 162
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->t:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 9

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->y:Z

    if-eqz v0, :cond_0

    .line 244
    const-wide/high16 v0, -0x8000000000000000L

    .line 260
    :goto_0
    return-wide v0

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/j;->x:J

    goto :goto_0

    .line 248
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b/j;->w:J

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    .line 250
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/f;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    :goto_1
    if-eqz v0, :cond_5

    .line 253
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/b/f;->g:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 255
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 256
    const/4 v2, 0x0

    move v8, v2

    move-wide v2, v0

    move v1, v8

    :goto_3
    if-ge v1, v4, :cond_4

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->h()J

    move-result-wide v6

    .line 257
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 256
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    .line 251
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/j;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b/f;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 260
    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public f()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/j;->s:Z

    .line 272
    return-void
.end method

.method g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->g:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j;->c:Lcom/google/android/exoplayer2/source/b/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/c;->a()V

    .line 291
    return-void
.end method
