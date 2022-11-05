.class Lcom/apprupt/sdk/MRAIDView$6$2;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 349
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$6$2;->a:Lcom/apprupt/sdk/MRAIDView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$6$2;->a:Lcom/apprupt/sdk/MRAIDView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$6;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method
