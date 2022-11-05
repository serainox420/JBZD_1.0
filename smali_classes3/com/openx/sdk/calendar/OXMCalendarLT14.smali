.class final Lcom/openx/sdk/calendar/OXMCalendarLT14;
.super Ljava/lang/Object;
.source "OXMCalendarLT14.java"

# interfaces
.implements Lcom/openx/sdk/calendar/OXMCalendar;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCalendarEvent(Landroid/content/Context;Lcom/openx/sdk/calendar/OXMCalendarEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 11
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 15
    if-nez v2, :cond_0

    .line 17
    const-string v2, ""

    .line 20
    :cond_0
    if-nez v1, :cond_1

    .line 22
    const-string v1, ""

    .line 25
    :cond_1
    if-nez v0, :cond_2

    .line 27
    const-string v0, ""

    .line 30
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v2, "description"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "eventLocation"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v2, "beginTime"

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getStart()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getStart()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    const-string v2, "endTime"

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getEnd()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getEnd()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->getTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 37
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string v0, "visibility"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getReminder()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getReminder()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    const-string v0, "hasAlarm"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void

    .line 35
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 36
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    goto :goto_1
.end method
