.class Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeImpl.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToMoatJS()V
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
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 144
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$100(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v1, "MoatJavaScriptBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received value is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_5

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$200(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$200(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$300(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$208(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)I

    .line 160
    :cond_4
    :goto_1
    return-void

    .line 146
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(String)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_6
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0, v4}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$202(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;I)I

    .line 154
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$000(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    goto :goto_1

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->access$100(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    const-string v0, "MoatJavaScriptBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unusual value from Javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
