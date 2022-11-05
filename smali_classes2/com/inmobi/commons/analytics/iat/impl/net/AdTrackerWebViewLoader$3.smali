.class Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;
.super Ljava/lang/Object;
.source "AdTrackerWebViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->deinit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 74
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 76
    :cond_0
    return-void
.end method
