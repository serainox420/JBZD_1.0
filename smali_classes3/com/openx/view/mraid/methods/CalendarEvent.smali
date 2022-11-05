.class public Lcom/openx/view/mraid/methods/CalendarEvent;
.super Ljava/lang/Object;
.source "CalendarEvent.java"


# instance fields
.field adBaseView:Lcom/openx/view/WebViewBase;

.field jsi:Lcom/openx/view/mraid/BaseJSInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/openx/view/mraid/methods/CalendarEvent;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 23
    iput-object p2, p0, Lcom/openx/view/mraid/methods/CalendarEvent;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 24
    return-void
.end method


# virtual methods
.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/openx/sdk/calendar/OXMCalendarEvent;

    invoke-direct {v1, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;-><init>(Lorg/json/JSONObject;)V

    .line 35
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->createCalendarEvent(Lcom/openx/sdk/calendar/OXMCalendarEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/openx/view/mraid/methods/CalendarEvent;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const-string v1, "create_calendar_event"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getMRAIDErrMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createCalendarEvent"

    invoke-virtual {v0, v1, v2}, Lcom/openx/view/mraid/BaseJSInterface;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
