.class Lcom/inmobi/re/container/IMWebView$a;
.super Landroid/os/AsyncTask;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3064
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3061
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->e:Ljava/lang/String;

    .line 3065
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$a;->a:Ljava/io/File;

    .line 3066
    iput-object p3, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    .line 3067
    iput-object p4, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    .line 3068
    invoke-static {p1}, Lcom/inmobi/re/container/IMWebView;->q(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3071
    :cond_0
    invoke-static {p1}, Lcom/inmobi/re/container/IMWebView;->q(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3077
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3078
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 3080
    :goto_0
    if-nez v0, :cond_1

    .line 3081
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->j:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3082
    const-string v0, "failure"

    .line 3212
    :goto_1
    return-object v0

    :cond_0
    move v0, v5

    .line 3078
    goto :goto_0

    .line 3085
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3086
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->i:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3087
    const-string v0, "failure"

    goto :goto_1

    .line 3090
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    const-string v1, "[A-Za-z0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3091
    :cond_3
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->c:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3092
    const-string v0, "failure"

    goto :goto_1

    .line 3095
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3096
    :cond_5
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->d:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3097
    const-string v0, "failure"

    goto :goto_1

    .line 3100
    :cond_6
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getAllowedContentType()Ljava/lang/String;

    move-result-object v0

    .line 3101
    const-string v1, "\\"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3104
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3105
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3110
    :goto_2
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getMaxSaveContentSize()I

    move-result v7

    .line 3113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3114
    new-instance v0, Ljava/net/URL;

    iget-object v6, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3117
    const-string v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3118
    const/16 v6, 0x1388

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    .line 3121
    const-string v6, "[InMobi]-[RE]-4.5.5"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentType_url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 3124
    :goto_3
    array-length v11, v1

    if-ge v6, v11, :cond_d

    .line 3125
    aget-object v11, v1, v6

    const/4 v12, 0x1

    aget-object v13, v1, v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3126
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v1, v4

    .line 3132
    :goto_4
    if-nez v1, :cond_9

    .line 3133
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->g:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3134
    const-string v0, "failure"
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto/16 :goto_1

    .line 3107
    :cond_7
    new-array v0, v4, [Ljava/lang/String;

    .line 3108
    aput-object v1, v0, v5

    move-object v1, v0

    goto :goto_2

    .line 3124
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3137
    :cond_9
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v4, v1

    .line 3139
    cmp-long v1, v4, v2

    if-ltz v1, :cond_a

    .line 3140
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content size: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "max size: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit16 v10, v7, 0x400

    mul-int/lit16 v10, v10, 0x400

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    mul-int/lit16 v1, v7, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v10, v1

    cmp-long v1, v4, v10

    if-lez v1, :cond_a

    .line 3144
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->h:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3145
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3149
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 3151
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$a;->a:Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 3155
    const/16 v0, 0x400

    new-array v6, v0, [B

    move-wide v0, v2

    .line 3159
    :goto_5
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_c

    .line 3160
    int-to-long v10, v2

    add-long/2addr v0, v10

    .line 3161
    mul-int/lit16 v3, v7, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v10, v3

    cmp-long v3, v0, v10

    if-lez v3, :cond_b

    .line 3162
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->h:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3163
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3165
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_5

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "SocketTimeoutException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->i:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3186
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3168
    :cond_c
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView$a;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3172
    const-string v3, "[InMobi]-[RE]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file path of video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3175
    const-string v4, "url"

    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3176
    const-string v4, "saved_url"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3177
    const-string v2, "size_in_bytes"

    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView$a;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3178
    const-string v2, "download_started_at"

    invoke-virtual {v3, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3179
    const-string v2, "download_ended_at"

    invoke-virtual {v3, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3181
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 3212
    const-string v0, "success"

    goto/16 :goto_1

    .line 3187
    :catch_1
    move-exception v0

    .line 3188
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->e:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3190
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3191
    :catch_2
    move-exception v0

    .line 3192
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "MalformedURLException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->d:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3194
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3195
    :catch_3
    move-exception v0

    .line 3196
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "ProtocolException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->i:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3198
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3199
    :catch_4
    move-exception v0

    .line 3200
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->a:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3202
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3203
    :catch_5
    move-exception v0

    .line 3204
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSONException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->a:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3206
    const-string v0, "failure"

    goto/16 :goto_1

    .line 3207
    :catch_6
    move-exception v0

    .line 3208
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Unknown Exception"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->a:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    .line 3210
    const-string v0, "failure"

    goto/16 :goto_1

    :cond_d
    move v1, v5

    goto/16 :goto_4
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3222
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3223
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraid.sendSaveContentResult(\"saveContent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'success\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 3226
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    if-eqz v0, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;->postSuccess()V

    .line 3248
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3249
    return-void

    .line 3230
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3232
    :try_start_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3233
    const-string v1, "reason"

    iget v2, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3235
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3237
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraid.sendSaveContentResult(\"saveContent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \'failure\', \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 3240
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$a;->f:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    iget v1, p0, Lcom/inmobi/re/container/IMWebView$a;->d:I

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;->postFailed(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3057
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 3217
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 3218
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3057
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView$a;->a(Ljava/lang/String;)V

    return-void
.end method
