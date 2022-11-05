.class public final Lcom/google/android/exoplayer2/extractor/f/l;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private final b:Lcom/google/android/exoplayer2/extractor/k;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/extractor/n;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/l;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    iget-object v5, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 126
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v6

    move v4, v0

    .line 128
    :goto_0
    if-ge v4, v6, :cond_3

    .line 129
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 130
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/f/l;->i:Z

    if-eqz v3, :cond_1

    aget-byte v3, v5, v4

    and-int/lit16 v3, v3, 0xe0

    const/16 v7, 0xe0

    if-ne v3, v7, :cond_1

    move v3, v1

    .line 131
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->i:Z

    .line 132
    if-eqz v3, :cond_2

    .line 133
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 135
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/l;->i:Z

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v2, v5, v4

    aput-byte v2, v0, v1

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 138
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    .line 143
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 129
    goto :goto_1

    :cond_1
    move v3, v2

    .line 130
    goto :goto_2

    .line 128
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_3
.end method

.method private c(Lcom/google/android/exoplayer2/util/l;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 162
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 164
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 165
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    if-ge v0, v12, :cond_0

    .line 192
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/k;->a(ILcom/google/android/exoplayer2/extractor/k;)Z

    move-result v0

    .line 172
    if-nez v0, :cond_1

    .line 174
    iput v9, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 175
    iput v11, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/k;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->k:I

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->h:Z

    if-nez v0, :cond_2

    .line 181
    const-wide/32 v0, 0xf4240

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/k;->g:I

    int-to-long v4, v3

    mul-long/2addr v0, v4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/k;->d:I

    int-to-long v4, v3

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->j:J

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/k;->b:Ljava/lang/String;

    const/4 v3, -0x1

    const/16 v4, 0x1000

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/k;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Lcom/google/android/exoplayer2/extractor/k;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/k;->d:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/f/l;->c:Ljava/lang/String;

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->e:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 186
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/extractor/f/l;->h:Z

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v1, v12}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    goto :goto_0
.end method

.method private d(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->e:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 209
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 210
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->k:I

    if-ge v0, v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/l;->l:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/l;->k:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 216
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->l:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/l;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->l:J

    .line 217
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 218
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->g:I

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->i:Z

    .line 76
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/l;->l:J

    .line 88
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 81
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->d:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->e:Lcom/google/android/exoplayer2/extractor/n;

    .line 83
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 1

    .prologue
    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/l;->b(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/l;->c(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/l;->d(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
