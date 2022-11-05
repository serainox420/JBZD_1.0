.class public Lcom/smaato/soma/internal/c/i;
.super Ljava/lang/Object;
.source "ReceivedBannerParser.java"

# interfaces
.implements Lcom/smaato/soma/internal/c/l;


# instance fields
.field a:Lcom/smaato/soma/internal/b;

.field b:Lcom/smaato/soma/internal/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/smaato/soma/internal/b;

    invoke-direct {v0}, Lcom/smaato/soma/internal/b;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/internal/c/i;->b:Lcom/smaato/soma/internal/d/c;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 591
    .line 592
    const/4 v1, 0x0

    .line 595
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 616
    :goto_1
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "SOMA_PARSER"

    const-string v3, "Error converting result"

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 622
    :goto_2
    return-object v0

    .line 603
    :cond_0
    if-eqz p1, :cond_1

    .line 604
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 606
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 610
    :try_start_2
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA_PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON string=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 615
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lcom/smaato/soma/internal/d/c;Z)Lcom/smaato/soma/p;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 147
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 149
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/smaato/soma/internal/c/i;->a()V

    .line 160
    if-eqz p3, :cond_9

    .line 161
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v5, v0

    move-object v0, v1

    .line 171
    :goto_0
    if-eqz v0, :cond_c

    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-lez v1, :cond_c

    .line 178
    :try_start_1
    const-string v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    iget-object v2, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v2, v1}, Lcom/smaato/soma/internal/b;->b(Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string v1, "passback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-direct {p0, v1}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smaato/soma/internal/b;->a(Ljava/lang/String;)V

    .line 190
    :cond_1
    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 195
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 196
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 198
    new-instance v2, Lcom/smaato/soma/mediation/o;

    invoke-direct {v2}, Lcom/smaato/soma/mediation/o;-><init>()V

    .line 200
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 203
    if-eqz v4, :cond_8

    .line 205
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->c(Ljava/lang/String;)V

    .line 209
    :cond_2
    const-string v5, "appid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    const-string v5, "appid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->g(Ljava/lang/String;)V

    .line 214
    :cond_3
    const-string v5, "adunitid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 215
    const-string v5, "adunitid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->f(Ljava/lang/String;)V

    .line 216
    :cond_4
    const-string v5, "impression"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->d(Ljava/lang/String;)V

    .line 218
    const-string v5, "clickurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 219
    const-string v5, "clickurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->e(Ljava/lang/String;)V

    .line 221
    :cond_5
    const-string v5, "classname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 222
    const-string v5, "classname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->a(Ljava/lang/String;)V

    .line 224
    :cond_6
    const-string v5, "methodname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 225
    const-string v5, "methodname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->b(Ljava/lang/String;)V

    .line 227
    :cond_7
    const-string v5, "priority"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->a(I)V

    .line 228
    const-string v5, "height"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->c(I)V

    .line 229
    const-string v5, "width"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/smaato/soma/mediation/o;->b(I)V

    .line 232
    const-string v5, "customdata"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 233
    const-string v5, "customdata"

    .line 235
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v4}, Lcom/smaato/soma/internal/c/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 233
    invoke-virtual {v2, v4}, Lcom/smaato/soma/mediation/o;->a(Ljava/util/Map;)V

    .line 240
    :cond_8
    invoke-virtual {v2}, Lcom/smaato/soma/mediation/o;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 163
    :cond_9
    :try_start_2
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_3b

    .line 165
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_0

    .line 242
    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Ljava/util/TreeMap;)V

    .line 243
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/AdType;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 572
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    :goto_3
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 566
    :catch_1
    move-exception v0

    .line 567
    throw v0

    .line 252
    :cond_c
    if-eqz v0, :cond_22

    .line 257
    :try_start_5
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 258
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_d

    const-string v2, "CLIENTSIDEMEDIATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 261
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 262
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v1, "no Ad available"

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    goto :goto_3

    .line 266
    :cond_d
    iget-object v2, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-static {v1}, Lcom/smaato/soma/AdType;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/AdType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/AdType;)V

    .line 272
    :cond_e
    const-string v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 273
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "sessionid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->b(Ljava/lang/String;)V

    .line 276
    :cond_f
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 277
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 280
    :cond_10
    const-string v1, "mediadata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 281
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "mediadata"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->c(Ljava/lang/String;)V

    .line 284
    :cond_11
    const-string v1, "adtext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 285
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "adtext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->e(Ljava/lang/String;)V

    .line 288
    :cond_12
    const-string v1, "link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 289
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "link"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->f(Ljava/lang/String;)V

    .line 292
    :cond_13
    const-string v1, "beacons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 296
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 298
    :cond_14
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->a(Ljava/util/List;)V

    .line 302
    :cond_15
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 303
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smaato/soma/ErrorCode;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 306
    :cond_16
    const-string v1, "errormessage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 307
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "errormessage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V

    .line 310
    :cond_17
    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 311
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->d(Ljava/lang/String;)V

    .line 318
    :cond_18
    const-string v1, "SNAST"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_21

    .line 321
    new-instance v2, Lcom/smaato/soma/internal/b/a;

    invoke-direct {v2}, Lcom/smaato/soma/internal/b/a;-><init>()V

    .line 323
    const-string v0, "adtitle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 324
    const-string v0, "adtitle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->a(Ljava/lang/String;)V

    .line 327
    :cond_19
    const-string v0, "adtext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 328
    const-string v0, "adtext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->b(Ljava/lang/String;)V

    .line 331
    :cond_1a
    const-string v0, "iconimage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 332
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 333
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 334
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->c(Ljava/lang/String;)V

    .line 338
    :cond_1b
    const-string v0, "mainimage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 340
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 341
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->d(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->g(Ljava/lang/String;)V

    .line 346
    :cond_1c
    const-string v0, "clickurl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 347
    const-string v0, "clickurl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->e(Ljava/lang/String;)V

    .line 352
    :cond_1d
    const-string v0, "starrating"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 353
    const-string v0, "starrating"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->a(F)V

    .line 356
    :cond_1e
    const-string v0, "ctatext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/c/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 357
    const-string v0, "ctatext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->f(Ljava/lang/String;)V

    .line 360
    :cond_1f
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 361
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/b/a;->a(Ljava/util/Vector;)V

    .line 363
    :cond_20
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v0, v2}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/internal/b/a;)V

    .line 364
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/AdType;)V

    .line 368
    :cond_21
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    goto/16 :goto_3

    .line 372
    :cond_22
    if-eqz v5, :cond_38

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 373
    if-nez p2, :cond_23

    .line 374
    new-instance p2, Lcom/smaato/soma/internal/d/c;

    invoke-direct {p2}, Lcom/smaato/soma/internal/d/c;-><init>()V

    .line 376
    :cond_23
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 379
    const-string v0, "MediaFile"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 380
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_27

    .line 381
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move v1, v3

    .line 382
    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 383
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 384
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 385
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 386
    const-string v7, "type"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 387
    const-string v8, "video/mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "video/3gpp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "video/m4v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "video/mov"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v7

    if-eqz v7, :cond_25

    .line 389
    :cond_24
    :try_start_6
    const-string v7, "bitrate"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 392
    :goto_6
    :try_start_7
    invoke-direct {p0, v6}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->a(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v6, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v6}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 382
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 397
    :cond_26
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 398
    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->a(Ljava/lang/String;)V

    .line 400
    :cond_27
    const-string v0, "ClickThrough"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_28

    .line 402
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->d(Ljava/lang/String;)V

    .line 406
    :cond_28
    const-string v0, "ClickTracking"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 407
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2a

    move v1, v3

    .line 408
    :goto_7
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2a

    .line 409
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 410
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 411
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->e(Ljava/lang/String;)V

    .line 408
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 419
    :cond_2a
    const-string v0, "Duration"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_2b

    .line 421
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 422
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 423
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->b(Ljava/lang/String;)V

    .line 428
    :cond_2b
    const-string v0, "Tracking"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 429
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2d

    move v1, v3

    .line 430
    :goto_8
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 431
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 432
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 433
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    const-string v6, "event"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {p2, v0, v4}, Lcom/smaato/soma/internal/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 441
    :cond_2d
    const-string v0, "Impression"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 442
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2f

    move v1, v3

    .line 443
    :goto_9
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 444
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 445
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 446
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p2, v0}, Lcom/smaato/soma/internal/d/c;->f(Ljava/lang/String;)V

    .line 443
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 453
    :cond_2f
    const-string v0, "Companion"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 454
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_35

    move v4, v3

    .line 455
    :goto_a
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_35

    .line 456
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 457
    const-string v1, "width"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 458
    const-string v2, "height"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 459
    new-instance v8, Lcom/smaato/soma/internal/d/a;

    invoke-direct {v8}, Lcom/smaato/soma/internal/d/a;-><init>()V

    .line 460
    invoke-virtual {v8, v1}, Lcom/smaato/soma/internal/d/a;->a(I)V

    .line 461
    invoke-virtual {v8, v2}, Lcom/smaato/soma/internal/d/a;->b(I)V

    .line 462
    const-string v1, "StaticResource"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 463
    const-string v2, "HTMLResource"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 464
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_32

    .line 465
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 466
    const-string v2, "creativeType"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "image/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 467
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v8, v1}, Lcom/smaato/soma/internal/d/a;->a(Ljava/lang/String;)V

    .line 477
    :cond_30
    :goto_b
    const-string v1, "Tracking"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 478
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_33

    move v2, v3

    .line 479
    :goto_c
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_33

    .line 480
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 481
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_31

    .line 482
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {v8}, Lcom/smaato/soma/internal/d/a;->d()Ljava/util/Vector;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 470
    :cond_32
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_30

    .line 471
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 472
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v8, v1}, Lcom/smaato/soma/internal/d/a;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_b

    .line 568
    :catch_2
    move-exception v0

    .line 569
    new-instance v0, Lcom/smaato/soma/exception/ParserException;

    const-string v1, "Error during the XML parsing."

    sget-object v2, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/exception/ParserException;-><init>(Ljava/lang/String;Lcom/smaato/soma/ErrorCode;)V

    throw v0

    .line 489
    :cond_33
    :try_start_8
    const-string v1, "CompanionClickThrough"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 490
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_34

    .line 491
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/smaato/soma/internal/d/a;->b(Ljava/lang/String;)V

    .line 494
    :cond_34
    invoke-virtual {p2, v8}, Lcom/smaato/soma/internal/d/c;->a(Lcom/smaato/soma/internal/d/a;)V

    .line 455
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_a

    .line 499
    :cond_35
    const-string v0, "Wrapper"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 500
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_37

    .line 501
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 502
    const-string v1, "VASTAdTagURI"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 503
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 508
    :try_start_9
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/f;->d()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_36

    .line 509
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 514
    :goto_d
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 515
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 516
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 517
    const-string v1, "User-Agent"

    .line 518
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 521
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 523
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/smaato/soma/internal/c/i;->a(Ljava/io/InputStream;Lcom/smaato/soma/internal/d/c;Z)Lcom/smaato/soma/p;

    move-result-object v0

    goto/16 :goto_3

    .line 512
    :cond_36
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/f;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_d

    .line 524
    :catch_3
    move-exception v0

    .line 530
    :cond_37
    :try_start_a
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v0, p2}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/internal/d/c;)V

    .line 531
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/AdType;)V

    goto/16 :goto_2

    .line 534
    :cond_38
    if-eqz v5, :cond_3a

    if-nez v0, :cond_3a

    .line 538
    const-string v0, "code"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_39

    .line 540
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 541
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 542
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-static {v0}, Lcom/smaato/soma/ErrorCode;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/ErrorCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 548
    :cond_39
    const-string v0, "desc"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 549
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_b

    .line 550
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 551
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 552
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 559
    :cond_3a
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_PARSER"

    const-string v2, "Error during the XML parsing. Can\'t find the response tag."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 563
    new-instance v0, Lcom/smaato/soma/exception/ParserException;

    const-string v1, "Error during the XML parsing. Can\'t find the response tag."

    sget-object v2, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/exception/ParserException;-><init>(Ljava/lang/String;Lcom/smaato/soma/ErrorCode;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 391
    :catch_4
    move-exception v0

    goto/16 :goto_6

    :cond_3b
    move-object v5, v0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/internal/b/a;)V

    .line 124
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->UNDEFINED:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 126
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 128
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Ljava/util/TreeMap;)V

    .line 130
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 131
    iget-object v0, p0, Lcom/smaato/soma/internal/c/i;->a:Lcom/smaato/soma/internal/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 628
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
