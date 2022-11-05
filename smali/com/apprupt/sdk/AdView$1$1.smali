.class Lcom/apprupt/sdk/AdView$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$1;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$1$1;->a:Lcom/apprupt/sdk/AdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$1$1;->a:Lcom/apprupt/sdk/AdView$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$1;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "Timeout"

    iget-object v2, p0, Lcom/apprupt/sdk/AdView$1$1;->a:Lcom/apprupt/sdk/AdView$1;

    iget-object v2, v2, Lcom/apprupt/sdk/AdView$1;->a:Lcom/apprupt/sdk/AdView;

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/AdView$Listener;->onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V

    .line 117
    :cond_0
    return-void
.end method
