.class final Lcom/google/android/exoplayer2/extractor/d/g;
.super Lcom/google/android/exoplayer2/extractor/d/h;
.source "OpusReader.java"


# static fields
.field private static final a:I

.field private static final b:[B


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Opus"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/d/g;->a:I

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/d/g;->b:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/h;-><init>()V

    return-void
.end method

.method private a([B)J
    .locals 5

    .prologue
    const/16 v4, 0x2710

    const/4 v0, 0x1

    .line 107
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    .line 109
    and-int/lit8 v1, v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 118
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    move v1, v0

    .line 122
    :goto_0
    shr-int/lit8 v0, v2, 0x3

    .line 123
    and-int/lit8 v2, v0, 0x3

    .line 124
    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 125
    const/16 v0, 0x9c4

    shl-int/2addr v0, v2

    .line 133
    :goto_1
    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :pswitch_0
    move v1, v0

    .line 112
    goto :goto_0

    .line 115
    :pswitch_1
    const/4 v0, 0x2

    move v1, v0

    .line 116
    goto :goto_0

    .line 126
    :cond_0
    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    .line 127
    and-int/lit8 v0, v2, 0x1

    shl-int v0, v4, v0

    goto :goto_1

    .line 128
    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    .line 129
    const v0, 0xea60

    goto :goto_1

    .line 131
    :cond_2
    shl-int v0, v4, v2

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 95
    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    .line 96
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    sget-object v2, Lcom/google/android/exoplayer2/extractor/d/g;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 53
    :goto_0
    return v0

    .line 51
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/extractor/d/g;->b:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 52
    sget-object v2, Lcom/google/android/exoplayer2/extractor/d/g;->b:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 53
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/g;->b:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/h;->a(Z)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/g;->c:Z

    .line 62
    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/util/l;JLcom/google/android/exoplayer2/extractor/d/h$a;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/g;->c:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 74
    const/16 v1, 0x9

    aget-byte v1, v0, v1

    and-int/lit16 v5, v1, 0xff

    .line 75
    const/16 v1, 0xb

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, v7, v1}, Lcom/google/android/exoplayer2/extractor/d/g;->a(Ljava/util/List;I)V

    .line 80
    const/16 v0, 0xf00

    invoke-direct {p0, v7, v0}, Lcom/google/android/exoplayer2/extractor/d/g;->a(Ljava/util/List;I)V

    .line 82
    const/4 v0, 0x0

    const-string v1, "audio/opus"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v6, 0xbb80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer2/extractor/d/h$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/g;->c:Z

    .line 91
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/extractor/d/g;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 88
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected b(Lcom/google/android/exoplayer2/util/l;)J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/d/g;->a([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/d/g;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
