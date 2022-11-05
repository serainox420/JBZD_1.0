.class Lcom/adcolony/sdk/be$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/be;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/be;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/be;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/adcolony/sdk/be$3;->b:Lcom/adcolony/sdk/be;

    iput-object p2, p0, Lcom/adcolony/sdk/be$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/be$3;->b:Lcom/adcolony/sdk/be;

    invoke-static {v0}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "assets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 217
    iget-object v1, p0, Lcom/adcolony/sdk/be$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/adcolony/sdk/be$3;->b:Lcom/adcolony/sdk/be;

    invoke-static {v1}, Lcom/adcolony/sdk/be;->b(Lcom/adcolony/sdk/be;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "assets"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/adcolony/sdk/be$3;->b:Lcom/adcolony/sdk/be;

    invoke-virtual {v0}, Lcom/adcolony/sdk/be;->c()V

    .line 220
    return-void
.end method
