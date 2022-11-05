.class Lcom/apprupt/sdk/MRAIDView$6$1;
.super Ljava/util/TimerTask;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView$6;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$6;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$6$1;->a:Lcom/apprupt/sdk/MRAIDView$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6$1;->a:Lcom/apprupt/sdk/MRAIDView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->j(Lcom/apprupt/sdk/MRAIDView;)V

    .line 346
    return-void
.end method
