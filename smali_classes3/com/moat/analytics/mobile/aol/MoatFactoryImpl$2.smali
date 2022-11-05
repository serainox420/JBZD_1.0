.class Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;
.super Ljava/lang/Object;
.source "MoatFactoryImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createWebAdTrackerUnsafe(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator",
        "<",
        "Lcom/moat/analytics/mobile/aol/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

.field final synthetic val$maybeWebView:Ljava/lang/ref/WeakReference;

.field final synthetic val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->val$maybeWebView:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/aol/WebAdTracker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->val$maybeWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 153
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v1

    .line 154
    if-nez v0, :cond_1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    const-string v0, "MoatFactory"

    const-string v1, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 160
    :cond_1
    if-eqz v1, :cond_2

    .line 161
    const-string v2, "MoatFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating WebAdTracker for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    invoke-static {v2}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->access$100(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/WebViewHound;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/moat/analytics/mobile/aol/WebViewHound;->sniff(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->isPresent()Z

    move-result v0

    .line 165
    if-eqz v1, :cond_3

    .line 166
    const-string v1, "MoatFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "found inside of ad container."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    new-instance v1, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    invoke-static {v2}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->access$000(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/ActivityState;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct {v1, v0, v2, v3}, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 169
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_4
    const-string v0, "not "

    goto :goto_1
.end method
