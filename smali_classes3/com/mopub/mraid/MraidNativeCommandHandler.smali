.class public Lcom/mopub/mraid/MraidNativeCommandHandler;
.super Ljava/lang/Object;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidNativeCommandHandler$b;,
        Lcom/mopub/mraid/MraidNativeCommandHandler$a;,
        Lcom/mopub/mraid/MraidNativeCommandHandler$c;
    }
.end annotation


# static fields
.field public static final ANDROID_CALENDAR_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/event"

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mraid/MraidNativeCommandHandler;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :pswitch_0
    const-string v0, "SU"

    .line 390
    :goto_0
    return-object v0

    .line 370
    :pswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 373
    :pswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 376
    :pswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 379
    :pswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 382
    :pswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 385
    :pswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 365
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

.method private a(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    sget-object v2, Lcom/mopub/mraid/MraidNativeCommandHandler;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 269
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    if-eqz v0, :cond_1

    .line 277
    :cond_0
    return-object v0

    .line 273
    :catch_0
    move-exception v4

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing start and description fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    const-string v0, "title"

    const-string v2, "description"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 224
    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_6

    .line 226
    const-string v2, "beginTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_8

    .line 237
    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "eventLocation"

    const-string v2, "location"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    const-string v0, "summary"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    const-string v0, "description"

    const-string v2, "summary"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    const-string v2, "availability"

    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "transparent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_5
    const-string v0, "rrule"

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-object v1

    .line 228
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 396
    if-eqz p1, :cond_0

    const/16 v0, -0x1f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid day of month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v1, 0x0

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    new-array v4, v9, [Z

    .line 327
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 329
    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    if-ne v0, v9, :cond_0

    move v0, v1

    .line 332
    :cond_0
    aget-boolean v7, v4, v0

    if-nez v7, :cond_1

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const/4 v7, 0x1

    aput-boolean v7, v4, v0

    .line 329
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 337
    :cond_2
    array-length v0, v5

    if-nez v0, :cond_3

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    :goto_0
    const-string v4, "daily"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const-string v0, "FREQ=DAILY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-eq v1, v2, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    const-string v4, "weekly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 294
    const-string v0, "FREQ=WEEKLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    if-eq v1, v2, :cond_2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    if-nez v0, :cond_3

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    :cond_4
    const-string v4, "monthly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    const-string v0, "FREQ=MONTHLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    if-eq v1, v2, :cond_5

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_5
    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v0, :cond_6

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 315
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 318
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    const/16 v0, 0x3f

    new-array v2, v0, [Z

    .line 347
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 349
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 351
    add-int/lit8 v6, v5, 0x1f

    aget-boolean v6, v2, v6

    if-nez v6, :cond_0

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    array-length v0, v3

    if-nez v0, :cond_2

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V
    .locals 3

    .prologue
    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    const-string v1, "Save Image"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download image to Picture gallery?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    new-instance v2, Lcom/mopub/mraid/MraidNativeCommandHandler$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler$2;-><init>(Lcom/mopub/mraid/MraidNativeCommandHandler;Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 439
    return-void
.end method

.method static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStorePictureSupported(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 143
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Error downloading file  - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "Downloading image to Picture gallery..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 78
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 81
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v0, "no calendar app installed"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Action is unsupported on this device - no calendar app installed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    :try_start_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 83
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create calendar: invalid parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/mopub/mraid/a;

    invoke-direct {v1, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_1
    :try_start_2
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    const-string v1, "could not create calendar event"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/mopub/mraid/a;

    invoke-direct {v1, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_2
    const/high16 v0, 0x10000000

    :try_start_3
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    return-void

    .line 102
    :cond_3
    const-string v0, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/util/VersionCode;->HONEYCOMB_MR1:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v3}, Lcom/mopub/common/util/VersionCode;->isBelow(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p2, v0

    .line 185
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-static {v0, v2}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    invoke-static {v0, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 207
    goto :goto_0

    :cond_4
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    invoke-static {p1, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;

    new-instance v1, Lcom/mopub/mraid/MraidNativeCommandHandler$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler$1;-><init>(Lcom/mopub/mraid/MraidNativeCommandHandler;Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$c;)V

    invoke-direct {v0, p1, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;-><init>(Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;)V

    .line 421
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v1, "sms:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    invoke-static {p1, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
