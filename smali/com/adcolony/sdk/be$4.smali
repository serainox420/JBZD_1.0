.class Lcom/adcolony/sdk/be$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/be;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/be;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/be;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    iput-object p2, p0, Lcom/adcolony/sdk/be$4;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adcolony/sdk/be$4;->a:Ljava/util/Map;

    const-string v1, "key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    invoke-static {v2}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    invoke-static {v2}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "assets"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    .line 232
    invoke-static {v2}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "assets"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v1, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    invoke-static {v1}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "assets"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/adcolony/sdk/be$4;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    invoke-static {v0}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "assets"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/be$4;->b:Lcom/adcolony/sdk/be;

    invoke-virtual {v0}, Lcom/adcolony/sdk/be;->c()V

    .line 238
    return-void
.end method
