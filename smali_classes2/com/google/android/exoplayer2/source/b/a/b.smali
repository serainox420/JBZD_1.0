.class public final Lcom/google/android/exoplayer2/source/b/a/b;
.super Lcom/google/android/exoplayer2/source/b/a/c;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/a/b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:Z

.field public final j:Z

.field public final k:Lcom/google/android/exoplayer2/source/b/a/b$a;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/b/a/b$a;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JJZIIIJZZ",
            "Lcom/google/android/exoplayer2/source/b/a/b$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/b$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/source/b/a/c;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/source/b/a/b;->a:I

    .line 101
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    .line 102
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/b/a/b;->d:Z

    .line 103
    iput p8, p0, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    .line 104
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    .line 105
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->g:I

    .line 106
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->h:J

    .line 107
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    .line 108
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->j:Z

    .line 109
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->k:Lcom/google/android/exoplayer2/source/b/a/b$a;

    .line 110
    invoke-static/range {p16 .. p16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    .line 111
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/b/a/b$a;

    .line 113
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/b/a/b$a;->d:J

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/b/a/b$a;->b:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    .line 117
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    :cond_0
    :goto_1
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/b/a/b;->b:J

    .line 119
    return-void

    .line 115
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    goto :goto_0

    .line 117
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    add-long/2addr p3, v2

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->m:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JI)Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 21

    .prologue
    .line 155
    new-instance v3, Lcom/google/android/exoplayer2/source/b/a/b;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/b/a/b;->a:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/a/b;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/b/a/b;->b:J

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/source/b/a/b;->g:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/b/a/b;->h:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->j:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->k:Lcom/google/android/exoplayer2/source/b/a/b$a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    move-object/from16 v19, v0

    move-wide/from16 v8, p1

    move/from16 v11, p3

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/b/a/b;-><init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/b/a/b$a;Ljava/util/List;)V

    return-object v3
.end method

.method public a(Lcom/google/android/exoplayer2/source/b/a/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    if-le v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 131
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    if-lt v2, v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 137
    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()Lcom/google/android/exoplayer2/source/b/a/b;
    .locals 20

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/b/a/b;->i:Z

    if-eqz v2, :cond_0

    .line 170
    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/source/b/a/b;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/b/a/b;->a:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b/a/b;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/b/a/b;->b:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/b/a/b;->c:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/b/a/b;->d:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/source/b/a/b;->e:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/source/b/a/b;->f:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/source/b/a/b;->g:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/b/a/b;->h:J

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->j:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->k:Lcom/google/android/exoplayer2/source/b/a/b$a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/b/a/b;->l:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/b/a/b;-><init>(ILjava/lang/String;JJZIIIJZZLcom/google/android/exoplayer2/source/b/a/b$a;Ljava/util/List;)V

    move-object/from16 p0, v3

    goto :goto_0
.end method
