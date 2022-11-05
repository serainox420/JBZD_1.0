.class public final Lcom/flurry/sdk/ep;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ep$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/flurry/sdk/eq;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/ep;->d:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/flurry/sdk/ep;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v0, v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    .line 132
    return-void
.end method

.method private d()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 112
    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v3, v0, [B

    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/ep;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, [B

    .line 117
    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/ku$a;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ep$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/ep$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .line 1189
    invoke-static {p1}, Lcom/flurry/sdk/ef;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ep;->d:Ljava/lang/String;

    .line 2135
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ep;->g:Ljava/util/List;

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2138
    const-string v1, "Content-Type: multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2142
    if-eqz v0, :cond_0

    .line 2143
    const-string v4, "data"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2144
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v5, v5, [B

    .line 2152
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2157
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 2161
    const-string v6, "--"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\"; filename=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\"\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    const-string v1, "Content-Type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ep;->a(Ljava/lang/StringBuilder;)V

    .line 3124
    iget-object v0, p0, Lcom/flurry/sdk/ep;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3125
    iget-object v0, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v1, v5

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 2167
    goto/16 :goto_0

    .line 2156
    :catchall_0
    move-exception v0

    .line 2157
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const/4 v1, -0x1

    const-string v2, "Error while creating payload"

    invoke-interface {p3, v1, v2}, Lcom/flurry/sdk/ep$a;->a(ILjava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :goto_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    const-string v3, "data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ep;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2168
    :cond_2
    :try_start_3
    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\"\r\n\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2174
    :cond_3
    const-string v0, "--"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ep;->a(Ljava/lang/StringBuilder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 71
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/ed;->c()Lcom/flurry/sdk/el;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/flurry/sdk/ks;

    invoke-direct {v1}, Lcom/flurry/sdk/ks;-><init>()V

    .line 3185
    iget-object v2, p0, Lcom/flurry/sdk/ep;->d:Ljava/lang/String;

    .line 4136
    iput-object v2, v1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 4180
    sget-object v2, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 5144
    iput-object v2, v1, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ep;->a(Lcom/flurry/sdk/ks;Lcom/flurry/sdk/el;)V

    .line 79
    new-instance v1, Lcom/flurry/sdk/ks;

    invoke-direct {v1}, Lcom/flurry/sdk/ks;-><init>()V

    .line 5185
    iget-object v0, p0, Lcom/flurry/sdk/ep;->d:Ljava/lang/String;

    .line 6136
    iput-object v0, v1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 6180
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 7144
    iput-object v0, v1, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 82
    invoke-direct {p0}, Lcom/flurry/sdk/ep;->d()[B

    move-result-object v0

    .line 8037
    iput-object v0, v1, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    .line 9027
    const/16 v0, 0x4e20

    iput v0, v1, Lcom/flurry/sdk/mb;->w:I

    .line 84
    const-string v2, "Authorization"

    .line 9075
    iget-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    .line 84
    const-string v3, "Authorization"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data, boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ep;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "Content-Length"

    iget-object v2, p0, Lcom/flurry/sdk/ep;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/flurry/sdk/lc;

    invoke-direct {v0}, Lcom/flurry/sdk/lc;-><init>()V

    .line 10041
    iput-object v0, v1, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    .line 88
    new-instance v0, Lcom/flurry/sdk/lh;

    invoke-direct {v0}, Lcom/flurry/sdk/lh;-><init>()V

    .line 10045
    iput-object v0, v1, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 89
    const-string v0, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/er;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/flurry/sdk/ep$1;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/ep$1;-><init>(Lcom/flurry/sdk/ep;Lcom/flurry/sdk/ep$a;)V

    .line 10049
    iput-object v0, v1, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 108
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 109
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/ep;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 195
    return-void
.end method
