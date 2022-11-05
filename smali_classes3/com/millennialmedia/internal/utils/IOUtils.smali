.class public Lcom/millennialmedia/internal/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/millennialmedia/internal/utils/IOUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static closeStream(Ljava/io/Closeable;)Z
    .locals 3

    .prologue
    .line 242
    if-eqz p0, :cond_0

    .line 244
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-object v1, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 129
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    sget-object v1, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to create bitmap from input stream"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    .line 91
    if-nez p0, :cond_1

    .line 92
    sget-object v1, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v2, "Unable to convert to string, input stream is null"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x1000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    :goto_2
    :try_start_2
    sget-object v3, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v4, "Error occurred when converting stream to string"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    if-eqz v2, :cond_0

    .line 115
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    .line 119
    sget-object v2, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v3, "Error closing input stream reader"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 114
    if-eqz v2, :cond_0

    .line 115
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 118
    :catch_2
    move-exception v1

    .line 119
    sget-object v2, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v3, "Error closing input stream reader"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 114
    :goto_3
    if-eqz v2, :cond_3

    .line 115
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 120
    :cond_3
    :goto_4
    throw v0

    .line 118
    :catch_3
    move-exception v1

    .line 119
    sget-object v2, Lcom/millennialmedia/internal/utils/IOUtils;->a:Ljava/lang/String;

    const-string v3, "Error closing input stream reader"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 113
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 110
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
    .locals 2

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url, file, and download listener are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$1;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/millennialmedia/internal/utils/IOUtils$1;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public static getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    :goto_0
    return-object v0

    .line 226
    :cond_0
    const-string v0, "\\.(?=[^\\.]+$)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 228
    array-length v2, v0

    if-le v2, v1, :cond_1

    aget-object v0, v0, v1

    :goto_1
    move v2, v1

    .line 229
    :goto_2
    const/16 v1, 0x3e8

    if-ge v2, v1, :cond_3

    .line 230
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    .line 232
    goto :goto_0

    .line 228
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 229
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 236
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 67
    :cond_0
    const-string p1, "UTF-8"

    goto :goto_0
.end method

.method public static read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    const/4 v3, 0x0

    .line 56
    new-array v0, v4, [B

    .line 59
    :goto_0
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 60
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public static read(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    invoke-static {p0, v0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 77
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 83
    :cond_0
    return-void

    .line 79
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1
    throw v1
.end method
