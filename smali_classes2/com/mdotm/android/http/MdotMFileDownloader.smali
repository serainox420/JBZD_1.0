.class public Lcom/mdotm/android/http/MdotMFileDownloader;
.super Ljava/lang/Object;
.source "MdotMFileDownloader.java"


# static fields
.field private static final HTTP_RESPONSE_OK:I = 0xc8

.field private static final HTTP_RESPONSE_OK1:I = 0xc9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    const-string v1, "connectivity"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resource url to download is = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMFileDownloader;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const/16 v2, 0x7530

    .line 32
    const/16 v3, 0x2710

    .line 36
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :goto_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    const/4 v2, 0x0

    .line 51
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 56
    :goto_2
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 57
    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    .line 61
    :cond_0
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 69
    :cond_1
    :goto_3
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 52
    :catch_2
    move-exception v3

    .line 54
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 62
    :catch_3
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    const-string v1, "writing stream to file"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    const/16 v2, 0xc00

    new-array v2, v2, [B

    .line 93
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 100
    const-string v1, "successfully finished writing"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    .line 113
    :goto_1
    return v0

    .line 94
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotfound exception while writting file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 107
    :catch_1
    move-exception v1

    .line 109
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException exception while writting file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
