.class Lcom/adcolony/sdk/bg$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Ljava/lang/Exception;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Z

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/lang/Exception;Z)V
    .locals 0

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/adcolony/sdk/bg$28;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2204
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 2208
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 2209
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2212
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    .line 2213
    invoke-virtual {v0}, Lcom/adcolony/sdk/cf;->a()Ljava/util/Map;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2217
    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v8, "error"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2218
    const-string v2, "data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2219
    const-string v8, "description"

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "description"

    .line 2220
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2222
    const-string v3, "num"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2223
    const-string v3, "num"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2224
    add-int/lit8 v3, v3, 0x1

    .line 2225
    const-string v8, "num"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    const-string v3, "data"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    iget-object v3, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    iget-object v3, v3, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/adcolony/sdk/cf;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 2228
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending exception to server: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    move v0, v5

    :goto_1
    move v3, v0

    .line 2232
    goto/16 :goto_0

    :cond_1
    move v3, v4

    .line 2235
    :cond_2
    if-nez v3, :cond_3

    .line 2236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2237
    const-string v1, "description"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    const-string v1, "stackTrace"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    const-string v1, "num"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    iget-boolean v1, p0, Lcom/adcolony/sdk/bg$28;->b:Z

    if-eqz v1, :cond_5

    .line 2241
    iget-object v1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    const-string v2, "exception"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2242
    iget-object v1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logged new fatal exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2247
    :goto_2
    iget-object v1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2252
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    invoke-virtual {v0, v5}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 2253
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg$28;->b:Z

    if-eqz v0, :cond_4

    .line 2255
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->u()V

    .line 2256
    iget-object v0, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->d()J

    .line 2258
    :cond_4
    return-void

    .line 2244
    :cond_5
    iget-object v1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2245
    iget-object v1, p0, Lcom/adcolony/sdk/bg$28;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged new non-fatal exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/bg$28;->a:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v0, v3

    goto/16 :goto_1
.end method
