.class public Lcom/facebook/imageutils/WebpUtil;
.super Ljava/lang/Object;
.source "WebpUtil.java"


# static fields
.field private static final VP8L_HEADER:Ljava/lang/String; = "VP8L"

.field private static final VP8X_HEADER:Ljava/lang/String; = "VP8X"

.field private static final VP8_HEADER:Ljava/lang/String; = "VP8 "


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static compare([BLjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 163
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v3, p0, v0

    if-ne v2, v3, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static get2BytesAsInt(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 192
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 193
    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static getByte(Ljava/io/InputStream;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static getHeader([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 174
    aget-byte v2, p0, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInt(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 181
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 182
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 183
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 184
    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static getShort(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getSize(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 52
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 54
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 56
    const-string v2, "RIFF"

    invoke-static {v1, v2}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 62
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 63
    const-string v2, "WEBP"

    invoke-static {v1, v2}, Lcom/facebook/imageutils/WebpUtil;->compare([BLjava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    :cond_2
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 68
    invoke-static {v1}, Lcom/facebook/imageutils/WebpUtil;->getHeader([B)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "VP8 "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8Dimension(Ljava/io/InputStream;)Landroid/util/Pair;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 82
    :catch_2
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_3
    :try_start_6
    const-string v2, "VP8L"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8LDimension(Ljava/io/InputStream;)Landroid/util/Pair;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 82
    :catch_3
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_4
    :try_start_8
    const-string v2, "VP8X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getVP8XDimension(Ljava/io/InputStream;)Landroid/util/Pair;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 82
    :catch_4
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 79
    :cond_5
    if-eqz p0, :cond_0

    .line 81
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_0

    .line 82
    :catch_5
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    :catch_6
    move-exception v1

    .line 77
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_0

    .line 82
    :catch_7
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_6

    .line 81
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 84
    :cond_6
    :goto_1
    throw v0

    .line 82
    :catch_8
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getVP8Dimension(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 102
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getShort(Ljava/io/InputStream;)S

    move-result v0

    .line 103
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getShort(Ljava/io/InputStream;)S

    move-result v1

    .line 104
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getShort(Ljava/io/InputStream;)S

    move-result v2

    .line 105
    const/16 v3, 0x9d

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x2a

    if-eq v2, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->get2BytesAsInt(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getVP8LDimension(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getInt(Ljava/io/InputStream;)I

    .line 124
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getByte(Ljava/io/InputStream;)B

    move-result v0

    .line 125
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 129
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xff

    .line 130
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    and-int/lit16 v2, v2, 0xff

    .line 131
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    and-int/lit16 v3, v3, 0xff

    .line 133
    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    .line 134
    and-int/lit8 v0, v3, 0xf

    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 135
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getVP8XDimension(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 149
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->read3Bytes(Ljava/io/InputStream;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static isBitOne(BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    rem-int/lit8 v1, p1, 0x8

    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static read3Bytes(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getByte(Ljava/io/InputStream;)B

    move-result v0

    .line 198
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getByte(Ljava/io/InputStream;)B

    move-result v1

    .line 199
    invoke-static {p0}, Lcom/facebook/imageutils/WebpUtil;->getByte(Ljava/io/InputStream;)B

    move-result v2

    .line 200
    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method
