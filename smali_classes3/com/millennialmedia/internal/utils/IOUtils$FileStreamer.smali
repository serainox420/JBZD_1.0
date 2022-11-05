.class public Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileStreamer"
.end annotation


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    .line 164
    return-void
.end method


# virtual methods
.method public streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 4

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 171
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    invoke-static {p1, v1}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 173
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    iput-object v0, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 175
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to create file from input stream"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    goto :goto_1
.end method
