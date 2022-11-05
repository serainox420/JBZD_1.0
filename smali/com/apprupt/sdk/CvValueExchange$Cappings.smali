.class Lcom/apprupt/sdk/CvValueExchange$Cappings;
.super Ljava/lang/Object;
.source "CvValueExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvValueExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cappings"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvValueExchange;

.field private b:Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/CvValueExchange;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a:Lcom/apprupt/sdk/CvValueExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    .line 60
    const-string v0, "-----"

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d:Ljava/lang/String;

    .line 62
    if-eqz p3, :cond_0

    .line 63
    const-string v0, "views"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;Ljava/lang/Number;)I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    .line 64
    const-string v0, "ts"

    const-string v1, "-----"

    invoke-virtual {p3, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-direct {p0, p2}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Lcom/apprupt/sdk/CvValueExchange$RewardConfig;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvValueExchange;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;Lcom/apprupt/sdk/SimpleJSON;Lcom/apprupt/sdk/CvValueExchange$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/CvValueExchange$Cappings;-><init>(Lcom/apprupt/sdk/CvValueExchange;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;Lcom/apprupt/sdk/SimpleJSON;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvValueExchange$Cappings;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b()I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Z)V

    .line 86
    iget v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    .line 87
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a:Lcom/apprupt/sdk/CvValueExchange;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvValueExchange;->b()V

    .line 88
    return-void
.end method

.method private a(Lcom/apprupt/sdk/CvValueExchange$RewardConfig;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b:Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Z)V

    .line 72
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 76
    const-string v1, "yy/MM/dd"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a:Lcom/apprupt/sdk/CvValueExchange;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvValueExchange;->b()V

    .line 82
    :cond_0
    return-void
.end method

.method private b()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Z)V

    .line 92
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b:Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->c:I

    iget v2, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b:Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 101
    const-string v1, "ts"

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 102
    const-string v1, "views"

    iget v2, p0, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 103
    iget-object v0, v0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/CvValueExchange$Cappings;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a()V

    return-void
.end method

.method static synthetic e(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c()Z

    move-result v0

    return v0
.end method
