.class Lcom/apprupt/sdk/MRAIDView$9$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$9;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/URLRequest$URLResponse;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView$9;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$9;Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->b:Lcom/apprupt/sdk/MRAIDView$9;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 495
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    iget-boolean v0, v0, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->b:Lcom/apprupt/sdk/MRAIDView$9;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$9;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->k(Lcom/apprupt/sdk/MRAIDView;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->b:Lcom/apprupt/sdk/MRAIDView$9;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$9;->b:Lcom/apprupt/sdk/MRAIDView;

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->b:Lcom/apprupt/sdk/MRAIDView$9;

    iget-object v1, v1, Lcom/apprupt/sdk/MRAIDView$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$9$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    iget-object v2, v2, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/MRAIDView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
