.class Lcom/inmobi/monetization/IMNative$1$2;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMNative$1;->onAdRequestSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMNative$1;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative$1;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$1$2;->a:Lcom/inmobi/monetization/IMNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1$2;->a:Lcom/inmobi/monetization/IMNative$1;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1$2;->a:Lcom/inmobi/monetization/IMNative$1;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$1$2;->a:Lcom/inmobi/monetization/IMNative$1;

    iget-object v1, v1, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMNativeListener;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
