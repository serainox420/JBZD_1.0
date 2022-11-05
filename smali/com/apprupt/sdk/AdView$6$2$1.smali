.class Lcom/apprupt/sdk/AdView$6$2$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$6$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$6$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$6$2;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6$2$1;->a:Lcom/apprupt/sdk/AdView$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$2$1;->a:Lcom/apprupt/sdk/AdView$6$2;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->a()V

    .line 496
    return-void
.end method
