.class Lcom/applovin/impl/sdk/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)I
    .locals 2

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    const/16 v0, -0x66

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authentication challenge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x191

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_3

    const/16 v0, -0x68

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-gez p3, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->o:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-gez p3, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->q:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0

    :cond_1
    move v1, p3

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received from from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0xcc

    if-eq p2, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p4, v0, p2}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error received from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Lcom/applovin/impl/sdk/p;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p6}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;ILcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "POST"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Ljava/lang/String;IZLcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V
    .locals 13

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No endpoint specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No method specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p6, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No callback specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "ConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested postback submission to non HTTP endpoint "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; skipping..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x384

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/applovin/impl/sdk/p;->a(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->aZ:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "ConnectionManager"

    const-string v4, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v8, "ConnectionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " request to \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-direct {p0, v4, p2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    if-eqz p4, :cond_4

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v8, "ConnectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request to \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v8, v11}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v8, "application/json; charset=utf-8"

    invoke-virtual {v10, v3, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v10, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "UTF8"

    invoke-direct {v8, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-lez v5, :cond_6

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    if-eqz p5, :cond_5

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    move-object/from16 v0, p6

    invoke-direct {p0, v3, v8, v4, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/p;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v10}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v5}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;I)V

    move-object v2, v9

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Lcom/applovin/impl/sdk/p;->a(I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v9

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v9

    :goto_3
    if-eqz p5, :cond_8

    const/16 v3, -0x385

    :try_start_5
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/applovin/impl/sdk/p;->a(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v9, v2

    :goto_4
    if-nez v5, :cond_7

    :try_start_6
    invoke-direct {p0, v8}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/Throwable;)I

    move-result v5

    :cond_7
    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Lcom/applovin/impl/sdk/p;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v10}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    :cond_8
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v8, -0x385

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v8}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v9, v2

    move-object v2, v3

    :goto_5
    invoke-static {v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v10}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    throw v2

    :catchall_1
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v8

    move-object v10, v2

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_3

    :cond_9
    move-object v4, p1

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "POST"

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method
