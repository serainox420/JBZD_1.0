.class Lcom/loopme/adbrowser/AdBrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "AdBrowserWebViewClient.java"

# interfaces
.implements Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/adbrowser/AdBrowserWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/adbrowser/AdBrowserWebViewClient;


# direct methods
.method constructor <init>(Lcom/loopme/adbrowser/AdBrowserWebViewClient;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient$1;->this$0:Lcom/loopme/adbrowser/AdBrowserWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeaveApp()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onPageFinished(Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onPageStarted()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onReceiveError()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
