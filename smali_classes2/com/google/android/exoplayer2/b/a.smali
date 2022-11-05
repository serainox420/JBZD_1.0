.class public Lcom/google/android/exoplayer2/b/a;
.super Lcom/google/android/exoplayer2/b/b;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b/a$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/exoplayer2/upstream/c;

.field private final e:I

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:F

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/l;[ILcom/google/android/exoplayer2/upstream/c;IJJJF)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/b/b;-><init>(Lcom/google/android/exoplayer2/source/l;[I)V

    .line 144
    iput-object p3, p0, Lcom/google/android/exoplayer2/b/a;->d:Lcom/google/android/exoplayer2/upstream/c;

    .line 145
    iput p4, p0, Lcom/google/android/exoplayer2/b/a;->e:I

    .line 146
    mul-long v2, p5, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/b/a;->f:J

    .line 147
    mul-long v2, p7, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/b/a;->g:J

    .line 148
    mul-long v2, p9, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/b/a;->h:J

    .line 149
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer2/b/a;->i:F

    .line 150
    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/b/a;->b(J)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    .line 151
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/b/a;->k:I

    .line 152
    return-void
.end method

.method private b(J)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/a;->d:Lcom/google/android/exoplayer2/upstream/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/c;->a()J

    move-result-wide v0

    .line 237
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/b/a;->e:I

    int-to-long v0, v0

    :goto_0
    move v3, v2

    .line 240
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/b/a;->b:I

    if-ge v2, v4, :cond_4

    .line 241
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/b/a;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 242
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/b/a;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 243
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->b:I

    int-to-long v4, v3

    cmp-long v3, v4, v0

    if-gtz v3, :cond_2

    .line 250
    :goto_2
    return v2

    .line 237
    :cond_1
    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->i:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 240
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 250
    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    return v0
.end method

.method public a(J)V
    .locals 7

    .prologue
    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 158
    iget v2, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b/a;->f()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/b/a;->b(J)I

    move-result v4

    .line 161
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/b/a;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 163
    iput v4, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    .line 165
    if-eqz v3, :cond_0

    iget v4, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/android/exoplayer2/b/a;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->b:I

    iget v1, v3, Lcom/google/android/exoplayer2/Format;->b:I

    if-le v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/b/a;->f:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 170
    iput v2, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    .line 179
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    if-eq v0, v2, :cond_1

    .line 180
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/b/a;->k:I

    .line 182
    :cond_1
    return-void

    .line 171
    :cond_2
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->b:I

    iget v1, v3, Lcom/google/android/exoplayer2/Format;->b:I

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/b/a;->g:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 175
    iput v2, p0, Lcom/google/android/exoplayer2/b/a;->j:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/exoplayer2/b/a;->k:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method
