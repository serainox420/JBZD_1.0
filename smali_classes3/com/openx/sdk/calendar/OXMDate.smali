.class public Lcom/openx/sdk/calendar/OXMDate;
.super Ljava/lang/Object;
.source "OXMDate.java"


# static fields
.field private static final DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final DATE_TIME_PATTERN_SEP1:Ljava/lang/String; = "T"

.field private static final DATE_TIME_PATTERN_SEP2:Ljava/lang/String; = " "

.field private static final TIME_PATTERN1:Ljava/lang/String; = "HH:mm\'Z\'"

.field private static final TIME_PATTERN2:Ljava/lang/String; = "HH:mm:ss.S"

.field private static final TIME_PATTERN3:Ljava/lang/String; = "HH:mm:ss.SS"

.field private static final TIME_PATTERN4:Ljava/lang/String; = "HH:mm:ss.SSS"

.field private static final TIME_PATTERN5:Ljava/lang/String; = "HH:mm:ss.SZZZ"

.field private static final TIME_PATTERN6:Ljava/lang/String; = "HH:mm:ss.SSZZZ"

.field private static final TIME_PATTERN7:Ljava/lang/String; = "HH:mm:ss.SSSZZZ"

.field private static final TIME_PATTERN8:Ljava/lang/String; = "HH:mm:ssZZZ"

.field private static final TIME_PATTERN9:Ljava/lang/String; = "HH:mmZZZ"


# instance fields
.field private mDate:Ljava/util/Date;

.field private mIsEmpty:Z

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_3

    .line 88
    const-string v1, "T"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 90
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v0, "\'T\'"

    .line 106
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1, v1, v0}, Lcom/openx/sdk/calendar/OXMDate;->getDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 96
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v0, "\' \'"

    goto :goto_0

    .line 102
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    move-object v1, v0

    move-object v2, v0

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mIsEmpty:Z

    goto :goto_1
.end method

.method private getDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 119
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    const-string v3, "HH:mm\'Z\'"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HH:mm\'Z\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    if-eqz v1, :cond_1

    .line 166
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/openx/sdk/calendar/OXMDate;->setTimeZone(Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    .line 176
    :cond_1
    return-void

    .line 126
    :cond_2
    const-string v3, "HH:mm:ss.S"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HH:mm:ss.S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_3
    const-string v3, "HH:mm:ss.SS"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HH:mm:ss.SS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_4
    const-string v3, "HH:mm:ss.SSS"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HH:mm:ss.SSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v3, "HH:mm:ss.SZZZ"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HH:mm:ss.SZZZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 143
    :cond_6
    const-string v3, "HH:mm:ss.SSZZZ"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HH:mm:ss.SSZZZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 148
    :cond_7
    const-string v3, "HH:mm:ss.SSSZZZ"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HH:mm:ss.SSSZZZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 153
    :cond_8
    const-string v3, "HH:mm:ssZZZ"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HH:mm:ssZZZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 158
    :cond_9
    const-string v3, "HH:mmZZZ"

    invoke-static {p2, v3}, Lcom/openx/sdk/calendar/OXMDate;->tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HH:mmZZZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static tryPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/openx/sdk/calendar/OXMDate;->mIsEmpty:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMDate;->mDate:Ljava/util/Date;

    .line 45
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/openx/sdk/calendar/OXMDate;->mTimeZone:Ljava/lang/String;

    .line 59
    return-void
.end method
