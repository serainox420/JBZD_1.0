.class public Lcom/intentsoftware/addapptr/b/d;
.super Landroid/os/AsyncTask;
.source "PostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final url:Ljava/lang/String;

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/intentsoftware/addapptr/b/d;->url:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/b/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-void
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 24
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/d;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    .line 26
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 27
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 35
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 36
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "Post request sent successfully"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post request failed, response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/b/d;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/b/d;->sendRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/d;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method
