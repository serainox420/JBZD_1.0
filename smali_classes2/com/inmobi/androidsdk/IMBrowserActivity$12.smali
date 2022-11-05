.class Lcom/inmobi/androidsdk/IMBrowserActivity$12;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V
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
    .line 738
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$12;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 742
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 743
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 744
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$12;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->doHidePlayers()V

    .line 745
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$12;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->reload()V

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 747
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const v0, -0xff0001

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
