.class Lcom/apprupt/sdk/AdView$7;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$7;->b:Lcom/apprupt/sdk/AdView;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$7;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 537
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/Timeout;->a(J)V

    .line 538
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    new-instance v1, Lcom/apprupt/sdk/AdView$7$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$7$1;-><init>(Lcom/apprupt/sdk/AdView$7;)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->a(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method
