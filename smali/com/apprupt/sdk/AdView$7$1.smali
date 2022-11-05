.class Lcom/apprupt/sdk/AdView$7$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$7;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$7;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/Timeout;->a()V

    .line 542
    new-instance v0, Lcom/apprupt/sdk/AdView$7$1$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$7$1$1;-><init>(Lcom/apprupt/sdk/AdView$7$1;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 552
    return-void
.end method
