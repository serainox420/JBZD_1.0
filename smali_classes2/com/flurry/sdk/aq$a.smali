.class final Lcom/flurry/sdk/aq$a;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/flurry/sdk/aq$a;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aq$a;)Z
    .locals 1

    .prologue
    .line 177
    .line 1185
    iget-boolean v0, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 177
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 194
    throw v0
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 204
    throw v0
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 214
    throw v0
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 224
    throw v0
.end method

.method public final write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aq$a;->a:Z

    .line 234
    throw v0
.end method
