.class Lcom/amazon/device/ads/FileInputHandler;
.super Lcom/amazon/device/ads/FileHandler;
.source "FileInputHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private inputStream:Ljava/io/InputStream;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private checkReadable()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not read from the file because no file has been opened yet. Please set the file, then call open() before attempting to read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->closeCloseables()V

    .line 71
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    .line 72
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    .line 73
    return-void
.end method

.method protected getCloseableReaderWriter()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method protected getCloseableStream()Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "A file must be set before it can be opened."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 62
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The file is already open."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    .line 61
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public readAllBytesFromFileAndClose()[B
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->open()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not open the file for reading"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->readBytes()[B

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileInputHandler;->close()V

    goto :goto_0
.end method

.method public readBytes()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/amazon/device/ads/FileInputHandler;->checkReadable()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    move v0, v2

    .line 106
    :cond_0
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 108
    array-length v3, v1

    sub-int/2addr v3, v0

    .line 109
    iget-object v4, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 110
    if-lez v3, :cond_0

    .line 111
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 118
    :goto_1
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Error reading bytes from input file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/amazon/device/ads/FileInputHandler;->checkReadable()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Error reading line from file."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method
