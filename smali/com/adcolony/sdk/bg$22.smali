.class Lcom/adcolony/sdk/bg$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Z)V
    .locals 0

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    iput-boolean p2, p0, Lcom/adcolony/sdk/bg$22;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRestart()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1799
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aborting handle restart. OS is too old."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg$22;->a:Z

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-virtual {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a()V

    .line 1805
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1806
    const-string v1, "state"

    const-string v2, "LAUNCHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    iget-object v1, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    const-string v2, "visibility_changed"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1808
    iget-object v0, p0, Lcom/adcolony/sdk/bg$22;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->e()V

    goto :goto_0
.end method
