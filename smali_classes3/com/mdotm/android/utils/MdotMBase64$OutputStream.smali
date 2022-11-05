.class public Lcom/mdotm/android/utils/MdotMBase64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "MdotMBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 2068
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2095
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2096
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->breakLines:Z

    .line 2097
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->encode:Z

    .line 2098
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->bufferLength:I

    .line 2099
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    .line 2100
    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    .line 2101
    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->lineLength:I

    .line 2102
    iput-boolean v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->suspendEncoding:Z

    .line 2103
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->b4:[B

    .line 2104
    iput p2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->options:I

    .line 2105
    invoke-static {p2}, Lcom/mdotm/android/utils/MdotMBase64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->decodabet:[B

    .line 2106
    return-void

    :cond_0
    move v0, v2

    .line 2096
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2097
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2098
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2219
    invoke-virtual {p0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->flushBase64()V

    .line 2223
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2225
    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    .line 2226
    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    .line 2227
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2198
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 2199
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 2200
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    iget v4, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/mdotm/android/utils/MdotMBase64;->access$3([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2201
    const/4 v0, 0x0

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    .line 2209
    :cond_0
    return-void

    .line 2204
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 2205
    const-string v1, "Base64 input not properly padded."

    .line 2204
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 2249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->suspendEncoding:Z

    .line 2250
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->flushBase64()V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->suspendEncoding:Z

    .line 2240
    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 2121
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_1

    .line 2122
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_3

    .line 2128
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2129
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    .line 2132
    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->bufferLength:I

    iget v4, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/mdotm/android/utils/MdotMBase64;->access$3([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2134
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->lineLength:I

    .line 2135
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->breakLines:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->lineLength:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    .line 2136
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2137
    iput v5, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->lineLength:I

    .line 2140
    :cond_2
    iput v5, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    goto :goto_0

    .line 2147
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    .line 2148
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2149
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->buffer:[B

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->b4:[B

    iget v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->options:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/mdotm/android/utils/MdotMBase64;->access$2([BI[BII)I

    move-result v0

    .line 2152
    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2153
    iput v5, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->position:I

    goto :goto_0

    .line 2156
    :cond_4
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 2157
    new-instance v0, Ljava/io/IOException;

    .line 2158
    const-string v1, "Invalid character in Base64 data."

    .line 2157
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2179
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_1

    .line 2180
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2188
    :cond_0
    return-void

    .line 2184
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2185
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->write(I)V

    .line 2184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
