.class Lcom/amazon/device/ads/CalendarEventParameters;
.super Ljava/lang/Object;
.source "CalendarEventParameters.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mmZZZZZ"

.field public static final DATE_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private end:Ljava/util/Date;

.field private location:Ljava/lang/String;

.field private start:Ljava/util/Date;

.field private summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/amazon/device/ads/CalendarEventParameters$1;

    invoke-direct {v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/CalendarEventParameters;->DATE_FORMATS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No description for event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/CalendarEventParameters;->description:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazon/device/ads/CalendarEventParameters;->location:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/amazon/device/ads/CalendarEventParameters;->summary:Ljava/lang/String;

    .line 78
    invoke-static {p4}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No start date for event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-direct {p0, p4}, Lcom/amazon/device/ads/CalendarEventParameters;->convertToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->start:Ljava/util/Date;

    .line 87
    invoke-static {p5}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-direct {p0, p5}, Lcom/amazon/device/ads/CalendarEventParameters;->convertToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    goto :goto_0
.end method

.method private convertToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    sget-object v0, Lcom/amazon/device/ads/CalendarEventParameters;->DATE_FORMATS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 147
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_1
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse datetime string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->start:Ljava/util/Date;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->summary:Ljava/lang/String;

    return-object v0
.end method
