.class Lcom/apprupt/sdk/MRAIDView$15$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView$15;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$15;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$15$1;->a:Lcom/apprupt/sdk/MRAIDView$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$15$1;->a:Lcom/apprupt/sdk/MRAIDView$15;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$15;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->k(Lcom/apprupt/sdk/MRAIDView;)V

    .line 633
    return-void
.end method
