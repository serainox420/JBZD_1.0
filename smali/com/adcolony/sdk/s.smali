.class Lcom/adcolony/sdk/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 127
    :goto_0
    return p2

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 311
    return-void
.end method

.method static a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 306
    return-void
.end method

.method static a(Lorg/json/JSONArray;Z)V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 301
    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;D)Z
    .locals 4

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 288
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_double(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_integer(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_string(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 3

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_array(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 262
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_object(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_boolean(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 88
    const-string v0, ""

    goto :goto_0
.end method

.method static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 101
    const-string v0, ""

    goto :goto_0
.end method

.method static b()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method static b(Lorg/json/JSONObject;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCJSON put_integer(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 329
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/adcolony/sdk/n;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "IOException in ADCJSON\'s load_object: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 336
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static d(Lorg/json/JSONArray;I)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 296
    return-void
.end method

.method static d(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 153
    :goto_0
    return-wide v0

    .line 149
    :catch_0
    move-exception v0

    .line 153
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 192
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method static h(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 317
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/n;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/adcolony/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "IOException in ADCJSON\'s save_object: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method
