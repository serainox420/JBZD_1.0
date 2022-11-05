.class final Lcom/inmobi/commons/InMobi$1;
.super Ljava/lang/Object;
.source "InMobi.java"

# interfaces
.implements Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->refresh()V

    .line 136
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->collectLocationInfo()V

    .line 137
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->endSession(Ljava/util/Map;)V

    goto :goto_0
.end method
