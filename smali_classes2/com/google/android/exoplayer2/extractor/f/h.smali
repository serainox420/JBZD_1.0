.class public final Lcom/google/android/exoplayer2/extractor/f/h;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/h$a;
    }
.end annotation


# static fields
.field private static final c:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/exoplayer2/extractor/n;

.field private d:Z

.field private e:J

.field private final f:[Z

.field private final g:Lcom/google/android/exoplayer2/extractor/f/h$a;

.field private h:Z

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/h;->c:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->f:[Z

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/h$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/h$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    .line 69
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/h$a;Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/h$a;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x7

    const/4 v3, -0x1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->c:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->a:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 179
    const/4 v0, 0x4

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    .line 180
    const/4 v1, 0x5

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    .line 181
    const/4 v4, 0x6

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    .line 182
    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v5, v0

    .line 183
    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int v6, v0, v4

    .line 185
    const/high16 v10, 0x3f800000    # 1.0f

    .line 186
    aget-byte v0, v12, v13

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 187
    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    const-string v1, "video/mpeg2"

    const/high16 v7, -0x40800000    # -1.0f

    .line 204
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v0, p1

    move v4, v3

    move v9, v3

    move-object v11, v2

    .line 202
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 206
    const-wide/16 v0, 0x0

    .line 207
    aget-byte v3, v12, v13

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, -0x1

    .line 208
    if-ltz v3, :cond_1

    sget-object v4, Lcom/google/android/exoplayer2/extractor/f/h;->c:[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 209
    sget-object v0, Lcom/google/android/exoplayer2/extractor/f/h;->c:[D

    aget-wide v0, v0, v3

    .line 210
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->b:I

    .line 211
    add-int/lit8 v4, v3, 0x9

    aget-byte v4, v12, v4

    and-int/lit8 v4, v4, 0x60

    shr-int/lit8 v4, v4, 0x5

    .line 212
    add-int/lit8 v3, v3, 0x9

    aget-byte v3, v12, v3

    and-int/lit8 v3, v3, 0x1f

    .line 213
    if-eq v4, v3, :cond_0

    .line 214
    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    int-to-double v6, v3

    div-double/2addr v4, v6

    mul-double/2addr v0, v4

    .line 216
    :cond_0
    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double v0, v4, v0

    double-to-long v0, v0

    .line 219
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_0
    mul-int/lit8 v0, v6, 0x4

    int-to-float v0, v0

    mul-int/lit8 v1, v5, 0x3

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 190
    goto :goto_0

    .line 192
    :pswitch_1
    mul-int/lit8 v0, v6, 0x10

    int-to-float v0, v0

    mul-int/lit8 v1, v5, 0x9

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 193
    goto :goto_0

    .line 195
    :pswitch_2
    mul-int/lit8 v0, v6, 0x79

    int-to-float v0, v0

    mul-int/lit8 v1, v5, 0x64

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 196
    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->f:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/h$a;->a()V

    .line 75
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->k:Z

    .line 76
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->h:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->i:J

    .line 78
    return-void
.end method

.method public a(JZ)V
    .locals 3

    .prologue
    .line 89
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->k:Z

    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->k:Z

    if-eqz v0, :cond_0

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->j:J

    .line 93
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 83
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 85
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 12

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v9

    .line 99
    iget-object v10, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 102
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->i:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->i:J

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->b:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    move v1, v0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->f:[Z

    invoke-static {v10, v0, v9, v2}, Lcom/google/android/exoplayer2/util/j;->a([BII[Z)I

    move-result v8

    .line 109
    if-ne v8, v9, :cond_1

    .line 111
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->d:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    invoke-virtual {v0, v10, v1, v9}, Lcom/google/android/exoplayer2/extractor/f/h$a;->a([BII)V

    .line 114
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v2, v8, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v11, v0, 0xff

    .line 120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->d:Z

    if-nez v0, :cond_3

    .line 123
    sub-int v0, v8, v1

    .line 124
    if-lez v0, :cond_2

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    invoke-virtual {v2, v10, v1, v8}, Lcom/google/android/exoplayer2/extractor/f/h$a;->a([BII)V

    .line 129
    :cond_2
    if-gez v0, :cond_7

    neg-int v0, v0

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    invoke-virtual {v1, v11, v0}, Lcom/google/android/exoplayer2/extractor/f/h$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->g:Lcom/google/android/exoplayer2/extractor/f/h$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/h;->a(Lcom/google/android/exoplayer2/extractor/f/h$a;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 134
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->e:J

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->d:Z

    .line 139
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->d:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xb8

    if-eq v11, v0, :cond_4

    if-nez v11, :cond_6

    .line 140
    :cond_4
    sub-int v6, v9, v8

    .line 141
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->h:Z

    if-eqz v0, :cond_5

    .line 142
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->l:Z

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    .line 143
    :goto_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->i:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v5, v0, v6

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/h;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->n:J

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->l:Z

    .line 147
    :cond_5
    const/16 v0, 0xb8

    if-ne v11, v0, :cond_9

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->h:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->l:Z

    .line 159
    :cond_6
    :goto_3
    add-int/lit8 v0, v8, 0x3

    move v1, v8

    .line 160
    goto/16 :goto_0

    .line 129
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 142
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 151
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->k:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->j:J

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->n:J

    .line 152
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->i:J

    int-to-long v2, v6

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->m:J

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->k:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->h:Z

    goto :goto_3

    .line 151
    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/h;->n:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/h;->e:J

    add-long/2addr v0, v2

    goto :goto_4
.end method

.method public b()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
