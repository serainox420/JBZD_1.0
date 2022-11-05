.class Lcom/adcolony/sdk/bh$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bk;

.field final synthetic c:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/adcolony/sdk/bh$4;->c:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$4;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$4;->b:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/adcolony/sdk/bh$4;->a:Ljava/util/Map;

    const-string v1, "assets"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/adcolony/sdk/bh$4;->a:Ljava/util/Map;

    const-string v1, "assets"

    .line 448
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 449
    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->as()Lcom/adcolony/sdk/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/be;->a(Ljava/util/List;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh$4;->c:Lcom/adcolony/sdk/bh;

    iget-object v1, p0, Lcom/adcolony/sdk/bh$4;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;)V

    .line 455
    iget-object v0, p0, Lcom/adcolony/sdk/bh$4;->b:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 456
    return-void
.end method
