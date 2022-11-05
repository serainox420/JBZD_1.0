.class public final Lcom/google/android/exoplayer2/extractor/f/n;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/u;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/f/g;

.field private final b:Lcom/google/android/exoplayer2/util/k;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/exoplayer2/util/s;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/g;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:I

    .line 60
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    .line 148
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;[BI)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 161
    if-gtz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-nez p2, :cond_2

    .line 164
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 168
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    .line 169
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    if-eq v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    goto :goto_1
.end method

.method private b()Z
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 175
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    .line 177
    if-eq v2, v1, :cond_0

    .line 178
    const-string v1, "PesReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start code prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    .line 201
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 186
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->k:Z

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->f:Z

    .line 189
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->g:Z

    .line 192
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->i:I

    .line 195
    if-nez v0, :cond_1

    .line 196
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    :goto_1
    move v0, v1

    .line 201
    goto :goto_0

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->i:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    goto :goto_1
.end method

.method private c()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 206
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->l:J

    .line 207
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->f:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 212
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 215
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->h:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->g:Z

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 217
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    .line 218
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 219
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 220
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 221
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 222
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 228
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->e:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/util/s;->b(J)J

    .line 229
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/f/n;->h:Z

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->e:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/s;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->l:J

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:I

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->d:I

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->h:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/g;->a()V

    .line 77
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/l;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 81
    if-eqz p2, :cond_0

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/f/n;->a(I)V

    .line 105
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_1

    .line 88
    :pswitch_2
    const-string v0, "PesReader"

    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    if-eq v0, v5, :cond_1

    .line 96
    const-string v0, "PesReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start indicator: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/g;->b()V

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/k;->a:[B

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/f/n;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/n;->a(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 116
    :pswitch_5
    const/16 v0, 0xa

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->b:Lcom/google/android/exoplayer2/util/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/k;->a:[B

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/f/n;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->i:I

    .line 119
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/f/n;->a(Lcom/google/android/exoplayer2/util/l;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/n;->c()V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->l:J

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/f/n;->k:Z

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/g;->a(JZ)V

    .line 122
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/n;->a(I)V

    goto/16 :goto_1

    .line 126
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    .line 127
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    if-ne v2, v5, :cond_4

    move v2, v1

    .line 128
    :goto_3
    if-lez v2, :cond_3

    .line 129
    sub-int/2addr v0, v2

    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/util/l;)V

    .line 133
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    if-eq v2, v5, :cond_0

    .line 134
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/g;->b()V

    .line 137
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/f/n;->a(I)V

    goto/16 :goto_1

    .line 127
    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/n;->j:I

    sub-int v2, v0, v2

    goto :goto_3

    .line 143
    :cond_5
    return-void

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/n;->e:Lcom/google/android/exoplayer2/util/s;

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    .line 67
    return-void
.end method
