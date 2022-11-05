.class Lcom/apprupt/sdk/MRAIDView$5;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$5;->a:Lcom/apprupt/sdk/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$5;->a:Lcom/apprupt/sdk/MRAIDView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 312
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$5;->a:Lcom/apprupt/sdk/MRAIDView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 313
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$5;->a:Lcom/apprupt/sdk/MRAIDView;

    const-string v1, "<html><body style=\"background-color:transparent\"></body></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/apprupt/sdk/MRAIDView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$5;->a:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Z)Z

    .line 315
    return-void
.end method
