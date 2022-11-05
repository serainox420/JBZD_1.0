.class public final Lcom/google/android/exoplayer2/extractor/f/b;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/k;

.field private final b:Lcom/google/android/exoplayer2/util/l;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/extractor/n;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/Format;

.field private k:I

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/b;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/k;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;[BI)Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 148
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 149
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->h:Z

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->h:Z

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 167
    const/16 v3, 0x77

    if-ne v0, v3, :cond_2

    .line 168
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->h:Z

    .line 174
    :goto_2
    return v1

    .line 171
    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->h:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    .line 174
    goto :goto_2
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->j:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->l:Z

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/k;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 186
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->c:Ljava/lang/String;

    .line 187
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 188
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->j:Lcom/google/android/exoplayer2/Format;

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->j:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a;->b([B)I

    move-result v0

    .line 192
    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->k:I

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    .line 194
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a;->c([B)I

    move-result v0

    .line 198
    :goto_3
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->j:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->r:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->i:J

    .line 200
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->c:Ljava/lang/String;

    .line 188
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->a:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    .line 192
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a;->a([B)I

    move-result v0

    goto :goto_2

    .line 195
    :cond_4
    invoke-static {}, Lcom/google/android/exoplayer2/audio/a;->a()I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    .line 82
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    .line 83
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->h:Z

    .line 84
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->m:J

    .line 96
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 89
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->e:Lcom/google/android/exoplayer2/extractor/n;

    .line 91
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v1, 0xb

    aput-byte v1, v0, v6

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    .line 107
    iput v8, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, p1, v0, v9}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/b;->c()V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->b:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v1, v9}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 115
    iput v8, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->e:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 121
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->k:I

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/b;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->m:J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/b;->k:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 124
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->m:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/b;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/b;->m:J

    .line 125
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/f/b;->f:I

    goto :goto_0

    .line 130
    :cond_1
    return-void

    .line 101
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
    .line 135
    return-void
.end method
