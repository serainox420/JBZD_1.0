.class public final Lcom/openx/sdk/calendar/OXMCalendarEvent;
.super Ljava/lang/Object;
.source "OXMCalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;,
        Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEnd:Lcom/openx/sdk/calendar/OXMDate;

.field private mId:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mRecurrence:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;

.field private mReminder:Lcom/openx/sdk/calendar/OXMDate;

.field private mStart:Lcom/openx/sdk/calendar/OXMDate;

.field private mStatus:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field private mSummary:Ljava/lang/String;

.field private mTransparency:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setId(Ljava/lang/String;)V

    .line 167
    const-string v0, "description"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setDescription(Ljava/lang/String;)V

    .line 168
    const-string v0, "location"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setLocation(Ljava/lang/String;)V

    .line 169
    const-string v0, "summary"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setSummary(Ljava/lang/String;)V

    .line 170
    const-string v0, "start"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStart(Ljava/lang/String;)V

    .line 171
    const-string v0, "end"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setEnd(Ljava/lang/String;)V

    .line 173
    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setCalendarStatus(Ljava/lang/String;)V

    .line 176
    const-string v0, "transparency"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setCalendarTransparency(Ljava/lang/String;)V

    .line 179
    const-string v0, "recurrence"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setCalendarRecurrence(Ljava/lang/String;)V

    .line 182
    const-string v0, "reminder"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setReminder(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private setCalendarRecurrence(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;

    invoke-direct {v1, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setRecurrence(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setCalendarStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 228
    const-string v0, "pending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->PENDING:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    .line 253
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "tentative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->TENTATIVE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "confirmed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CONFIRMED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    goto :goto_0

    .line 240
    :cond_2
    const-string v0, "cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CANCELLED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    goto :goto_0

    .line 246
    :cond_3
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    goto :goto_0

    .line 251
    :cond_4
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V

    goto :goto_0
.end method

.method private setCalendarTransparency(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    const-string v0, "transparent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->TRANSPARENT:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setTransparency(Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;)V

    .line 222
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "opaque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->OPAQUE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setTransparency(Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;)V

    goto :goto_0

    .line 215
    :cond_1
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setTransparency(Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;)V

    goto :goto_0

    .line 220
    :cond_2
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarEvent;->setTransparency(Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;)V

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Lcom/openx/sdk/calendar/OXMDate;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mEnd:Lcom/openx/sdk/calendar/OXMDate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mRecurrence:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;

    return-object v0
.end method

.method public getReminder()Lcom/openx/sdk/calendar/OXMDate;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mReminder:Lcom/openx/sdk/calendar/OXMDate;

    return-object v0
.end method

.method public getStart()Lcom/openx/sdk/calendar/OXMDate;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mStart:Lcom/openx/sdk/calendar/OXMDate;

    return-object v0
.end method

.method public getStatus()Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mStatus:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mTransparency:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mDescription:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Lcom/openx/sdk/calendar/OXMDate;

    invoke-direct {v0, p1}, Lcom/openx/sdk/calendar/OXMDate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mEnd:Lcom/openx/sdk/calendar/OXMDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mLocation:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setRecurrence(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mRecurrence:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;

    .line 145
    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Lcom/openx/sdk/calendar/OXMDate;

    invoke-direct {v0, p1}, Lcom/openx/sdk/calendar/OXMDate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mReminder:Lcom/openx/sdk/calendar/OXMDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/openx/sdk/calendar/OXMDate;

    invoke-direct {v0, p1}, Lcom/openx/sdk/calendar/OXMDate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mStart:Lcom/openx/sdk/calendar/OXMDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mStatus:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 125
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mSummary:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTransparency(Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarEvent;->mTransparency:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    .line 135
    return-void
.end method
