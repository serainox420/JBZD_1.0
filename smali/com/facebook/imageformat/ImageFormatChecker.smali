.class public Lcom/facebook/imageformat/ImageFormatChecker;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static sInstance:Lcom/facebook/imageformat/ImageFormatChecker;


# instance fields
.field private mCustomImageFormatCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultFormatChecker:Lcom/facebook/imageformat/ImageFormat$FormatChecker;

.field private mMaxHeaderLength:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-direct {v0}, Lcom/facebook/imageformat/DefaultImageFormatChecker;-><init>()V

    iput-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mDefaultFormatChecker:Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 39
    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->updateMaxHeaderLength()V

    .line 40
    return-void
.end method

.method public static getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->getInstance()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/ImageFormatChecker;->determineImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImageFormat(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 163
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 161
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 161
    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 160
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .prologue
    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/imageformat/ImageFormatChecker;
    .locals 2

    .prologue
    .line 116
    const-class v1, Lcom/facebook/imageformat/ImageFormatChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->sInstance:Lcom/facebook/imageformat/ImageFormatChecker;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/facebook/imageformat/ImageFormatChecker;

    invoke-direct {v0}, Lcom/facebook/imageformat/ImageFormatChecker;-><init>()V

    sput-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->sInstance:Lcom/facebook/imageformat/ImageFormatChecker;

    .line 119
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/ImageFormatChecker;->sInstance:Lcom/facebook/imageformat/ImageFormatChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static readHeaderFromStream(ILjava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    array-length v0, p2

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 102
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 107
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 107
    :cond_1
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    goto :goto_1
.end method

.method private updateMaxHeaderLength()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mDefaultFormatChecker:Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    invoke-interface {v0}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->getHeaderSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mMaxHeaderLength:I

    .line 70
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mCustomImageFormatCheckers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mCustomImageFormatCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 72
    iget v2, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mMaxHeaderLength:I

    invoke-interface {v0}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->getHeaderSize()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mMaxHeaderLength:I

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public determineImageFormat(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mMaxHeaderLength:I

    new-array v1, v0, [B

    .line 51
    iget v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mMaxHeaderLength:I

    invoke-static {v0, p1, v1}, Lcom/facebook/imageformat/ImageFormatChecker;->readHeaderFromStream(ILjava/io/InputStream;[B)I

    move-result v2

    .line 53
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mCustomImageFormatCheckers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mCustomImageFormatCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    sget-object v4, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v4, :cond_0

    .line 65
    :cond_1
    :goto_0
    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mDefaultFormatChecker:Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0
.end method

.method public setCustomImageFormatCheckers(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/imageformat/ImageFormatChecker;->mCustomImageFormatCheckers:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->updateMaxHeaderLength()V

    .line 46
    return-void
.end method
