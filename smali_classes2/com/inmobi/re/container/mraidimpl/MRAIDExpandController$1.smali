.class Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$1;
.super Ljava/lang/Object;
.source "MRAIDExpandController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->doExpand(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$1;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$1;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$1;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onExpand()V

    .line 165
    :cond_0
    return-void
.end method
