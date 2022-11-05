.class Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3$1;->this$1:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3$1;->this$1:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;

    iget-object v0, v0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$400(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
