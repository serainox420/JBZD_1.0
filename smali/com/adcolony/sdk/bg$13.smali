.class Lcom/adcolony/sdk/bg$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->J()V
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
    .line 1227
    iput-object p1, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 1231
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->j()V

    .line 1238
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->k()V

    .line 1241
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 1244
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->e()V

    .line 1246
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->h()V

    .line 1250
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->aa:Ljava/util/Map;

    const-string v1, "yv_injected_logs"

    .line 1251
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1252
    if-eqz v0, :cond_1

    .line 1253
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v3, v1, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    const-string v4, "loadTest"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v3, v4, v1}, Lcom/adcolony/sdk/cf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1253
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$13;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->i()V

    goto :goto_0

    .line 1257
    :cond_1
    return-void
.end method
