.class Lcom/pubmatic/sdk/banner/mraid/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/mraid/WebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$1;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$1;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    return-void
.end method
