.class public Lcom/mdotm/android/utils/MdotMBase64$InputStream;
.super Ljava/io/FilterInputStream;
.source "MdotMBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 1853
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1854
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1882
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1883
    iput p2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    .line 1884
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->breakLines:Z

    .line 1885
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    .line 1886
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    .line 1887
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1889
    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1890
    invoke-static {p2}, Lcom/mdotm/android/utils/MdotMBase64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->decodabet:[B

    .line 1891
    return-void

    :cond_0
    move v0, v2

    .line 1884
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1885
    goto :goto_1

    .line 1886
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1904
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    if-gez v0, :cond_1

    .line 1905
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v0, :cond_4

    .line 1906
    new-array v0, v5, [B

    move v3, v1

    move v2, v1

    .line 1908
    :goto_0
    if-lt v3, v5, :cond_2

    .line 1921
    :cond_0
    if-lez v2, :cond_3

    .line 1922
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v5, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/mdotm/android/utils/MdotMBase64;->access$1([BII[BII)[B

    .line 1923
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1924
    iput v7, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    .line 1967
    :cond_1
    :goto_1
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    if-ltz v0, :cond_d

    .line 1969
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    iget v2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    if-lt v0, v2, :cond_a

    move v0, v6

    .line 1988
    :goto_2
    return v0

    .line 1909
    :cond_2
    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1912
    if-ltz v4, :cond_0

    .line 1913
    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1914
    add-int/lit8 v4, v2, 0x1

    .line 1908
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_0

    :cond_3
    move v0, v6

    .line 1927
    goto :goto_2

    .line 1933
    :cond_4
    new-array v2, v7, [B

    move v0, v1

    .line 1935
    :goto_3
    if-lt v0, v7, :cond_6

    .line 1950
    :cond_5
    if-ne v0, v7, :cond_8

    .line 1951
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    invoke-static {v2, v1, v0, v1, v3}, Lcom/mdotm/android/utils/MdotMBase64;->access$2([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    .line 1952
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    goto :goto_1

    .line 1939
    :cond_6
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1940
    if-ltz v3, :cond_7

    .line 1941
    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->decodabet:[B

    and-int/lit8 v5, v3, 0x7f

    aget-byte v4, v4, v5

    const/4 v5, -0x5

    .line 1938
    if-le v4, v5, :cond_6

    .line 1943
    :cond_7
    if-ltz v3, :cond_5

    .line 1947
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1935
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1954
    :cond_8
    if-nez v0, :cond_9

    move v0, v6

    .line 1955
    goto :goto_2

    .line 1959
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 1960
    const-string v1, "Improperly padded Base64 input."

    .line 1959
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1973
    :cond_a
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->breakLines:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_b

    .line 1974
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1975
    const/16 v0, 0xa

    goto :goto_2

    .line 1978
    :cond_b
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1982
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    aget-byte v0, v0, v1

    .line 1984
    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    iget v2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    if-lt v1, v2, :cond_c

    .line 1985
    iput v6, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1988
    :cond_c
    and-int/lit16 v0, v0, 0xff

    goto :goto_2

    .line 1995
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 1996
    const-string v1, "Error in Base64 code reading stream."

    .line 1995
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2019
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    .line 2030
    :cond_0
    :goto_1
    return v0

    .line 2020
    :cond_1
    invoke-virtual {p0}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->read()I

    move-result v1

    .line 2022
    if-ltz v1, :cond_2

    .line 2023
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 2019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2024
    :cond_2
    if-nez v0, :cond_0

    .line 2025
    const/4 v0, -0x1

    goto :goto_1
.end method
