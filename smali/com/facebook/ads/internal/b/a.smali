.class public final Lcom/facebook/ads/internal/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/util/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/util/af",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/facebook/ads/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/a;->a:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    new-instance v3, Lcom/facebook/ads/internal/b/d;

    invoke-direct {v3, v0}, Lcom/facebook/ads/internal/b/d;-><init>(Lcom/facebook/ads/internal/b/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/b/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/b/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/b/b;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/a;->a:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    const-string v0, "TESTS"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    new-instance v5, Lcom/facebook/ads/internal/b/d;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/b;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v5, v0, v1}, Lcom/facebook/ads/internal/b/d;-><init>(Lcom/facebook/ads/internal/b/b;Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "STATISTICS"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c;->a()V

    return-void
.end method

.method public a(DD)V
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/b/c;->b(DD)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/view/View;Landroid/content/Context;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/facebook/ads/internal/b/c;->a(DD)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/d;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/facebook/ads/internal/b/d;->a(DD)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Lcom/facebook/ads/internal/b/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    return-object v0
.end method

.method public getSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "STATISTICS"

    iget-object v2, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/d;->getSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "TESTS"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1
.end method
