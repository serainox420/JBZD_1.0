.class Lcom/video/adsdk/internal/ADJavascriptBridge$3;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$3;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/video/adsdk/internal/ADJavascriptBridge$3;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method
