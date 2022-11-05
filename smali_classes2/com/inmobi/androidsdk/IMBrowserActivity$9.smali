.class Lcom/inmobi/androidsdk/IMBrowserActivity$9;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$9;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$9;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
