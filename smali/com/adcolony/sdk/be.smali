.class Lcom/adcolony/sdk/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/be$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "catalog_splash"

.field static final b:Ljava/lang/String; = "catalog_close_button"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "asset_signatures.bin"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->c:Ljava/lang/String;

    .line 25
    const-string v0, "assets"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->d:Ljava/lang/String;

    .line 26
    const-string v0, "version"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->e:Ljava/lang/String;

    .line 27
    const-string v0, "1"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->f:Ljava/lang/String;

    .line 29
    const-string v0, "md5"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->g:Ljava/lang/String;

    .line 30
    const-string v0, "data"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->h:Ljava/lang/String;

    .line 31
    const-string v0, "key"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->i:Ljava/lang/String;

    .line 32
    const-string v0, "scale"

    iput-object v0, p0, Lcom/adcolony/sdk/be;->j:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adcolony/sdk/be;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/be;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v1, "version"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v1, "assets"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/adcolony/sdk/be;->f()V

    .line 80
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/be$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/be$1;-><init>(Lcom/adcolony/sdk/be;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/be$4;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/be$4;-><init>(Lcom/adcolony/sdk/be;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 240
    return-void
.end method

.method b(Ljava/lang/String;)Lcom/adcolony/sdk/be$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v1, "assets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 188
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 190
    new-instance v1, Lcom/adcolony/sdk/be$a;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/be$a;-><init>(Lcom/adcolony/sdk/be;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 195
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    .line 193
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 195
    goto :goto_0
.end method

.method b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asset_signatures.bin"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    .line 147
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/be;->f()V

    .line 153
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {p0}, Lcom/adcolony/sdk/be;->a()V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asset_signatures.bin"

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 165
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-direct {p0}, Lcom/adcolony/sdk/be;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v2, "assets"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 203
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    move v0, v1

    .line 208
    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/be$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/be$2;-><init>(Lcom/adcolony/sdk/be;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 182
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/be$3;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/be$3;-><init>(Lcom/adcolony/sdk/be;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 222
    return-void
.end method

.method e()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 245
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v1, "assets"

    .line 249
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/be;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No signatures found."

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v2

    .line 270
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/be;->k:Ljava/util/Map;

    const-string v1, "assets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 256
    const-string v1, "key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    const-string v4, "md5"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :try_start_1
    const-string v5, "key"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "md5"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_2
    invoke-direct {p0}, Lcom/adcolony/sdk/be;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON error->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    .line 270
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 268
    goto :goto_0
.end method

.method f()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/be;->l:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/be$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/be$5;-><init>(Lcom/adcolony/sdk/be;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 293
    return-void
.end method
