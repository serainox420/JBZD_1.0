.class public final Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field static final DEFAULT_BLOCK_ARRAY_SIZE:I = 0x28

.field private static final INITIAL_BLOCK_SIZE:I = 0x1f4

.field private static final MAX_BLOCK_SIZE:I = 0x40000

.field public static final NO_BYTES:[B


# instance fields
.field private final _bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field private _currBlock:[B

.field private _currBlockPtr:I

.field private final _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 56
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 57
    if-nez p1, :cond_0

    new-array v0, p2, [B

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private _allocMore()V
    .locals 3

    .prologue
    const/high16 v0, 0x40000

    .line 230
    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastLen:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 235
    if-gez v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iput v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastLen:I

    .line 247
    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 249
    if-le v1, v0, :cond_1

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 255
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public append(I)V
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 87
    return-void
.end method

.method public appendThreeBytes(I)V
    .locals 3

    .prologue
    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 106
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public appendTwoBytes(I)V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public completeAndCoalesce(I)[B
    .locals 1

    .prologue
    .line 178
    iput p1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 179
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public finishCurrentSegment()[B
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public getCurrentSegment()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public getCurrentSegmentLength()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V

    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 80
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastLen:I

    .line 62
    iput v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 64
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 67
    :cond_0
    return-void
.end method

.method public resetAndGetFirstSegment()[B
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public setCurrentSegmentLength(I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    return-void
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastLen:I

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int v4, v0, v1

    .line 119
    if-nez v4, :cond_0

    .line 120
    sget-object v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->NO_BYTES:[B

    .line 140
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-array v3, v4, [B

    .line 126
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 127
    array-length v6, v0

    .line 128
    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    add-int v0, v1, v6

    move v1, v0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v0, v1

    .line 133
    if-eq v0, v4, :cond_2

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: total len assumed to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", copied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V

    :cond_3
    move-object v0, v3

    .line 140
    goto :goto_0
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 217
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->write([BII)V

    .line 195
    return-void
.end method

.method public write([BII)V
    .locals 3

    .prologue
    .line 201
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    array-length v0, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    sub-int/2addr v0, v1

    .line 202
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 203
    if-lez v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/2addr p2, v0

    .line 206
    iget v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 207
    sub-int/2addr p3, v0

    .line 209
    :cond_0
    if-gtz p3, :cond_1

    .line 212
    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    goto :goto_0
.end method
