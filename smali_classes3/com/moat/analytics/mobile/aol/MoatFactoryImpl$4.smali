.class Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;
.super Ljava/lang/Object;
.source "MoatFactoryImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createNativeVideoTrackerUnsafe(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
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
        "Lcom/moat/analytics/mobile/aol/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

.field final synthetic val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field final synthetic val$partnerCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->val$partnerCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/aol/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "MoatFactory"

    const-string v1, "Creating NativeVideo tracker."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->val$partnerCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->this$0:Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    invoke-static {v2}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->access$000(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/ActivityState;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;->val$onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 210
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method
