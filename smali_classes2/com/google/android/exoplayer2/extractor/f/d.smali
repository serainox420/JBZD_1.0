.class public final Lcom/google/android/exoplayer2/extractor/f/d;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/exoplayer2/util/k;

.field private final d:Lcom/google/android/exoplayer2/util/l;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/exoplayer2/extractor/n;

.field private h:Lcom/google/android/exoplayer2/extractor/n;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:J

.field private o:I

.field private p:J

.field private q:Lcom/google/android/exoplayer2/extractor/n;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/d;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/f/d;-><init>(ZLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/f/d;->a:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->c()V

    .line 101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->b:Z

    .line 102
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->e:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/n;JII)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->i:I

    .line 207
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->q:Lcom/google/android/exoplayer2/extractor/n;

    .line 209
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->r:J

    .line 210
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/f/d;->o:I

    .line 211
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;[BI)Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 172
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/util/l;)V
    .locals 7

    .prologue
    const/16 v6, 0x200

    const/16 v5, 0x100

    .line 228
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 229
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v3

    .line 231
    :goto_0
    if-ge v0, v3, :cond_2

    .line 232
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 233
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    if-ne v4, v6, :cond_1

    const/16 v4, 0xf0

    if-lt v0, v4, :cond_1

    const/16 v4, 0xff

    if-eq v0, v4, :cond_1

    .line 234
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->l:Z

    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->e()V

    .line 236
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 264
    :goto_2
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    or-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    .line 254
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    if-eq v0, v5, :cond_3

    .line 257
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    .line 258
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 241
    :sswitch_0
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :sswitch_1
    const/16 v0, 0x300

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :sswitch_2
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->d()V

    .line 251
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_2

    .line 263
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_1
        0x1ff -> :sswitch_0
        0x344 -> :sswitch_2
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->i:I

    .line 181
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 182
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->k:I

    .line 183
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->o:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->q:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 334
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 335
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->o:I

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->q:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->p:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/d;->o:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 337
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->p:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->p:J

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->c()V

    .line 340
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->i:I

    .line 191
    sget-object v0, Lcom/google/android/exoplayer2/extractor/f/d;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 192
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->o:I

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 194
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->i:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->j:I

    .line 219
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->h:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 272
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->h:Lcom/google/android/exoplayer2/extractor/n;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    .line 273
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->r()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/f/d;->a(Lcom/google/android/exoplayer2/extractor/n;JII)V

    .line 274
    return-void
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x2

    const/4 v9, 0x0

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 282
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->m:Z

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 284
    if-eq v1, v0, :cond_2

    .line 294
    const-string v2, "AdtsReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", but assuming AAC LC."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 300
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 302
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/c;->a(III)[B

    move-result-object v7

    .line 304
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/c;->a([B)Landroid/util/Pair;

    move-result-object v6

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->f:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    const/4 v2, 0x0

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 309
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/f/d;->e:Ljava/lang/String;

    move v4, v3

    .line 307
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 312
    const-wide/32 v2, 0x3d090000

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/d;->n:J

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->g:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 314
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/extractor/f/d;->m:Z

    .line 319
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v10, v0, -0x5

    .line 321
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->l:Z

    if-eqz v0, :cond_0

    .line 322
    add-int/lit8 v10, v10, -0x2

    .line 325
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/d;->g:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/f/d;->n:J

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/f/d;->a(Lcom/google/android/exoplayer2/extractor/n;JII)V

    .line 326
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->c()V

    .line 108
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->p:J

    .line 128
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 113
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->g:Lcom/google/android/exoplayer2/extractor/n;

    .line 115
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->b:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 117
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->h:Lcom/google/android/exoplayer2/extractor/n;

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->h:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/id3"

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3, v4}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->h:Lcom/google/android/exoplayer2/extractor/n;

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 2

    .prologue
    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/d;->b(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->d:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/f/d;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->f()V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/d;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/d;->c:Lcom/google/android/exoplayer2/util/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/k;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/extractor/f/d;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/d;->g()V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 149
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/d;->c(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0

    .line 153
    :cond_2
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
