.class final Lcom/openx/sdk/calendar/OXMCalendarGTE14;
.super Ljava/lang/Object;
.source "OXMCalendarGTE14.java"

# interfaces
.implements Lcom/openx/sdk/calendar/OXMCalendar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/sdk/calendar/OXMCalendarGTE14$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private createRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->setFrequencyRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getDaysInWeek()[Ljava/lang/Short;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getDaysInWeek()[Ljava/lang/Short;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->setDayRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;Ljava/lang/StringBuilder;)V

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getDaysInMonth()[Ljava/lang/Short;

    move-result-object v1

    const-string v2, "BYMONTHDAY"

    invoke-direct {p0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->produceRuleValuesStringForKey([Ljava/lang/Short;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getDaysInYear()[Ljava/lang/Short;

    move-result-object v1

    const-string v2, "BYYEARDAY"

    invoke-direct {p0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->produceRuleValuesStringForKey([Ljava/lang/Short;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getMonthsInYear()[Ljava/lang/Short;

    move-result-object v1

    const-string v2, "BYMONTH"

    invoke-direct {p0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->produceRuleValuesStringForKey([Ljava/lang/Short;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getWeeksInMonth()[Ljava/lang/Short;

    move-result-object v1

    const-string v2, "BYWEEKNO"

    invoke-direct {p0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->produceRuleValuesStringForKey([Ljava/lang/Short;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getExpires()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getExpires()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/sdk/calendar/OXMDate;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getExceptionDates()[Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private produceRuleValuesStringForKey([Ljava/lang/Short;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 162
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 167
    if-eqz v4, :cond_0

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_1
    return-object v0

    .line 179
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 183
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method private setDayRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getDaysInWeek()[Ljava/lang/Short;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 95
    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :pswitch_0
    const-string v5, ",SU"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :pswitch_1
    const-string v5, ",MO"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :pswitch_2
    const-string v5, ",TU"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :pswitch_3
    const-string v5, ",WE"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :pswitch_4
    const-string v5, ",TH"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :pswitch_5
    const-string v5, ",FR"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :pswitch_6
    const-string v5, ",SA"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_2
    return-void

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setFrequencyRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarGTE14$1;->$SwitchMap$com$openx$sdk$calendar$OXMCalendarRepeatRule$Frequency:[I

    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getFrequency()Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    return-object v0

    .line 138
    :pswitch_0
    const-string v1, "FREQ=DAILY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v1, "FREQ=MONTHLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v1, "FREQ=WEEKLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v1, "FREQ=YEARLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createCalendarEvent(Landroid/content/Context;Lcom/openx/sdk/calendar/OXMCalendarEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 13
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string v2, ""

    .line 22
    :cond_0
    if-nez v1, :cond_1

    .line 24
    const-string v1, ""

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 29
    const-string v0, ""

    .line 32
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v2, "description"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "eventLocation"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "beginTime"

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getStart()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getStart()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 39
    const-string v2, "endTime"

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getEnd()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getEnd()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->getTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 40
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    const-string v0, "accessLevel"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v0, "availability"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getRecurrence()Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;->createRule(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "rrule"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_3
    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getReminder()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->getReminder()Lcom/openx/sdk/calendar/OXMDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/calendar/OXMDate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    const-string v0, "hasAlarm"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    :cond_4
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void

    .line 38
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    goto :goto_1
.end method
