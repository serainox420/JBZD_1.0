.class Lcom/moat/analytics/mobile/aol/MoatWebView$1;
.super Landroid/webkit/WebViewClient;
.source "MoatWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/MoatWebView;->startTracking(Landroid/view/View;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/MoatWebView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 118
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/MoatWebView;->access$000(Lcom/moat/analytics/mobile/aol/MoatWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/MoatWebView;->access$002(Lcom/moat/analytics/mobile/aol/MoatWebView;Z)Z

    .line 121
    iget-object v6, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    new-instance v0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/MoatWebView;->access$100(Lcom/moat/analytics/mobile/aol/MoatWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-static {v2}, Lcom/moat/analytics/mobile/aol/MoatWebView;->access$200(Lcom/moat/analytics/mobile/aol/MoatWebView;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    iget-object v4, v4, Lcom/moat/analytics/mobile/aol/MoatWebView;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    iget-object v5, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    iget-object v5, v5, Lcom/moat/analytics/mobile/aol/MoatWebView;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    iput-object v0, v6, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    .line 122
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    iget-object v0, v0, Lcom/moat/analytics/mobile/aol/MoatWebView;->viewTracker:Lcom/moat/analytics/mobile/aol/ViewTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ViewTracker;->track()Z

    .line 123
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatWebView$1;->this$0:Lcom/moat/analytics/mobile/aol/MoatWebView;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/MoatWebView;->flushDispatchQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
