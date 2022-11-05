.class Lcom/apprupt/sdk/CvICSLoader$Event;
.super Ljava/lang/Object;
.source "CvICSLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvICSLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[Ljava/lang/String;

.field final c:[Ljava/lang/String;

.field final d:[Ljava/lang/String;

.field final synthetic e:Lcom/apprupt/sdk/CvICSLoader;

.field private f:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvICSLoader;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 31
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->e:Lcom/apprupt/sdk/CvICSLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SUMMARY:"

    aput-object v1, v0, v2

    const-string v1, "DESCRIPTION:"

    aput-object v1, v0, v3

    const-string v1, "LOCATION:"

    aput-object v1, v0, v4

    const-string v1, "RRULE:"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->a:[Ljava/lang/String;

    .line 25
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "description"

    aput-object v1, v0, v3

    const-string v1, "eventLocation"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->b:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DTEND;"

    aput-object v1, v0, v2

    const-string v1, "DTSTART;"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->c:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dtend"

    aput-object v1, v0, v2

    const-string v1, "dtstart"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->d:[Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    .line 33
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "calendar_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "eventStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "eventTimezone"

    const-string v2, "Europe/Berlin"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v1, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->b:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\n"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_1
    return-void

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvICSLoader$Event;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 55
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->d:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 97
    :goto_0
    iget-object v4, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v5, "dtend"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v5, "dtend"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 99
    :goto_1
    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    .line 101
    const/4 v0, 0x0

    .line 114
    :goto_2
    return v0

    :cond_0
    move-wide v0, v2

    .line 96
    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 97
    goto :goto_1

    .line 103
    :cond_2
    cmp-long v6, v0, v2

    if-gtz v6, :cond_3

    move-wide v0, v4

    .line 106
    :goto_3
    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_4
    const/4 v0, 0x1

    goto :goto_2

    .line 104
    :cond_3
    cmp-long v2, v4, v2

    if-gtz v2, :cond_4

    move-wide v4, v0

    goto :goto_3

    .line 110
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4

    :cond_4
    move-wide v7, v4

    move-wide v4, v0

    move-wide v0, v7

    goto :goto_3
.end method

.method b(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    const-string v2, "VALUE=DATE:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 77
    :cond_0
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'hhmmss\'Z\'"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :goto_1
    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 92
    :cond_1
    :goto_2
    return-wide v0

    .line 67
    :cond_2
    const-string v2, "TZID="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 70
    if-lez v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/apprupt/sdk/CvICSLoader$Event;->f:Landroid/content/ContentValues;

    const-string v4, "eventTimezone"

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 85
    :catch_1
    move-exception v2

    goto :goto_2
.end method
