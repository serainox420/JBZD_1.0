.class Lcom/adcolony/sdk/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "logEvent.ymf"

.field private static final f:Ljava/lang/String; = "type"

.field private static final g:Ljava/lang/String; = "time"

.field private static final h:Ljava/lang/String; = "client_time"

.field private static final i:Ljava/lang/String; = "nonce"

.field private static final j:Ljava/lang/String; = "data"

.field private static final k:Ljava/lang/String; = "server_time_valid"

.field private static final l:Ljava/lang/String; = "meta"


# instance fields
.field a:I

.field c:I

.field d:Z

.field e:Ljava/util/Map;
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


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/adcolony/sdk/cf;->c:I

    .line 27
    iput-boolean v0, p0, Lcom/adcolony/sdk/cf;->d:Z

    .line 28
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cf;->e:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "logEvent.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    .line 184
    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 187
    :cond_0
    return-object v0
.end method

.method a(J)Ljava/util/TreeMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    :try_start_0
    const-string v1, "logEvent.ymf"

    invoke-static {v1}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    .line 196
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 197
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 200
    const/4 v0, 0x0

    move v3, v0

    .line 201
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    int-to-long v6, v1

    cmp-long v5, v6, p1

    if-gtz v5, :cond_1

    .line 206
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/bm;->x()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v0, v3, 0x1

    .line 209
    iput v1, p0, Lcom/adcolony/sdk/cf;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    .line 213
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    :goto_1
    invoke-direct {p0}, Lcom/adcolony/sdk/cf;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception in getLogMessagesWithLastMessageId exc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    :cond_0
    :goto_2
    return-object v0

    .line 215
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/adcolony/sdk/cf;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceData is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/cf$1;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adcolony/sdk/cf$1;-><init>(Lcom/adcolony/sdk/cf;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 239
    :try_start_0
    const-string v0, "logEvent.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 240
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 241
    invoke-direct {p0}, Lcom/adcolony/sdk/cf;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMsgsUpToMsgId lastMessageId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 243
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 247
    int-to-long v4, v1

    cmp-long v1, v4, p1

    if-gtz v1, :cond_0

    .line 248
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 249
    invoke-direct {p0}, Lcom/adcolony/sdk/cf;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    const-string v3, "Caught exception in PersistentLogger"

    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;Z)V

    .line 261
    :cond_1
    :goto_1
    return-void

    .line 252
    :cond_2
    :try_start_1
    const-string v0, "logEvent.ymf"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/adcolony/sdk/cf;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/cf;->a:I

    .line 255
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cf;->a:I

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    if-nez p2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/adcolony/sdk/cf;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceData is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/cf$2;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adcolony/sdk/cf$2;-><init>(Lcom/adcolony/sdk/cf;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "logEvent.ymf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 269
    :goto_0
    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 153
    const-string v0, "sdkVersion"

    const-string v1, "3.0.7"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "appVersion"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/adcolony/sdk/co;->i()Ljava/lang/String;

    move-result-object v2

    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Lcom/adcolony/sdk/co;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-static {}, Lcom/adcolony/sdk/co;->j()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    const-string v5, "type"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v5, "time"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "client_time"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "nonce"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "data"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "server_time_valid"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/adcolony/sdk/ci;->l()Ljava/util/HashMap;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 175
    const-string v0, "meta"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 177
    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method c()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/adcolony/sdk/cf;->b()Z

    .line 275
    return-void
.end method

.method d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/cf$3;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p2}, Lcom/adcolony/sdk/cf$3;-><init>(Lcom/adcolony/sdk/cf;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V

    goto :goto_0
.end method
