.class Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4;
.super Ljava/lang/Object;
.source "JavaScriptBridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startViewUpdateLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    new-instance v1, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4$1;-><init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
