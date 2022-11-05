.class public Lcom/google/android/exoplayer2/source/a/f;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i;
.implements Lcom/google/android/exoplayer2/source/j;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/a/g;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/i;",
        "Lcom/google/android/exoplayer2/source/j;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a",
        "<",
        "Lcom/google/android/exoplayer2/source/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:Z

.field private final c:I

.field private final d:[I

.field private final e:[Z

.field private final f:Lcom/google/android/exoplayer2/source/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/source/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/j$a",
            "<",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/source/a$a;

.field private final i:I

.field private final j:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final k:Lcom/google/android/exoplayer2/source/a/e;

.field private final l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/source/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/extractor/d;

.field private final o:[Lcom/google/android/exoplayer2/extractor/d;

.field private final p:Lcom/google/android/exoplayer2/source/a/b;

.field private q:Lcom/google/android/exoplayer2/Format;

.field private r:J


# direct methods
.method public constructor <init>(I[ILcom/google/android/exoplayer2/source/a/g;Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/upstream/b;JILcom/google/android/exoplayer2/source/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lcom/google/android/exoplayer2/source/j$a",
            "<",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/b;",
            "JI",
            "Lcom/google/android/exoplayer2/source/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/source/a/f;->c:I

    .line 77
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a/f;->d:[I

    .line 78
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    .line 79
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/a/f;->g:Lcom/google/android/exoplayer2/source/j$a;

    .line 80
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    .line 81
    iput p8, p0, Lcom/google/android/exoplayer2/source/a/f;->i:I

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v2, "Loader:ChunkSampleStream"

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/source/a/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->k:Lcom/google/android/exoplayer2/source/a/e;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->m:Ljava/util/List;

    .line 87
    if-nez p2, :cond_0

    move v0, v1

    .line 88
    :goto_0
    new-array v2, v0, [Lcom/google/android/exoplayer2/extractor/d;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    .line 89
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/a/f;->e:[Z

    .line 90
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 91
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/extractor/d;

    .line 93
    new-instance v4, Lcom/google/android/exoplayer2/extractor/d;

    invoke-direct {v4, p5}, Lcom/google/android/exoplayer2/extractor/d;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    .line 94
    aput p1, v2, v1

    .line 95
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    aput-object v4, v3, v1

    .line 97
    :goto_1
    if-ge v1, v0, :cond_1

    .line 98
    new-instance v4, Lcom/google/android/exoplayer2/extractor/d;

    invoke-direct {v4, p5}, Lcom/google/android/exoplayer2/extractor/d;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    .line 99
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    aput-object v4, v5, v1

    .line 100
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 101
    add-int/lit8 v4, v1, 0x1

    aget v5, p2, v1

    aput v5, v2, v4

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_0
    array-length v0, p2

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/a/b;-><init>([I[Lcom/google/android/exoplayer2/extractor/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->p:Lcom/google/android/exoplayer2/source/a/b;

    .line 105
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    .line 106
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    .line 107
    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    .line 389
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a/a;->a(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    .line 393
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/a;->c:Lcom/google/android/exoplayer2/Format;

    .line 394
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/a/f;->c:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/a/a;->d:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/a/a;->e:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/a/a;->f:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/a$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 399
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->q:Lcom/google/android/exoplayer2/Format;

    .line 400
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/a/c;)Z
    .locals 1

    .prologue
    .line 380
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/a/a;

    return v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/a/f;)[Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->e:[Z

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 8

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, -0x3

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/a/f;->a(I)V

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJLjava/io/IOException;)I
    .locals 22

    .prologue
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    .line 290
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/c;)Z

    move-result v3

    .line 291
    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 292
    :goto_0
    const/16 v21, 0x0

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v2, v1}, Lcom/google/android/exoplayer2/source/a/g;->a(Lcom/google/android/exoplayer2/source/a/c;ZLjava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    const/16 v21, 0x1

    .line 295
    if-eqz v3, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/a/a;

    .line 297
    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/a/a;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/d;->b(I)V

    .line 299
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/a/a;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/d;->b(I)V

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 291
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 297
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 302
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a/f;->c:I

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

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 311
    if-eqz v21, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->g:Lcom/google/android/exoplayer2/source/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 313
    const/4 v2, 0x2

    .line 315
    :goto_3
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/c;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public a(JI)Lcom/google/android/exoplayer2/source/a/f$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<TT;>.a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 134
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->d:[I

    aget v3, v3, v0

    if-ne v3, p3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->e:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->e:[Z

    aput-boolean v2, v1, v0

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/extractor/d;->a(JZ)Z

    .line 139
    new-instance v1, Lcom/google/android/exoplayer2/source/a/f$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/google/android/exoplayer2/source/a/f$a;-><init>(Lcom/google/android/exoplayer2/source/a/f;Lcom/google/android/exoplayer2/source/a/f;Lcom/google/android/exoplayer2/extractor/d;I)V

    return-object v1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJ)V
    .locals 20

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/a/g;->a(Lcom/google/android/exoplayer2/source/a/c;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a/f;->c:I

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

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 263
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->g:Lcom/google/android/exoplayer2/source/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 268
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;JJZ)V
    .locals 20

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a/f;->c:I

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

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/a/c;->e()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 273
    invoke-virtual/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/a$a;->b(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 277
    if-nez p6, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 280
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->g:Lcom/google/android/exoplayer2/source/j$a;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/j$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 284
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/c;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 8

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/a/c;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/c;JJZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

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
    .line 323
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    :cond_0
    const/4 v2, 0x0

    .line 353
    :goto_0
    return v2

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    move-wide/from16 p1, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a/f;->k:Lcom/google/android/exoplayer2/source/a/e;

    move-wide/from16 v0, p1

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/google/android/exoplayer2/source/a/g;->a(Lcom/google/android/exoplayer2/source/a/l;JLcom/google/android/exoplayer2/source/a/e;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->k:Lcom/google/android/exoplayer2/source/a/e;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/a/e;->b:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->k:Lcom/google/android/exoplayer2/source/a/e;

    iget-object v12, v3, Lcom/google/android/exoplayer2/source/a/e;->a:Lcom/google/android/exoplayer2/source/a/c;

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->k:Lcom/google/android/exoplayer2/source/a/e;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a/e;->a()V

    .line 334
    if-eqz v2, :cond_4

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    .line 336
    const/4 v2, 0x1

    goto :goto_0

    .line 327
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/a/a;

    goto :goto_1

    .line 339
    :cond_4
    if-nez v12, :cond_5

    .line 340
    const/4 v2, 0x0

    goto :goto_0

    .line 343
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/c;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    move-object v2, v12

    .line 345
    check-cast v2, Lcom/google/android/exoplayer2/source/a/a;

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->p:Lcom/google/android/exoplayer2/source/a/b;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/a/a;->a(Lcom/google/android/exoplayer2/source/a/b;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/a/f;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v12, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v14

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a/f;->h:Lcom/google/android/exoplayer2/source/a$a;

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v5, v12, Lcom/google/android/exoplayer2/source/a/c;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a/f;->c:I

    iget-object v7, v12, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    iget v8, v12, Lcom/google/android/exoplayer2/source/a/c;->d:I

    iget-object v9, v12, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    iget-wide v10, v12, Lcom/google/android/exoplayer2/source/a/c;->f:J

    iget-wide v12, v12, Lcom/google/android/exoplayer2/source/a/c;->g:J

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 353
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public a_(J)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    .line 256
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/a/g;->a()V

    .line 240
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->e:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/extractor/d;->a(JZ)Z

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    .line 361
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a/a;->g:J

    goto :goto_0
.end method

.method public c()Lcom/google/android/exoplayer2/source/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->f:Lcom/google/android/exoplayer2/source/a/g;

    return-object v0
.end method

.method public c(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->b_()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    invoke-virtual {v3, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/d;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 186
    :goto_1
    if-eqz v0, :cond_3

    .line 189
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/a/a;->a(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/d;->e()I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v0, v2

    .line 184
    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 196
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 200
    :cond_3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    .line 201
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    .line 212
    :cond_4
    return-void

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 208
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/d;->a(Z)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public d()J
    .locals 4

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    if-eqz v0, :cond_0

    .line 161
    const-wide/high16 v0, -0x8000000000000000L

    .line 172
    :goto_0
    return-wide v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/a/f;->r:J

    goto :goto_0

    .line 165
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    .line 167
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    :goto_1
    if-eqz v0, :cond_4

    .line 170
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a/a;->g:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 172
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/d;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    .line 168
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/a;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method public e()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->n:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 221
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f;->o:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 222
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    .line 225
    return-void
.end method

.method f()Z
    .locals 4

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/a/f;->r:J

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
