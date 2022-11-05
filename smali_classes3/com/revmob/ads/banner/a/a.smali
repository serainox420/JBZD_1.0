.class public final Lcom/revmob/ads/banner/a/a;
.super Lcom/revmob/ads/a/b;


# instance fields
.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/a/b;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V

    iput-object p3, p0, Lcom/revmob/ads/banner/a/a;->d:Landroid/app/Activity;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Lcom/revmob/a/a;

    invoke-direct {v0}, Lcom/revmob/a/a;-><init>()V

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/revmob/ads/banner/a/a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    :try_start_2
    invoke-static {p1}, Lcom/revmob/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v3, v0

    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    iget-object v3, v3, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v4, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "downloadFileBanner2"

    invoke-static {v1, v3, v4, v2, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catch_1
    move-exception v3

    :try_start_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    iget-object v5, v5, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v6, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/4 v7, 0x0

    const-string v8, "downloadFileBanner1"

    invoke-static {v3, v5, v6, v7, v8}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v0

    goto :goto_0

    :cond_2
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 24

    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "banners"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/revmob/ads/banner/a/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v9}, Lcom/revmob/ads/banner/a/a;->c(Lorg/json/JSONObject;)Z

    move-result v16

    const-string v4, "links"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONObject;)Z

    move-result v8

    invoke-static/range {v18 .. v18}, Lcom/revmob/ads/banner/a/a;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Lcom/revmob/ads/banner/a/a;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "html"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "dsp_url"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "dsp_html"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "imageSize"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "refreshTime"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "refreshTime"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x2

    new-array v14, v4, [I

    const/4 v4, 0x0

    const/16 v17, 0x0

    aput v17, v14, v4

    const/4 v4, 0x1

    const/16 v17, 0x0

    aput v17, v14, v4

    if-eqz v13, :cond_2

    const/4 v4, 0x0

    :try_start_0
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    const/4 v13, 0x0

    const/16 v17, 0x0

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v14, v13

    const/4 v13, 0x1

    const/16 v17, 0x1

    aget-object v4, v4, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v14, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v13, Lcom/revmob/ads/a/f;

    invoke-direct {v13}, Lcom/revmob/ads/a/f;-><init>()V

    new-instance v14, Lcom/revmob/ads/a/e;

    invoke-direct {v14}, Lcom/revmob/ads/a/e;-><init>()V

    :try_start_1
    const-string v4, "animation"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v4, "duration"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/revmob/ads/a/d;->a(J)V

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/revmob/ads/a/d;->a(J)V

    const-string v4, "show"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/revmob/ads/a/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v4, "x"

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v13, 0x0

    const/16 v17, 0x0

    aput v17, v14, v13

    const/4 v13, 0x1

    const/16 v17, 0x0

    aput v17, v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    iget-object v13, v13, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v14, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/16 v17, 0x0

    const-string v19, "handleResponse1"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v13, v14, v0, v1}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_3
    const-string v4, "close"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/4 v4, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/revmob/ads/a/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    move-exception v4

    :cond_5
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v17}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    :try_start_4
    const-string v4, "sound"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "on_show"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v9, "on_click"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    if-nez v11, :cond_6

    if-eqz v12, :cond_b

    :cond_6
    const-string v4, "Banner DSP"

    invoke-static {v4}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    if-nez v10, :cond_9

    if-nez v9, :cond_9

    :cond_8
    if-nez v11, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    new-instance v4, Lcom/revmob/ads/banner/a/b;

    invoke-direct/range {v4 .. v17}, Lcom/revmob/ads/banner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/ads/a/d;Lcom/revmob/ads/a/d;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    iget-object v5, v5, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/revmob/ads/banner/a/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    iget-object v5, v5, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/revmob/ads/banner/a/b;->f:Ljava/lang/String;

    iget-object v5, v4, Lcom/revmob/ads/banner/a/b;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v6, v6, v20

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/revmob/a/e;->a(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/revmob/ads/banner/a/a;->b:Lcom/revmob/ads/a/a;

    invoke-interface {v5, v4}, Lcom/revmob/ads/a/a;->updateWithData(Lcom/revmob/client/a;)V

    :cond_a
    return-void

    :cond_b
    if-nez v10, :cond_7

    const-string v4, "image"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/revmob/ads/banner/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/revmob/ads/banner/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/revmob/internal/c;->a(Ljava/io/File;)[I

    move-result-object v19

    invoke-static {}, Lcom/revmob/a/a;->a()I

    move-result v22

    invoke-static {}, Lcom/revmob/a/a;->b()I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/revmob/internal/c;->a([III)I

    move-result v19

    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v9

    goto :goto_5

    :catch_2
    move-exception v4

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/revmob/ads/banner/a/a;->c:Lcom/revmob/internal/c;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v22, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    const-string v23, "handleResponse4"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-static {v4, v0, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_3
    move-exception v4

    goto/16 :goto_4
.end method
