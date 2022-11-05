.class Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;
.super Ljava/lang/Object;
.source "BaseVideoTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->shutDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/BaseVideoTracker;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/BaseVideoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/BaseVideoTracker;

    const-string v1, "Shutting down."

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->logMessage(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/BaseVideoTracker;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->access$000(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;)Lcom/moat/analytics/mobile/aol/MoatWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/MoatWebView;->destroy()V

    .line 217
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/BaseVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/BaseVideoTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->access$002(Lcom/moat/analytics/mobile/aol/BaseVideoTracker;Lcom/moat/analytics/mobile/aol/MoatWebView;)Lcom/moat/analytics/mobile/aol/MoatWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
