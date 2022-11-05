.class Lcom/apprupt/sdk/MRAIDView$16$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView$16;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$16;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$16$1;->a:Lcom/apprupt/sdk/MRAIDView$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$16$1;->a:Lcom/apprupt/sdk/MRAIDView$16;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$16;->a:Lcom/apprupt/sdk/MRAIDView;

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->b:Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Lcom/apprupt/sdk/MRAIDView$MraidState;)V

    .line 657
    return-void
.end method
