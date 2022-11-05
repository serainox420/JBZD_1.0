.class final Lcom/google/android/exoplayer2/extractor/c/i;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    .line 36
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso3"

    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso4"

    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iso5"

    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iso6"

    .line 41
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avc1"

    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hvc1"

    .line 43
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hev1"

    .line 44
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mp41"

    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp42"

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3g2a"

    .line 47
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3g2b"

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3gr6"

    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3gs6"

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3ge6"

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3gg6"

    .line 52
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4V "

    .line 53
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M4A "

    .line 54
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f4v "

    .line 55
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "kddi"

    .line 56
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M4VP"

    .line 57
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "qt  "

    .line 58
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MSNV"

    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/c/i;->a:[I

    .line 35
    return-void
.end method

.method private static a(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    ushr-int/lit8 v2, p0, 0x8

    const-string v3, "3gp"

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer2/extractor/c/i;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget v5, v3, v2

    .line 176
    if-eq v5, p0, :cond_0

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/i;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/g;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/g;->d()J

    move-result-wide v0

    .line 93
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-wide/16 v0, 0x1000

    :cond_1
    long-to-int v6, v0

    .line 96
    new-instance v7, Lcom/google/android/exoplayer2/util/l;

    const/16 v0, 0x40

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    .line 97
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    .line 99
    const/4 v1, 0x0

    move v5, v2

    .line 100
    :cond_2
    :goto_0
    if-ge v5, v6, :cond_6

    .line 102
    const/16 v4, 0x8

    .line 103
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 104
    iget-object v2, v7, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 105
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v2

    .line 106
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v8

    .line 107
    const-wide/16 v10, 0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_3

    .line 108
    const/16 v4, 0x10

    .line 109
    iget-object v2, v7, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v3, 0x8

    const/16 v9, 0x8

    invoke-interface {p0, v2, v3, v9}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 110
    const/16 v2, 0x10

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 111
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v2

    .line 114
    :cond_3
    int-to-long v10, v4

    cmp-long v9, v2, v10

    if-gez v9, :cond_4

    .line 116
    const/4 v0, 0x0

    .line 164
    :goto_1
    return v0

    .line 118
    :cond_4
    add-int/2addr v5, v4

    .line 120
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->B:I

    if-eq v8, v9, :cond_2

    .line 125
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->K:I

    if-eq v8, v9, :cond_5

    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->M:I

    if-ne v8, v9, :cond_7

    .line 127
    :cond_5
    const/4 v1, 0x1

    .line 164
    :cond_6
    if-eqz v0, :cond_e

    if-ne p1, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_1

    .line 131
    :cond_7
    int-to-long v10, v5

    add-long/2addr v10, v2

    int-to-long v12, v4

    sub-long/2addr v10, v12

    int-to-long v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 136
    int-to-long v10, v4

    sub-long/2addr v2, v10

    long-to-int v2, v2

    .line 137
    add-int v3, v5, v2

    .line 138
    sget v4, Lcom/google/android/exoplayer2/extractor/c/a;->a:I

    if-ne v8, v4, :cond_c

    .line 140
    const/16 v4, 0x8

    if-ge v2, v4, :cond_8

    .line 141
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 144
    iget-object v4, v7, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 145
    div-int/lit8 v4, v2, 0x4

    .line 146
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_b

    .line 147
    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 149
    const/4 v5, 0x4

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 146
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/c/i;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 151
    const/4 v0, 0x1

    .line 155
    :cond_b
    if-nez v0, :cond_d

    .line 157
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_c
    if-eqz v2, :cond_d

    .line 161
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/g;->c(I)V

    :cond_d
    move v5, v3

    .line 163
    goto/16 :goto_0

    .line 164
    :cond_e
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/i;->a(Lcom/google/android/exoplayer2/extractor/g;Z)Z

    move-result v0

    return v0
.end method
