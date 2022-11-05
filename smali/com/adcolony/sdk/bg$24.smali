.class Lcom/adcolony/sdk/bg$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->ab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;)V
    .locals 0

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/adcolony/sdk/bg$24;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/adcolony/sdk/bg$24;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->f()V

    .line 1823
    iget-object v0, p0, Lcom/adcolony/sdk/bg$24;->a:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->ag()V

    .line 1825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1826
    const-string v1, "state"

    const-string v2, "STOPPED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    iget-object v1, p0, Lcom/adcolony/sdk/bg$24;->a:Lcom/adcolony/sdk/bg;

    const-string v2, "visibility_changed"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1828
    return-void
.end method
