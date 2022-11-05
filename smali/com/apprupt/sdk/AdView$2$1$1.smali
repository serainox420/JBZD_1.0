.class Lcom/apprupt/sdk/AdView$2$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$2$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$2$1;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$2$1$1;->a:Lcom/apprupt/sdk/AdView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$2$1$1;->a:Lcom/apprupt/sdk/AdView$2$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$2$1;->a:Lcom/apprupt/sdk/AdView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$2;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->d(Lcom/apprupt/sdk/AdView;)V

    .line 289
    return-void
.end method
