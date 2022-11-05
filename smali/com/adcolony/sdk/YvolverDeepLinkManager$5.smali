.class Lcom/adcolony/sdk/YvolverDeepLinkManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;->c(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

.field final synthetic b:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iput-object p2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 148
    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v0, v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v0, v0, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    const-string v2, "adcOpenUrl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "adcOpenCatalog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    iget-object v1, v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_5

    .line 156
    const-string v1, "adcOpenUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 166
    :goto_1
    if-eqz v3, :cond_4

    .line 167
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/bz;->i(Ljava/util/Map;)V

    .line 172
    :cond_3
    :goto_2
    return-void

    .line 168
    :cond_4
    if-eqz v0, :cond_3

    .line 169
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bz;->j(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method
