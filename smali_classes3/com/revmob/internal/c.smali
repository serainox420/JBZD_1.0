.class public final Lcom/revmob/internal/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/revmob/internal/c;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/revmob/internal/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    invoke-direct {p0}, Lcom/revmob/internal/c;->k()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/revmob/internal/c;->k()V

    iput-object p1, p0, Lcom/revmob/internal/c;->d:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget v0, Lcom/revmob/internal/c;->a:I

    invoke-virtual {p0, v0}, Lcom/revmob/internal/c;->a(I)V

    iget-object v0, p0, Lcom/revmob/internal/c;->d:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void
.end method

.method public static a([III)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v1, p0, v1

    aget v2, p0, v0

    if-gt v2, p2, :cond_0

    if-le v1, p1, :cond_1

    :cond_0
    int-to-float v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/internal/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v2, ""

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [C

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x3ff

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    :goto_2
    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "encodedResponseBody"

    invoke-static {v2, v1, v3, v1, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Read error."

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/revmob/internal/c;->d:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP/1.1 200 OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v2, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/revmob/internal/j;->b:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on requesting path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is the device connected to the internet?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest1"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest2"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest3"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest4"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Server took too long to respond."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest5"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest6"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on requesting path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Did the device lost its connection?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/revmob/internal/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/c;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/revmob/internal/c;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/internal/c;->k:Z

    return-void
.end method

.method public static a(ZLandroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/internal/c;->l:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean p0, Lcom/revmob/internal/c;->l:Z

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)[I
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    aput v0, v3, v7

    return-object v3

    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x0

    sget-object v4, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getImageSize"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/internal/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "getQueryStringField"

    invoke-static {v2, v0, v3, p0, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/revmob/internal/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequestDealingWithSSLErrors1"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    const-string v5, "http://"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    invoke-direct {p0, p1}, Lcom/revmob/internal/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequestDealingWithSSLErrors2"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Problem with SSL. What is the version of your Android?"

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequestDealingWithSSLErrors3"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "https://s3.amazonaws.com/www.revmob.com/Revmob_i_agree_terms.txt"

    sput-object v0, Lcom/revmob/internal/c;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/revmob/internal/c;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/internal/c;->m:Z

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "default"

    sput-object v0, Lcom/revmob/internal/c;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/revmob/internal/c;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/internal/c;->n:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->k:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/internal/c;->o:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->l:Z

    return v0
.end method

.method public static e(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/internal/c;->p:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->m:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->n:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->o:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/internal/c;->p:Z

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/internal/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/internal/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/revmob/internal/c;->i:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending POST to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    const-string v1, "fetch_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/internal/c;->i:Ljava/lang/Boolean;

    const-string v1, "redirect=1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    :cond_1
    iget-object v1, p0, Lcom/revmob/internal/c;->d:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.useragent"

    sget-object v3, Lcom/revmob/internal/c;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v3, "http.protocol.handle-redirects"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    sget-object v2, Lcom/revmob/internal/l;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Content-type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "x-revmob-crypt"

    sget-object v3, Lcom/revmob/internal/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/revmob/internal/l;

    invoke-direct {v2}, Lcom/revmob/internal/l;-><init>()V

    invoke-static {p2}, Lcom/revmob/internal/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v2, "User-Agent"

    sget-object v3, Lcom/revmob/internal/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v4, v2

    invoke-direct {p0, v1}, Lcom/revmob/internal/c;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "x-revmob-campaign"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    :cond_2
    const-string v1, "x-revmob-fetch"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/revmob/internal/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v1, "id"

    iget-object v7, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "fetch"

    invoke-virtual {v6, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_2
    :try_start_2
    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    iget-object v1, p0, Lcom/revmob/internal/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    const-string v6, "link"

    invoke-static {v1, v6}, Lcom/revmob/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_8

    const-string v1, "location"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v1}, Lcom/revmob/internal/j;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_7
    sput-object v1, Lcom/revmob/internal/j;->a:Ljava/lang/String;

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    const-string v1, "click.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "click_stub.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_a
    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :goto_4
    const/4 v2, 0x0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "post2"

    invoke-static {v1, v2, v3, p1, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Encoding error."

    invoke-static {v2, v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v7, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v8, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v9, "post1"

    invoke-static {v1, v7, v8, p1, v9}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_5
    const/4 v2, 0x0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "post3"

    invoke-static {v1, v2, v3, p1, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Unknown error"

    invoke-static {v2, v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/revmob/internal/c;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sub-double v4, v0, v4

    iget-object v0, p0, Lcom/revmob/internal/c;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "fetch_id"

    invoke-static {p1, v0}, Lcom/revmob/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/revmob/internal/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    invoke-static/range {v0 .. v5}, Lcom/revmob/a/e;->a(Ljava/lang/String;ZDD)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_d
    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_6
    const/4 v2, 0x0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "post4"

    invoke-static {v1, v2, v3, p1, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Failed to consume content"

    invoke-static {v2, v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_e
    const-string v1, "URL == null or URL.length() > 0"

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_4
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/internal/c;->d:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending GET to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/revmob/internal/c;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "get"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Error on GET. Trying to open on browser"

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
