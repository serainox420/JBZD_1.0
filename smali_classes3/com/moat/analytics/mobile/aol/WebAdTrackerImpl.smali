.class Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;
.super Ljava/lang/Object;
.source "WebAdTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoatWebAdTracker"


# instance fields
.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private final viewTracker:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<+",
            "Lcom/moat/analytics/mobile/aol/ViewTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 6
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 25
    invoke-interface {p3}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "MoatWebAdTracker"

    const-string v1, "In initialization method."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    if-nez p1, :cond_2

    .line 29
    invoke-interface {p3}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "MoatWebAdTracker"

    const-string v1, "WebView is null. Will not track."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_2
    new-instance v0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    goto :goto_0
.end method


# virtual methods
.method public track()Z
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v2

    .line 41
    const/4 v1, 0x0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    :try_start_0
    const-string v0, "MoatWebAdTracker"

    const-string v3, "In track method."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    const-string v0, "MoatWebAdTracker"

    const-string v3, "Internal tracker not available. Not tracking."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    move v1, v0

    .line 57
    :goto_1
    if-eqz v2, :cond_1

    .line 58
    const-string v2, "MoatWebAdTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to start tracking ad was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "successful."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    return v1

    .line 51
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;->viewTracker:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/ViewTracker;

    .line 52
    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ViewTracker;->track()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 58
    :cond_3
    const-string v0, "un"

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method
