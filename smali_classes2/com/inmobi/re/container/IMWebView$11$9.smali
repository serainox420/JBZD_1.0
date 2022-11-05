.class Lcom/inmobi/re/container/IMWebView$11$9;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView$11;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView$11;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView$11;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$11$9;->a:Lcom/inmobi/re/container/IMWebView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 977
    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 980
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Back Button pressed when html5 video is playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$11$9;->a:Lcom/inmobi/re/container/IMWebView$11;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView$11;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->m(Lcom/inmobi/re/container/IMWebView;)V

    .line 983
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
