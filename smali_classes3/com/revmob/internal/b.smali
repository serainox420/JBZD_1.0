.class public final Lcom/revmob/internal/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Z

.field private d:Ljava/net/URL;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:Lcom/revmob/internal/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/revmob/internal/b;->e:Landroid/app/Activity;

    iput-object p4, p0, Lcom/revmob/internal/b;->g:Lcom/revmob/internal/a;

    new-instance v0, Lcom/revmob/a/a;

    invoke-direct {v0}, Lcom/revmob/a/a;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/revmob/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/b;->d:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "doInBackground1"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/revmob/internal/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "doInBackground2"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/revmob/internal/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "doInBackground3"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method private varargs c()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/revmob/internal/b;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/revmob/internal/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/revmob/internal/b;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "doInBackground"

    invoke-static {v0, v4, v1, v4, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/revmob/internal/b;->c:Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v4

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/b;->c:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/b;->b:Ljava/io/File;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/internal/b;->c:Z

    return v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/revmob/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/revmob/internal/b;->g:Lcom/revmob/internal/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/b;->g:Lcom/revmob/internal/a;

    invoke-interface {v0}, Lcom/revmob/internal/a;->a()V

    :cond_0
    return-void
.end method
