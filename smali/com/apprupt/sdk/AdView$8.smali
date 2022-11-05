.class Lcom/apprupt/sdk/AdView$8;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

.field final synthetic c:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;Landroid/view/View;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$8;->c:Lcom/apprupt/sdk/AdView;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$8;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/apprupt/sdk/AdView$8;->b:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$8;->c:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->removeView(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$8;->b:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    goto :goto_0
.end method
