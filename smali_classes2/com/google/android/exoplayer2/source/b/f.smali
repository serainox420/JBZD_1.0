.class final Lcom/google/android/exoplayer2/source/b/f;
.super Lcom/google/android/exoplayer2/source/a/l;
.source "HlsMediaChunk.java"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:Lcom/google/android/exoplayer2/extractor/f;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Lcom/google/android/exoplayer2/source/b/j;

.field private volatile F:Z

.field private volatile G:Z

.field public final j:I

.field public final k:I

.field public final l:Lcom/google/android/exoplayer2/source/b/a/a$a;

.field private final n:Lcom/google/android/exoplayer2/upstream/e;

.field private final o:Lcom/google/android/exoplayer2/upstream/g;

.field private final p:Z

.field private final q:Z

.field private final r:Lcom/google/android/exoplayer2/util/s;

.field private final s:Ljava/lang/String;

.field private final t:Lcom/google/android/exoplayer2/extractor/f;

.field private final u:Z

.field private final v:Z

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Z

.field private final y:Lcom/google/android/exoplayer2/metadata/id3/a;

.field private final z:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/b/f;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/source/b/a/a$a;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/source/b/f;[B[B)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "Lcom/google/android/exoplayer2/upstream/g;",
            "Lcom/google/android/exoplayer2/upstream/g;",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJIIZ",
            "Lcom/google/android/exoplayer2/util/s;",
            "Lcom/google/android/exoplayer2/source/b/f;",
            "[B[B)V"
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p17

    move-object/from16 v1, p18

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/b/f;->a(Lcom/google/android/exoplayer2/upstream/e;[B[B)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/a/l;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 128
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/f;->k:I

    .line 129
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->o:Lcom/google/android/exoplayer2/upstream/g;

    .line 130
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 131
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->w:Ljava/util/List;

    .line 132
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->q:Z

    .line 133
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    .line 135
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/b/a;

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->p:Z

    .line 136
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".aac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".ac3"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".ec3"

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".mp3"

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->x:Z

    .line 141
    if-eqz p16, :cond_5

    .line 142
    move-object/from16 v0, p16

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/f;->y:Lcom/google/android/exoplayer2/metadata/id3/a;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->y:Lcom/google/android/exoplayer2/metadata/id3/a;

    .line 143
    move-object/from16 v0, p16

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    .line 144
    move-object/from16 v0, p16

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->t:Lcom/google/android/exoplayer2/extractor/f;

    .line 145
    move-object/from16 v0, p16

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b/f;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    move-object/from16 v0, p4

    if-eq v2, v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->u:Z

    .line 146
    move-object/from16 v0, p16

    iget v2, v0, Lcom/google/android/exoplayer2/source/b/f;->k:I

    move/from16 v0, p13

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->u:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->v:Z

    .line 155
    :goto_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/f;->n:Lcom/google/android/exoplayer2/upstream/e;

    .line 156
    sget-object v2, Lcom/google/android/exoplayer2/source/b/f;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/b/f;->j:I

    .line 157
    return-void

    .line 140
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 145
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 146
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 149
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->x:Z

    if-eqz v2, :cond_6

    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;-><init>()V

    :goto_4
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->y:Lcom/google/android/exoplayer2/metadata/id3/a;

    .line 150
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->x:Z

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/exoplayer2/util/l;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    :goto_5
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->t:Lcom/google/android/exoplayer2/extractor/f;

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->u:Z

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->v:Z

    goto :goto_3

    .line 149
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 150
    :cond_7
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v7, 0xa

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    .line 286
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v4, v7, v8}, Lcom/google/android/exoplayer2/extractor/g;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 322
    :goto_0
    return-wide v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->j()I

    move-result v0

    .line 292
    sget v1, Lcom/google/android/exoplayer2/metadata/id3/a;->a:I

    if-eq v0, v1, :cond_1

    move-wide v0, v2

    .line 293
    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->r()I

    move-result v0

    .line 297
    add-int/lit8 v1, v0, 0xa

    .line 298
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->e()I

    move-result v5

    if-le v1, v5, :cond_2

    .line 299
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 300
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 301
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v5, v4, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v1, v7, v0, v8}, Lcom/google/android/exoplayer2/extractor/g;->b([BIIZ)Z

    move-result v1

    if-nez v1, :cond_3

    move-wide v0, v2

    .line 304
    goto :goto_0

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->y:Lcom/google/android/exoplayer2/metadata/id3/a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-virtual {v1, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 307
    if-nez v5, :cond_4

    move-wide v0, v2

    .line 308
    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v6

    move v1, v4

    .line 311
    :goto_1
    if-ge v1, v6, :cond_6

    .line 312
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    .line 313
    instance-of v7, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v7, :cond_5

    .line 314
    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 315
    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    iget-object v8, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 316
    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->b:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v0, v4, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->z:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v0

    goto/16 :goto_0

    .line 311
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move-wide v0, v2

    .line 322
    goto/16 :goto_0
.end method

.method private a(J)Lcom/google/android/exoplayer2/extractor/f;
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/c;-><init>(J)V

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->E:Lcom/google/android/exoplayer2/source/b/j;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/h;)V

    .line 397
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v1, ".ec3"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/a;-><init>(J)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/extractor/b/b;-><init>(IJ)V

    goto :goto_0

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown extension for audio file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/e;[B[B)Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    .prologue
    .line 333
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/b/a;-><init>(Lcom/google/android/exoplayer2/upstream/e;[B[B)V

    move-object p0, v0

    goto :goto_0
.end method

.method private d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->t:Lcom/google/android/exoplayer2/extractor/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->o:Lcom/google/android/exoplayer2/upstream/g;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->o:Lcom/google/android/exoplayer2/upstream/g;

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/f;->B:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/g;I)Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v4

    .line 213
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->n:Lcom/google/android/exoplayer2/upstream/e;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/f;->n:Lcom/google/android/exoplayer2/upstream/e;

    .line 214
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    const/4 v1, 0x0

    .line 217
    :goto_1
    if-nez v1, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/b/f;->F:Z

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 221
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->o:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/f;->B:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->D:Z

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->o:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/f;->B:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0
.end method

.method private h()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->p:Z

    if-eqz v0, :cond_4

    .line 237
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->a:Lcom/google/android/exoplayer2/upstream/g;

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    move v8, v0

    move-object v4, v1

    .line 243
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->q:Z

    if-nez v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->e()V

    .line 250
    :cond_0
    :goto_2
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    .line 251
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V

    .line 252
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    if-nez v1, :cond_1

    .line 254
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/b/f;->a(Lcom/google/android/exoplayer2/extractor/g;)J

    move-result-wide v2

    .line 255
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    .line 256
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/s;->b(J)J

    move-result-wide v2

    .line 255
    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/b/f;->a(J)Lcom/google/android/exoplayer2/extractor/f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    .line 258
    :cond_1
    if-eqz v8, :cond_2

    .line 259
    iget v1, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :cond_2
    :goto_4
    if-nez v7, :cond_7

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/b/f;->F:Z

    if-nez v1, :cond_7

    .line 264
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_4

    :cond_3
    move v0, v7

    .line 238
    goto :goto_0

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/g;I)Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v0

    move v8, v7

    move-object v4, v0

    .line 241
    goto :goto_1

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->a()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b/f;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/s;->a(J)V

    goto :goto_2

    .line 256
    :cond_6
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b/f;->f:J

    goto :goto_3

    .line 267
    :cond_7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 272
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/b/f;->G:Z

    .line 273
    return-void

    .line 267
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0
.end method

.method private i()Lcom/google/android/exoplayer2/extractor/f;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 342
    const/4 v1, 0x1

    .line 343
    const-string v2, "text/vtt"

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/f;->l:Lcom/google/android/exoplayer2/source/b/a/a$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".webvtt"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".vtt"

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/b/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/b/l;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/s;)V

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 378
    :goto_0
    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->E:Lcom/google/android/exoplayer2/source/b/j;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/h;)V

    .line 381
    :cond_1
    return-object v1

    .line 347
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/f;->v:Z

    if-nez v2, :cond_3

    .line 350
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/f;->t:Lcom/google/android/exoplayer2/extractor/f;

    goto :goto_0

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    const-string v3, ".m4"

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/f;->s:Ljava/lang/String;

    .line 352
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/c/e;-><init>(ILcom/google/android/exoplayer2/util/s;)V

    move v0, v1

    move-object v1, v2

    goto :goto_0

    .line 358
    :cond_5
    const/16 v0, 0x10

    .line 359
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 361
    const/16 v0, 0x30

    .line 363
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/f;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 364
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 368
    const-string v3, "audio/mp4a-latm"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 369
    or-int/lit8 v0, v0, 0x2

    .line 371
    :cond_7
    const-string v3, "video/avc"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 372
    or-int/lit8 v0, v0, 0x4

    .line 375
    :cond_8
    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/t;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b/f;->r:Lcom/google/android/exoplayer2/util/s;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/f/e;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b/f;->w:Ljava/util/List;

    invoke-direct {v5, v0, v6}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILjava/util/List;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/f/t;-><init>(ILcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/f/u$b;)V

    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->F:Z

    .line 185
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/j;)V
    .locals 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/f;->E:Lcom/google/android/exoplayer2/source/b/j;

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/f;->j:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/b/f;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/b/j;->a(IZ)V

    .line 168
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->F:Z

    return v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->x:Z

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/f;->i()Lcom/google/android/exoplayer2/extractor/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/f;->A:Lcom/google/android/exoplayer2/extractor/f;

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/f;->d()V

    .line 199
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->F:Z

    if-nez v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b/f;->h()V

    .line 202
    :cond_1
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/f;->C:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/f;->G:Z

    return v0
.end method
