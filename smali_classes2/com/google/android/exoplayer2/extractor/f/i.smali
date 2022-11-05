.class public final Lcom/google/android/exoplayer2/extractor/f/i;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/f/r;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final e:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final f:Lcom/google/android/exoplayer2/extractor/f/m;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/exoplayer2/extractor/n;

.field private k:Lcom/google/android/exoplayer2/extractor/f/i$a;

.field private l:Z

.field private m:J

.field private final n:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/r;ZZ)V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/i;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    .line 73
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/f/i;->b:Z

    .line 74
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/f/i;->c:Z

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->h:[Z

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->n:Lcom/google/android/exoplayer2/util/l;

    .line 80
    return-void
.end method

.method private a(JIIJ)V
    .locals 19

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->l:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    .line 176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->l:Z

    if-nez v3, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/j;->a([BII)Lcom/google/android/exoplayer2/util/j$b;

    move-result-object v15

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/j;->b([BII)Lcom/google/android/exoplayer2/util/j$a;

    move-result-object v16

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/i;->j:Lcom/google/android/exoplayer2/extractor/n;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->i:Ljava/lang/String;

    const-string v4, "video/avc"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v15, Lcom/google/android/exoplayer2/util/j$b;->b:I

    iget v9, v15, Lcom/google/android/exoplayer2/util/j$b;->c:I

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v12, -0x1

    iget v13, v15, Lcom/google/android/exoplayer2/util/j$b;->d:F

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 186
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->l:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(Lcom/google/android/exoplayer2/util/j$b;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(Lcom/google/android/exoplayer2/util/j$a;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 202
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/j;->a([BI)I

    move-result v3

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->n:Lcom/google/android/exoplayer2/util/l;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->n:Lcom/google/android/exoplayer2/util/l;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->n:Lcom/google/android/exoplayer2/util/l;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/f/r;->a(JLcom/google/android/exoplayer2/util/l;)V

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(JI)V

    .line 209
    return-void

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/j;->a([BII)Lcom/google/android/exoplayer2/util/j$b;

    move-result-object v3

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(Lcom/google/android/exoplayer2/util/j$b;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    goto :goto_0

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/j;->b([BII)Lcom/google/android/exoplayer2/util/j$a;

    move-result-object v3

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(Lcom/google/android/exoplayer2/util/j$a;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    goto/16 :goto_0
.end method

.method private a(JIJ)V
    .locals 6

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a(JIJ)V

    .line 161
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/i$a;->a([BII)V

    .line 170
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->h:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->d:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->e:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->f:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/i$a;->b()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->g:J

    .line 90
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/i;->m:J

    .line 104
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 95
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->i:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->j:Lcom/google/android/exoplayer2/extractor/n;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/i$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i;->j:Lcom/google/android/exoplayer2/extractor/n;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/i;->b:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/f/i;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/i$a;-><init>(Lcom/google/android/exoplayer2/extractor/n;ZZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->k:Lcom/google/android/exoplayer2/extractor/f/i$a;

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/i;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/r;->a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    .line 99
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 12

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v8

    .line 110
    iget-object v9, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 113
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i;->g:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i;->g:J

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i;->j:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/i;->h:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/android/exoplayer2/util/j;->a([BII[Z)I

    move-result v10

    .line 120
    if-ne v10, v8, :cond_0

    .line 122
    invoke-direct {p0, v9, v0, v8}, Lcom/google/android/exoplayer2/extractor/f/i;->a([BII)V

    .line 123
    return-void

    .line 127
    :cond_0
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/j;->b([BI)I

    move-result v11

    .line 131
    sub-int v1, v10, v0

    .line 132
    if-lez v1, :cond_1

    .line 133
    invoke-direct {p0, v9, v0, v10}, Lcom/google/android/exoplayer2/extractor/f/i;->a([BII)V

    .line 135
    :cond_1
    sub-int v4, v8, v10

    .line 136
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/i;->g:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 140
    if-gez v1, :cond_2

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/f/i;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/f/i;->a(JIIJ)V

    .line 143
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/f/i;->m:J

    move-object v1, p0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/f/i;->a(JIJ)V

    .line 145
    add-int/lit8 v0, v10, 0x3

    .line 146
    goto :goto_0

    .line 140
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
