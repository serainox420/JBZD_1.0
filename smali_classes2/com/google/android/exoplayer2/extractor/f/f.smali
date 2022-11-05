.class public final Lcom/google/android/exoplayer2/extractor/f/f;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/extractor/n;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 70
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;[BI)Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 142
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    .line 143
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    .line 156
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    const v2, 0x7ffe8001

    if-ne v1, v2, :cond_0

    .line 158
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_1
    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->i:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/f;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->i:Lcom/google/android/exoplayer2/Format;

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->i:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 174
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/f;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->j:I

    .line 177
    const-wide/32 v2, 0xf4240

    .line 178
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/f;->a([B)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->i:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->r:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->h:J

    .line 179
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->g:I

    .line 79
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->k:J

    .line 91
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->d:Lcom/google/android/exoplayer2/extractor/n;

    .line 86
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/f;->b(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    .line 100
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, p1, v0, v8}, Lcom/google/android/exoplayer2/extractor/f/f;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/f;->c()V

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v1, v8}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->j:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->d:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 114
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->j:I

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/f;->d:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->k:J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/f;->j:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->k:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/f;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/f;->k:J

    .line 118
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/f/f;->e:I

    goto :goto_0

    .line 123
    :cond_1
    return-void

    .line 96
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
    .line 128
    return-void
.end method
