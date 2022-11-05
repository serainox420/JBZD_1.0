.class Lcom/adcolony/sdk/ca$a$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/ca$a$d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$a$d$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/ca$a$d$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCatalogItem was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 686
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a$d;->a(Lcom/adcolony/sdk/ca$a$d;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->w()V

    .line 687
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$2;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 688
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$d$2;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 689
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 690
    const-string v3, "path"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v3, "params"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v3, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    iget-object v3, v3, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v3, v3, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v3}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    invoke-static {v3}, Lcom/adcolony/sdk/ca$a$d;->a(Lcom/adcolony/sdk/ca$a$d;)Lcom/adcolony/sdk/cm;

    move-result-object v3

    iput-object v2, v3, Lcom/adcolony/sdk/cm;->i:Ljava/util/Map;

    .line 694
    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/cm$a;->f:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/ca$a$d$2;->c:Lcom/adcolony/sdk/ca$a$d;

    invoke-static {v3}, Lcom/adcolony/sdk/ca$a$d;->a(Lcom/adcolony/sdk/ca$a$d;)Lcom/adcolony/sdk/cm;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/adcolony/sdk/cn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/adcolony/sdk/cm;)V

    .line 697
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$2;->a:Ljava/lang/String;

    goto :goto_0

    .line 688
    :cond_2
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$d$2;->b:Ljava/lang/String;

    goto :goto_1
.end method
