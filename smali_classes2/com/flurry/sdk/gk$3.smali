.class final Lcom/flurry/sdk/gk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/flurry/sdk/gk$3;->a:Lcom/flurry/sdk/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/flurry/sdk/gk$3;->a:Lcom/flurry/sdk/gk;

    invoke-static {v0}, Lcom/flurry/sdk/gk;->h(Lcom/flurry/sdk/gk;)Z

    .line 599
    iget-object v0, p0, Lcom/flurry/sdk/gk$3;->a:Lcom/flurry/sdk/gk;

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->y()V

    .line 600
    iget-object v0, p0, Lcom/flurry/sdk/gk$3;->a:Lcom/flurry/sdk/gk;

    invoke-static {v0}, Lcom/flurry/sdk/gk;->i(Lcom/flurry/sdk/gk;)Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Z)V

    .line 601
    return-void
.end method
