.class Lcom/inmobi/re/container/IMWebView$3;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->raiseVibrateCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$3;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2855
    :try_start_0
    const-string v0, "window.mraid.broadcastEvent(\'vibrateComplete\')"

    .line 2856
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$3;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    :goto_0
    return-void

    .line 2857
    :catch_0
    move-exception v0

    .line 2859
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception giviing vibration complete callback"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
