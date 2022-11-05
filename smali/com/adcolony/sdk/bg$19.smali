.class Lcom/adcolony/sdk/bg$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->d(Z)V
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
    .line 1716
    iput-object p1, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    iput-boolean p2, p0, Lcom/adcolony/sdk/bg$19;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1718
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->w:Z

    .line 1719
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop()"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aborting handle restart. OS is too old."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg$19;->a:Z

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app in in background"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1729
    const-string v1, "state"

    const-string v2, "BACKGROUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iget-object v1, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    const-string v2, "visibility_changed"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1732
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$19;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->c()V

    goto :goto_0
.end method
