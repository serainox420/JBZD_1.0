.class Lcom/commit451/youtubeextractor/c;
.super Ljava/lang/Object;
.source "YouTubeBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lokhttp3/HttpUrl;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private a(ILandroid/util/SparseArray;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 137
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 123
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 124
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 125
    aget-object v6, v5, v1

    .line 126
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2b

    const/16 v8, 0x20

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/commit451/youtubeextractor/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 37
    const-string v0, "url_encoded_fmt_stream_map"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "url_encoded_fmt_stream_map"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    const-string v0, "adaptive_fmts"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    const-string v0, "adaptive_fmts"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 49
    :goto_0
    if-eqz v0, :cond_8

    .line 51
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 52
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/commit451/youtubeextractor/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 56
    const-string v0, "type"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 57
    const-string v0, "url"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "sig"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    if-eqz v1, :cond_b

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "&signature="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 67
    :goto_2
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/commit451/youtubeextractor/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v9, "signature"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "itag"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    const-string v0, "itag"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 45
    :cond_1
    const-string v0, "adaptive_fmts"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "adaptive_fmts"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 74
    :cond_2
    const/16 v0, 0x24

    invoke-direct {p0, v0, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    const/16 v4, 0x16

    invoke-direct {p0, v4, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v8

    .line 77
    const/16 v4, 0x25

    invoke-direct {p0, v4, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v9

    .line 79
    if-nez v1, :cond_a

    .line 80
    const/16 v1, 0x11

    invoke-direct {p0, v1, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v1

    move-object v6, v1

    .line 83
    :goto_3
    if-nez v0, :cond_9

    .line 84
    const/16 v0, 0x2b

    invoke-direct {p0, v0, v2}, Lcom/commit451/youtubeextractor/c;->a(ILandroid/util/SparseArray;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 87
    :goto_4
    const-string v0, "iurlmq"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "iurlmq"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    .line 88
    :goto_5
    const-string v0, "iurlhq"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "iurlhq"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    .line 89
    :goto_6
    const-string v0, "iurl"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "iurl"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    .line 90
    :goto_7
    const-string v0, "iurlsd"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "iurlsd"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 93
    :cond_3
    if-nez v6, :cond_7

    if-nez v1, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    .line 94
    new-instance v0, Lcom/commit451/youtubeextractor/YouTubeExtractionException;

    const/16 v1, 0xc8

    const-string v2, "Nie znaleziono Video"

    invoke-direct {v0, v1, v2}, Lcom/commit451/youtubeextractor/YouTubeExtractionException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    move-object v2, v3

    .line 87
    goto :goto_5

    :cond_5
    move-object v4, v3

    .line 88
    goto :goto_6

    :cond_6
    move-object v5, v3

    .line 89
    goto :goto_7

    .line 97
    :cond_7
    new-instance v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    invoke-direct {v0}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;-><init>()V

    .line 98
    invoke-virtual {v0, v6}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->a(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->b(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v8}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->c(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v9}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->d(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->e(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->f(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v5}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->g(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v3}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;->h(Landroid/net/Uri;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    .line 97
    return-object v0

    .line 108
    :cond_8
    const/4 v1, -0x1

    .line 110
    :try_start_0
    const-string v0, "errorcode"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 113
    :goto_8
    new-instance v2, Lcom/commit451/youtubeextractor/YouTubeExtractionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "status"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nReason: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "reason"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nError code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "errorcode"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/commit451/youtubeextractor/YouTubeExtractionException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 111
    :catch_0
    move-exception v0

    goto :goto_8

    :cond_9
    move-object v1, v0

    goto/16 :goto_4

    :cond_a
    move-object v6, v1

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v3

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/commit451/youtubeextractor/c;->a(Lokhttp3/ResponseBody;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    return-object v0
.end method
