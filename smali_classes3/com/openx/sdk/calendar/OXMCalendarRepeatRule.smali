.class public final Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;
.super Ljava/lang/Object;
.source "OXMCalendarRepeatRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;
    }
.end annotation


# instance fields
.field private mDaysInMonth:[Ljava/lang/Short;

.field private mDaysInWeek:[Ljava/lang/Short;

.field private mDaysInYear:[Ljava/lang/Short;

.field private mExceptionDates:[Lcom/openx/sdk/calendar/OXMDate;

.field private mExpires:Lcom/openx/sdk/calendar/OXMDate;

.field private mFrequency:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field private mInterval:Ljava/lang/Integer;

.field private mMonthsInYear:[Ljava/lang/Short;

.field private mWeeksInMonth:[Ljava/lang/Short;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mInterval:Ljava/lang/Integer;

    .line 153
    const-string v0, "frequency"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Ljava/lang/String;)V

    .line 157
    const-string v0, "interval"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setInterval(Ljava/lang/String;)V

    .line 160
    const-string v0, "expires"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setExpires(Ljava/lang/String;)V

    .line 166
    :cond_0
    const-string v0, "exceptionDates"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setExceptionDates(Lorg/json/JSONArray;)V

    .line 169
    const-string v0, "daysInWeek"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInWeek(Lorg/json/JSONArray;)V

    .line 172
    const-string v0, "daysInMonth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInMonth(Lorg/json/JSONArray;)V

    .line 175
    const-string v0, "daysInYear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInYear(Lorg/json/JSONArray;)V

    .line 178
    const-string v0, "weeksInMonth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setWeeksInMonth(Lorg/json/JSONArray;)V

    .line 181
    const-string v0, "monthsInYear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setMonthsInYear(Lorg/json/JSONArray;)V

    .line 183
    return-void
.end method

.method private setDaysInMonth(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Short;

    .line 266
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 270
    :goto_1
    aput-object v0, v3, v2

    .line 266
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 269
    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInMonth([Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_2
    :goto_2
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private setDaysInWeek(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    if-eqz p1, :cond_2

    .line 289
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Short;

    .line 290
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 294
    :goto_1
    aput-object v0, v3, v2

    .line 290
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 293
    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInWeek([Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_2
    :goto_2
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private setDaysInYear(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Short;

    .line 242
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 246
    :goto_1
    aput-object v0, v3, v2

    .line 242
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 245
    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {p0, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setDaysInYear([Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_2
    :goto_2
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private setExceptionDates(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 307
    if-eqz p1, :cond_1

    .line 312
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    aput-object v2, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0, v1}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setExceptionDates([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_1
    :goto_1
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setFrequency(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    const-string v0, "daily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->DAILY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    .line 371
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v0, "monthly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->MONTHLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    goto :goto_0

    .line 354
    :cond_1
    const-string v0, "weekly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->WEEKLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    goto :goto_0

    .line 358
    :cond_2
    const-string v0, "yearly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->YEARLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    goto :goto_0

    .line 364
    :cond_3
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    goto :goto_0

    .line 369
    :cond_4
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V

    goto :goto_0
.end method

.method private setInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 329
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setInterval(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setMonthsInYear(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Short;

    .line 194
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 198
    :goto_1
    aput-object v0, v3, v2

    .line 194
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 197
    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setMonthsInYear([Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :goto_2
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private setWeeksInMonth(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Short;

    .line 218
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 222
    :goto_1
    aput-object v0, v3, v2

    .line 218
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 221
    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p0, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->setWeeksInMonth([Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_2
    :goto_2
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public getDaysInMonth()[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInMonth:[Ljava/lang/Short;

    return-object v0
.end method

.method public getDaysInWeek()[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInWeek:[Ljava/lang/Short;

    return-object v0
.end method

.method public getDaysInYear()[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInYear:[Ljava/lang/Short;

    return-object v0
.end method

.method public getExceptionDates()[Lcom/openx/sdk/calendar/OXMDate;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExceptionDates:[Lcom/openx/sdk/calendar/OXMDate;

    return-object v0
.end method

.method public getExpires()Lcom/openx/sdk/calendar/OXMDate;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExpires:Lcom/openx/sdk/calendar/OXMDate;

    return-object v0
.end method

.method public getFrequency()Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mFrequency:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    return-object v0
.end method

.method public getInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonthsInYear()[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mMonthsInYear:[Ljava/lang/Short;

    return-object v0
.end method

.method public getWeeksInMonth()[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mWeeksInMonth:[Ljava/lang/Short;

    return-object v0
.end method

.method public setDaysInMonth([Ljava/lang/Short;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInMonth:[Ljava/lang/Short;

    .line 119
    return-void
.end method

.method public setDaysInWeek([Ljava/lang/Short;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInWeek:[Ljava/lang/Short;

    .line 109
    return-void
.end method

.method public setDaysInYear([Ljava/lang/Short;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mDaysInYear:[Ljava/lang/Short;

    .line 129
    return-void
.end method

.method public setExceptionDates([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 82
    array-length v1, p1

    new-array v1, v1, [Lcom/openx/sdk/calendar/OXMDate;

    iput-object v1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExceptionDates:[Lcom/openx/sdk/calendar/OXMDate;

    .line 84
    array-length v3, p1

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExceptionDates:[Lcom/openx/sdk/calendar/OXMDate;

    new-instance v5, Lcom/openx/sdk/calendar/OXMDate;

    invoke-direct {v5, v0}, Lcom/openx/sdk/calendar/OXMDate;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 93
    iget-object v4, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExceptionDates:[Lcom/openx/sdk/calendar/OXMDate;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 94
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_0
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Lcom/openx/sdk/calendar/OXMDate;

    invoke-direct {v0, p1}, Lcom/openx/sdk/calendar/OXMDate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mExpires:Lcom/openx/sdk/calendar/OXMDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFrequency(Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mFrequency:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 44
    return-void
.end method

.method public setInterval(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mInterval:Ljava/lang/Integer;

    .line 54
    return-void
.end method

.method public setMonthsInYear([Ljava/lang/Short;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mMonthsInYear:[Ljava/lang/Short;

    .line 149
    return-void
.end method

.method public setWeeksInMonth([Ljava/lang/Short;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;->mWeeksInMonth:[Ljava/lang/Short;

    .line 139
    return-void
.end method
