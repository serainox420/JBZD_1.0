.class Lcom/apprupt/sdk/AdView$4$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$4;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$4;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$4;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->f(Lcom/apprupt/sdk/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$4;->a:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$4;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v1}, Lcom/apprupt/sdk/AdView;->g(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Placeholder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    .line 349
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$4;->a:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$4$1;->a:Lcom/apprupt/sdk/AdView$4;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$4;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v1}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->addView(Landroid/view/View;)V

    .line 351
    :cond_0
    return-void
.end method
