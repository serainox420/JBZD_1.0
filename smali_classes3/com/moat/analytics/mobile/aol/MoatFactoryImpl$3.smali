.class Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;
.super Ljava/lang/Object;
.source "MoatFactoryImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createNativeDisplayTrackerUnsafe(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
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
        "Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

.field final synthetic val$maybeView:Ljava/lang/ref/WeakReference;

.field final synthetic val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field final synthetic val$partnerCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$maybeView:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    iput-object p4, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$partnerCode:Ljava/lang/String;

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
            "Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$maybeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 184
    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "MoatFactory"

    const-string v1, "Target view is null. Not creating NativeDisplayTracker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "MoatFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating NativeDisplayTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    new-instance v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$partnerCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    invoke-static {v3}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->access$000(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/ActivityState;

    move-result-object v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 194
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    goto :goto_0
.end method
